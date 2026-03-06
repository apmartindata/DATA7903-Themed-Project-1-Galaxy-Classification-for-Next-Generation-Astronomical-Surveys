SELECT
  p.objID,
  p.TAI_r,
  p.TAI_i,
  p.TAI_z,
  p.offsetRa_u,
  p.offsetRa_g,
  p.offsetRa_r,
  p.offsetRa_i,
  p.offsetRa_z,
  p.offsetDec_u,
  p.offsetDec_g
INTO MyDB..DATA7901_DR19_Photo_VF36
FROM PhotoObj p
JOIN MyDB..DATA7901_DR19_objID_List b ON b.objID = p.objID;
