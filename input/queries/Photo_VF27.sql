SELECT
  p.objID,
  p.deVFlux_r,
  p.deVFlux_i,
  p.deVFlux_z,
  p.deVFluxIvar_u,
  p.deVFluxIvar_g,
  p.deVFluxIvar_r,
  p.deVFluxIvar_i,
  p.deVFluxIvar_z,
  p.expAB_u,
  p.expAB_g
INTO MyDB..DATA7901_DR19_Photo_VF27
FROM PhotoObj p
JOIN MyDB..DATA7901_DR19_objID_List b ON b.objID = p.objID;
