SELECT
  p.objID,
  p.fiber2MagErr_r,
  p.fiber2MagErr_i,
  p.fiber2MagErr_z,
  p.petroMag_u,
  p.petroMag_g,
  p.petroMag_r,
  p.petroMag_i,
  p.petroMag_z,
  p.petroMagErr_u,
  p.petroMagErr_g
INTO MyDB..DATA7901_DR19_Photo_VF12
FROM PhotoObj p
JOIN MyDB..DATA7901_DR19_objID_List b ON b.objID = p.objID;
