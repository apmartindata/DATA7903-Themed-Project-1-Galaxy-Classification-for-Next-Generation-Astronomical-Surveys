SELECT
  p.objID,
  p.psfFluxIvar_r,
  p.psfFluxIvar_i,
  p.psfFluxIvar_z,
  p.fiberFlux_u,
  p.fiberFlux_g,
  p.fiberFlux_r,
  p.fiberFlux_i,
  p.fiberFlux_z,
  p.fiberFluxIvar_u,
  p.fiberFluxIvar_g
INTO MyDB..DATA7901_DR19_Photo_VF15
FROM PhotoObj p
JOIN MyDB..DATA7901_DR19_objID_List b ON b.objID = p.objID;
