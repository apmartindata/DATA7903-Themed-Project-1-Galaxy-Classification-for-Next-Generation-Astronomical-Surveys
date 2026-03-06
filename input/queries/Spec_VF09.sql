SELECT
  s.specObjID,
  s.bestObjID,
  s.wCoverage,
  s.velDisp,
  s.velDispErr,
  s.velDispZ,
  s.velDispZErr,
  s.velDispChi2,
  s.velDispNPix,
  s.velDispDOF,
  s.snMedian_u,
  s.snMedian_g
INTO MyDB..DATA7901_DR19_Spec_VF09
FROM specObj s
JOIN MyDB..DATA7901_DR19_objID_List b ON b.objID = s.bestObjID;
