SELECT
  s.specObjID,
  s.bestObjID,
  s.sn2_i,
  s.elodieFileName,
  s.elodieObject,
  s.elodieSpType,
  s.elodieBV,
  s.elodieTEff,
  s.elodieLogG,
  s.elodieFeH,
  s.elodieZ,
  s.elodieZErr
INTO MyDB..DATA7901_DR19_Spec_VF17
FROM specObj s
JOIN MyDB..DATA7901_DR19_objID_List b ON b.objID = s.bestObjID;
