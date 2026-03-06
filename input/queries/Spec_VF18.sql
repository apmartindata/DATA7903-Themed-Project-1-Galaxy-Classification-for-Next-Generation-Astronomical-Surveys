SELECT
  s.specObjID,
  s.bestObjID,
  s.elodieZModelErr,
  s.elodieRChi2,
  s.elodieDOF,
  s.htmID,
  s.loadVersion
INTO MyDB..DATA7901_DR19_Spec_VF18
FROM specObj s
JOIN MyDB..DATA7901_DR19_objID_List b ON b.objID = s.bestObjID;
