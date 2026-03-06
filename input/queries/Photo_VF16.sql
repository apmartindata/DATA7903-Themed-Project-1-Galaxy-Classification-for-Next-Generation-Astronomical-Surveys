SELECT
  p.objID,
  p.fiberFluxIvar_r,
  p.fiberFluxIvar_i,
  p.fiberFluxIvar_z,
  p.fiber2Flux_u,
  p.fiber2Flux_g,
  p.fiber2Flux_r,
  p.fiber2Flux_i,
  p.fiber2Flux_z,
  p.fiber2FluxIvar_u,
  p.fiber2FluxIvar_g
INTO MyDB..DATA7901_DR19_Photo_VF16
FROM PhotoObj p
JOIN MyDB..DATA7901_DR19_objID_List b ON b.objID = p.objID;
