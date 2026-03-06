SELECT
  s.specObjID,
  s.bestObjID,
  s.theta_2,
  s.theta_3,
  s.theta_4,
  s.theta_5,
  s.theta_6,
  s.theta_7,
  s.theta_8,
  s.theta_9,
  s.waveMin,
  s.waveMax
INTO MyDB..DATA7901_DR19_Spec_VF08
FROM specObj s
JOIN MyDB..DATA7901_DR19_objID_List b ON b.objID = s.bestObjID;
