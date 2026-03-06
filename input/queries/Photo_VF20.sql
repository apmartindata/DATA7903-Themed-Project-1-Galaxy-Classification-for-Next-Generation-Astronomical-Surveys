SELECT
  p.objID,
  p.petroRadErr_r,
  p.petroRadErr_i,
  p.petroRadErr_z,
  p.petroR50_u,
  p.petroR50_g,
  p.petroR50_r,
  p.petroR50_i,
  p.petroR50_z,
  p.petroR50Err_u,
  p.petroR50Err_g
INTO MyDB..DATA7901_DR19_Photo_VF20
FROM PhotoObj p
JOIN MyDB..DATA7901_DR19_objID_List b ON b.objID = p.objID;
