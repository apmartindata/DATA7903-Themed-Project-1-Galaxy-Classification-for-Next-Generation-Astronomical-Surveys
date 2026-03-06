SELECT
  s.specObjID,
  s.bestObjID,
  s.ancillary_target1,
  s.ancillary_target2,
  s.thing_id_targeting,
  s.primTarget,
  s.secTarget,
  s.thing_id,
  s.tFile,
  s.tColumn_0,
  s.tColumn_1,
  s.tColumn_2
INTO MyDB..DATA7901_DR19_Spec_VF06
FROM specObj s
JOIN MyDB..DATA7901_DR19_objID_List b ON b.objID = s.bestObjID;
