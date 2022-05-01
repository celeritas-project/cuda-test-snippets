#include "base/ArrayUtils.hh"

using namespace celeritas;

/*!
 * Rotate the direction about the given Z-based scatter direction.
 *
 * The equivalent to Shift's \code
 * void cartesian_vector_transform(
    double      costheta,
    double      phi,
    Vector_View vector)
 * \endcode
 * is the call
 * \code
   vector = rotate(from_spherical(costheta, phi), vector);
 * \endcode
 *
 * This code effectively decomposes the given rotation vector \c rot into two
 * sequential transform matrices, one with an angle \em theta about the \em y
 * axis and one about \em phi rotating around the \em z axis. These two angles
 * are the spherical coordinate transform of the given \c rot cartesian
 * direction vector.
 *
 * There is some extra code in here to deal with loss of precision when the
 * incident direction is along the \em z axis. As \c rot approaches \em z, the
 * azimuthal angle \em phi must be calculated carefully from both the x and y
 * components of the vector, not independently. If \c rot actually equals \em z
 * then the azimuthal angle is completely indeterminate so we arbitrarily
 * choose \c phi = 0.
 *
 * This function is often used for calculating exiting scattering angles. In
 * that case, \c dir is the exiting angle from the scattering calculation, and
 * \c rot is the original direction of the particle. The direction vectors are
 * defined
 * \f[
   \Omega =   \sin\theta\cos\phi\mathbf{i}
            + \sin\theta\sin\phi\mathbf{j}
            + \cos\theta\mathbf{k}
 * \f]
 */
inline CELER_FUNCTION Real3 rotate_mod(const Real3& dir, const Real3& rot)
{
    CELER_EXPECT(is_soft_unit_vector(dir));
    CELER_EXPECT(is_soft_unit_vector(rot));

    // Direction enumeration
    enum
    {
        X = 0,
        Y = 1,
        Z = 2
    };

    // Transform direction vector into theta, phi so we can use it as a
    // rotation matrix
    real_type sintheta = std::sqrt(1 - ipow<2>(rot[Z]));
    real_type cosphi;
    real_type sinphi;

    if (sintheta >= detail::RealVecTraits<real_type>::min_accurate_sintheta())
    {
        // Typical case: far enough from z axis to assume the X and Y
        // components have a hypotenuse of 1 within epsilon tolerance
        const real_type inv_sintheta = 1 / (sintheta);
        cosphi                       = rot[X] * inv_sintheta;
        sinphi                       = rot[Y] * inv_sintheta;
    }
    else if (sintheta > 0)
    {
        // Avoid catastrophic roundoff error by normalizing x/y components
        cosphi = rot[X] / std::sqrt(ipow<2>(rot[X]) + ipow<2>(rot[Y]));
        sinphi = std::sqrt(1 - ipow<2>(cosphi));
    }
    else
    {
        // NaN or 0: choose an arbitrary azimuthal angle for the incident dir
        cosphi = 1;
        sinphi = 0;
    }

    Real3 result
        = {(rot[Z] * dir[X] + sintheta * dir[Z]) * cosphi - sinphi * dir[Y],
           (rot[Z] * dir[X] + sintheta * dir[Z]) * sinphi + cosphi * dir[Y],
           -sintheta * dir[X] + rot[Z] * dir[Z]};

    return result;
}

__global__ void rotate_kernel(
    Real3 const * const __restrict__ dir,
    Real3 const * const __restrict__ rot,
    Real3 * const __restrict__ dst)
{
    dst[threadIdx.x] = rotate_mod(dir[threadIdx.x], rot[threadIdx.x]);
}
