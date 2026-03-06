SELECT
  p.objID,
  p.phioffset_r,
  p.phioffset_i,
  p.phioffset_z,
  p.mE1_u,
  p.mE1_g,
  p.mE1_r,
  p.mE1_i,
  p.mE1_z,
  p.mE2_u,
  p.mE2_g
INTO MyDB..DATA7901_DR19_Photo_VF39
FROM PhotoObj p
JOIN MyDB..DATA7901_DR19_objID_List b ON b.objID = p.objID;
