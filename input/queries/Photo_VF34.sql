SELECT
  p.objID,
  p.probPSF_r,
  p.probPSF_i,
  p.probPSF_z,
  p.flags_u,
  p.flags_g,
  p.flags_r,
  p.flags_i,
  p.flags_z,
  p.calibStatus_u,
  p.calibStatus_g
INTO MyDB..DATA7901_DR19_Photo_VF34
FROM PhotoObj p
JOIN MyDB..DATA7901_DR19_objID_List b ON b.objID = p.objID;
