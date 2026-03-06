SELECT
  p.objID,
  p.expPhi_r,
  p.expPhi_i,
  p.expPhi_z,
  p.expMag_u,
  p.expMag_g,
  p.expMag_r,
  p.expMag_i,
  p.expMag_z,
  p.expMagErr_u,
  p.expMagErr_g
INTO MyDB..DATA7901_DR19_Photo_VF29
FROM PhotoObj p
JOIN MyDB..DATA7901_DR19_objID_List b ON b.objID = p.objID;
