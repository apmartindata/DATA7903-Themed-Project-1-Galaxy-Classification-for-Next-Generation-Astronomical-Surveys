SELECT
  s.specObjID,
  s.bestObjID,
  s.anyAndMask,
  s.anyOrMask,
  s.plateSN2,
  s.deredSN2,
  s.snTurnoff,
  s.sn1_g,
  s.sn1_r,
  s.sn1_i,
  s.sn2_g,
  s.sn2_r
INTO MyDB..DATA7901_DR19_Spec_VF16
FROM specObj s
JOIN MyDB..DATA7901_DR19_objID_List b ON b.objID = s.bestObjID;
