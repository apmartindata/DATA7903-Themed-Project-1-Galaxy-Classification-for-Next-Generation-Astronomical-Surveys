SELECT
  s.specObjID,
  s.bestObjID,
  s.spectroSynFluxIvar_u,
  s.spectroSynFluxIvar_g,
  s.spectroSynFluxIvar_r,
  s.spectroSynFluxIvar_i,
  s.spectroSynFluxIvar_z,
  s.spectroSkyFlux_u,
  s.spectroSkyFlux_g,
  s.spectroSkyFlux_r,
  s.spectroSkyFlux_i,
  s.spectroSkyFlux_z
INTO MyDB..DATA7901_DR19_Spec_VF15
FROM specObj s
JOIN MyDB..DATA7901_DR19_objID_List b ON b.objID = s.bestObjID;
