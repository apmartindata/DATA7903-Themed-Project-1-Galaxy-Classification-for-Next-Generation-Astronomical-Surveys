SELECT
  s.specObjID,
  s.bestObjID,
  s.fracNSigHi_6,
  s.fracNSigHi_7,
  s.fracNSigHi_8,
  s.fracNSigHi_9,
  s.fracNSigHi_10,
  s.fracNSigLo_1,
  s.fracNSigLo_2,
  s.fracNSigLo_3,
  s.fracNSigLo_4,
  s.fracNSigLo_5
INTO MyDB..DATA7901_DR19_Spec_VF12
FROM specObj s
JOIN MyDB..DATA7901_DR19_objID_List b ON b.objID = s.bestObjID;
