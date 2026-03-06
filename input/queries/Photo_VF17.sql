SELECT
  p.objID,
  p.fiber2FluxIvar_r,
  p.fiber2FluxIvar_i,
  p.fiber2FluxIvar_z,
  p.petroFlux_u,
  p.petroFlux_g,
  p.petroFlux_r,
  p.petroFlux_i,
  p.petroFlux_z,
  p.petroFluxIvar_u,
  p.petroFluxIvar_g
INTO MyDB..DATA7901_DR19_Photo_VF17
FROM PhotoObj p
JOIN MyDB..DATA7901_DR19_objID_List b ON b.objID = p.objID;
