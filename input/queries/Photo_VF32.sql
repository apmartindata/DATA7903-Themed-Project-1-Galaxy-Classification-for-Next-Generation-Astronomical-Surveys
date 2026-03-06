SELECT
  p.objID,
  p.cModelMagErr_r,
  p.cModelMagErr_i,
  p.cModelMagErr_z,
  p.aperFlux7_u,
  p.aperFlux7_g,
  p.aperFlux7_r,
  p.aperFlux7_i,
  p.aperFlux7_z,
  p.aperFlux7Ivar_u,
  p.aperFlux7Ivar_g
INTO MyDB..DATA7901_DR19_Photo_VF32
FROM PhotoObj p
JOIN MyDB..DATA7901_DR19_objID_List b ON b.objID = p.objID;
