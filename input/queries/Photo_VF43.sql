SELECT
  p.objID,
  p.mCr4_r,
  p.mCr4_i,
  p.mCr4_z,
  p.mE1PSF_u,
  p.mE1PSF_g,
  p.mE1PSF_r,
  p.mE1PSF_i,
  p.mE1PSF_z,
  p.mE2PSF_u,
  p.mE2PSF_g
INTO MyDB..DATA7901_DR19_Photo_VF43
FROM PhotoObj p
JOIN MyDB..DATA7901_DR19_objID_List b ON b.objID = p.objID;
