SELECT
  p.objID,
  p.modelFluxIvar_r,
  p.modelFluxIvar_i,
  p.modelFluxIvar_z,
  p.cModelMag_u,
  p.cModelMag_g,
  p.cModelMag_r,
  p.cModelMag_i,
  p.cModelMag_z,
  p.cModelMagErr_u,
  p.cModelMagErr_g
INTO MyDB..DATA7901_DR19_Photo_VF31
FROM PhotoObj p
JOIN MyDB..DATA7901_DR19_objID_List b ON b.objID = p.objID;
