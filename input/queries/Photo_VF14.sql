SELECT
  p.objID,
  p.modelMagErr_r,
  p.modelMagErr_i,
  p.modelMagErr_z,
  p.psfFlux_u,
  p.psfFlux_g,
  p.psfFlux_r,
  p.psfFlux_i,
  p.psfFlux_z,
  p.psfFluxIvar_u,
  p.psfFluxIvar_g
INTO MyDB..DATA7901_DR19_Photo_VF14
FROM PhotoObj p
JOIN MyDB..DATA7901_DR19_objID_List b ON b.objID = p.objID;
