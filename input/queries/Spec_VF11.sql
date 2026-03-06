SELECT
  s.specObjID,
  s.bestObjID,
  s.fracNSigma_6,
  s.fracNSigma_7,
  s.fracNSigma_8,
  s.fracNSigma_9,
  s.fracNSigma_10,
  s.fracNSigHi_1,
  s.fracNSigHi_2,
  s.fracNSigHi_3,
  s.fracNSigHi_4,
  s.fracNSigHi_5
INTO MyDB..DATA7901_DR19_Spec_VF11
FROM specObj s
JOIN MyDB..DATA7901_DR19_objID_List b ON b.objID = s.bestObjID;
