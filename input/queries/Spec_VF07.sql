SELECT
  s.specObjID,
  s.bestObjID,
  s.tColumn_3,
  s.tColumn_4,
  s.tColumn_5,
  s.tColumn_6,
  s.tColumn_7,
  s.tColumn_8,
  s.tColumn_9,
  s.nPoly,
  s.theta_0,
  s.theta_1
INTO MyDB..DATA7901_DR19_Spec_VF07
FROM specObj s
JOIN MyDB..DATA7901_DR19_objID_List b ON b.objID = s.bestObjID;
