SELECT
  s.specObjID,
  s.bestObjID,
  s.segue1Primary,
  s.segue2Primary,
  s.bossPrimary,
  s.bossSpecObjID,
  s.firstRelease,
  s.survey,
  s.instrument,
  s.programname,
  s.chunk,
  s.platerun
INTO MyDB..DATA7901_DR19_Spec_VF02
FROM specObj s
JOIN MyDB..DATA7901_DR19_objID_List b ON b.objID = s.bestObjID;
