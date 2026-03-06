SELECT
  s.specObjID,
  s.bestObjID,
  s.fluxObjID,
  s.targetObjID,
  s.plateID,
  s.plate,
  s.mjd,
  s.fiberID,
  s.sciencePrimary,
  s.sdssPrimary,
  s.legacyPrimary,
  s.seguePrimary
INTO MyDB..DATA7901_DR19_Spec_VF01
FROM specObj s
JOIN MyDB..DATA7901_DR19_objID_List b ON b.objID = s.bestObjID;
