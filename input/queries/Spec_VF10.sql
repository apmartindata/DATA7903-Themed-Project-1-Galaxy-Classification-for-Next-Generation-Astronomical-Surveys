SELECT
  s.specObjID,
  s.bestObjID,
  s.snMedian_r,
  s.snMedian_i,
  s.snMedian_z,
  s.snMedian,
  s.chi68p,
  s.fracNSigma_1,
  s.fracNSigma_2,
  s.fracNSigma_3,
  s.fracNSigma_4,
  s.fracNSigma_5
INTO MyDB..DATA7901_DR19_Spec_VF10
FROM specObj s
JOIN MyDB..DATA7901_DR19_objID_List b ON b.objID = s.bestObjID;
