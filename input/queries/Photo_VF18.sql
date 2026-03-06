SELECT
  p.objID,
  p.petroFluxIvar_r,
  p.petroFluxIvar_i,
  p.petroFluxIvar_z,
  p.cModelFlux_u,
  p.cModelFlux_g,
  p.cModelFlux_r,
  p.cModelFlux_i,
  p.cModelFlux_z,
  p.cModelFluxIvar_u,
  p.cModelFluxIvar_g
INTO MyDB..DATA7901_DR19_Photo_VF18
FROM PhotoObj p
JOIN MyDB..DATA7901_DR19_objID_List b ON b.objID = p.objID;
