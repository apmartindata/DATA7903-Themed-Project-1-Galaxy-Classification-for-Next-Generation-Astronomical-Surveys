SELECT
  p.objID,
  p.mCr4PSF_r,
  p.mCr4PSF_i,
  p.mCr4PSF_z,
  p.u,
  p.g,
  p.r,
  p.i,
  p.z,
  p.err_u,
  p.err_g
INTO MyDB..DATA7901_DR19_Photo_VF45
FROM PhotoObj p
JOIN MyDB..DATA7901_DR19_objID_List b ON b.objID = p.objID;
