SELECT
  p.objID,
  p.mE1E2Err_r,
  p.mE1E2Err_i,
  p.mE1E2Err_z,
  p.mE2E2Err_u,
  p.mE2E2Err_g,
  p.mE2E2Err_r,
  p.mE2E2Err_i,
  p.mE2E2Err_z,
  p.mRrCc_u,
  p.mRrCc_g
INTO MyDB..DATA7901_DR19_Photo_VF41
FROM PhotoObj p
JOIN MyDB..DATA7901_DR19_objID_List b ON b.objID = p.objID;
