SELECT
  p.objID,
  p.expMagErr_r,
  p.expMagErr_i,
  p.expMagErr_z,
  p.modelFlux_u,
  p.modelFlux_g,
  p.modelFlux_r,
  p.modelFlux_i,
  p.modelFlux_z,
  p.modelFluxIvar_u,
  p.modelFluxIvar_g
INTO MyDB..DATA7901_DR19_Photo_VF30
FROM PhotoObj p
JOIN MyDB..DATA7901_DR19_objID_List b ON b.objID = p.objID;
