SELECT
  s.specObjID,
  s.bestObjID,
  s.spectroSynFlux_u,
  s.spectroSynFlux_g,
  s.spectroSynFlux_r,
  s.spectroSynFlux_i,
  s.spectroSynFlux_z,
  s.spectroFluxIvar_u,
  s.spectroFluxIvar_g,
  s.spectroFluxIvar_r,
  s.spectroFluxIvar_i,
  s.spectroFluxIvar_z
INTO MyDB..DATA7901_DR19_Spec_VF14
FROM specObj s
JOIN MyDB..DATA7901_DR19_objID_List b ON b.objID = s.bestObjID;
