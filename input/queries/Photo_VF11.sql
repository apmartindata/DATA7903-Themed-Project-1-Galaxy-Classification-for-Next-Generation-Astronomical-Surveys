SELECT
  p.objID,
  p.fiberMagErr_r,
  p.fiberMagErr_i,
  p.fiberMagErr_z,
  p.fiber2Mag_u,
  p.fiber2Mag_g,
  p.fiber2Mag_r,
  p.fiber2Mag_i,
  p.fiber2Mag_z,
  p.fiber2MagErr_u,
  p.fiber2MagErr_g
INTO MyDB..DATA7901_DR19_Photo_VF11
FROM PhotoObj p
JOIN MyDB..DATA7901_DR19_objID_List b ON b.objID = p.objID;
