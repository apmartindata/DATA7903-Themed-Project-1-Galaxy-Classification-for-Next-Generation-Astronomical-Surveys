SELECT
  p.objID,
  p.mE2_r,
  p.mE2_i,
  p.mE2_z,
  p.mE1E1Err_u,
  p.mE1E1Err_g,
  p.mE1E1Err_r,
  p.mE1E1Err_i,
  p.mE1E1Err_z,
  p.mE1E2Err_u,
  p.mE1E2Err_g
INTO MyDB..DATA7901_DR19_Photo_VF40
FROM PhotoObj p
JOIN MyDB..DATA7901_DR19_objID_List b ON b.objID = p.objID;
