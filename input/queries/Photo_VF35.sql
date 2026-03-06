SELECT
  p.objID,
  p.calibStatus_r,
  p.calibStatus_i,
  p.calibStatus_z,
  p.nMgyPerCount_u,
  p.nMgyPerCount_g,
  p.nMgyPerCount_r,
  p.nMgyPerCount_i,
  p.nMgyPerCount_z,
  p.TAI_u,
  p.TAI_g
INTO MyDB..DATA7901_DR19_Photo_VF35
FROM PhotoObj p
JOIN MyDB..DATA7901_DR19_objID_List b ON b.objID = p.objID;
