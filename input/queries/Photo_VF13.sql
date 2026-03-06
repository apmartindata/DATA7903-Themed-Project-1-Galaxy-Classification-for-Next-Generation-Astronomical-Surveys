SELECT
  p.objID,
  p.petroMagErr_r,
  p.petroMagErr_i,
  p.petroMagErr_z,
  p.modelMag_u,
  p.modelMag_g,
  p.modelMag_r,
  p.modelMag_i,
  p.modelMag_z,
  p.modelMagErr_u,
  p.modelMagErr_g
INTO MyDB..DATA7901_DR19_Photo_VF13
FROM PhotoObj p
JOIN MyDB..DATA7901_DR19_objID_List b ON b.objID = p.objID;
