SELECT
  p.objID,
  p.mE2PSF_r,
  p.mE2PSF_i,
  p.mE2PSF_z,
  p.mRrCcPSF_u,
  p.mRrCcPSF_g,
  p.mRrCcPSF_r,
  p.mRrCcPSF_i,
  p.mRrCcPSF_z,
  p.mCr4PSF_u,
  p.mCr4PSF_g
INTO MyDB..DATA7901_DR19_Photo_VF44
FROM PhotoObj p
JOIN MyDB..DATA7901_DR19_objID_List b ON b.objID = p.objID;
