SELECT
  p.objID,
  p.psfMagErr_r,
  p.psfMagErr_i,
  p.psfMagErr_z,
  p.fiberMag_u,
  p.fiberMag_g,
  p.fiberMag_r,
  p.fiberMag_i,
  p.fiberMag_z,
  p.fiberMagErr_u,
  p.fiberMagErr_g
INTO MyDB..DATA7901_DR19_Photo_VF10
FROM PhotoObj p
JOIN MyDB..DATA7901_DR19_objID_List b ON b.objID = p.objID;
