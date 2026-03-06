SELECT
  s.specObjID,
  s.bestObjID,
  s.fracNSigLo_6,
  s.fracNSigLo_7,
  s.fracNSigLo_8,
  s.fracNSigLo_9,
  s.fracNSigLo_10,
  s.spectroFlux_u,
  s.spectroFlux_g,
  s.spectroFlux_r,
  s.spectroFlux_i,
  s.spectroFlux_z
INTO MyDB..DATA7901_DR19_Spec_VF13
FROM specObj s
JOIN MyDB..DATA7901_DR19_objID_List b ON b.objID = s.bestObjID;
