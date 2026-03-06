SELECT
  p.objID,
  p.colcErr_r,
  p.colcErr_i,
  p.colcErr_z,
  p.sky_u,
  p.sky_g,
  p.sky_r,
  p.sky_i,
  p.sky_z,
  p.skyIvar_u,
  p.skyIvar_g
INTO MyDB..DATA7901_DR19_Photo_VF08
FROM PhotoObj p
JOIN MyDB..DATA7901_DR19_objID_List b ON b.objID = p.objID;
