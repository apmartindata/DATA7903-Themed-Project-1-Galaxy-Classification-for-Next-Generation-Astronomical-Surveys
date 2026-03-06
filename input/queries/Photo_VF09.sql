SELECT
  p.objID,
  p.skyIvar_r,
  p.skyIvar_i,
  p.skyIvar_z,
  p.psfMag_u,
  p.psfMag_g,
  p.psfMag_r,
  p.psfMag_i,
  p.psfMag_z,
  p.psfMagErr_u,
  p.psfMagErr_g
INTO MyDB..DATA7901_DR19_Photo_VF09
FROM PhotoObj p
JOIN MyDB..DATA7901_DR19_objID_List b ON b.objID = p.objID;
