SELECT
  s.specObjID,
  s.bestObjID,
  s.run1d,
  s.run2d,
  s.tile,
  s.designID,
  s.spectrographID,
  s.sourceType,
  s.targetType,
  s.ra,
  s.dec,
  s.cx
INTO MyDB..DATA7901_DR19_Spec_VF03
FROM specObj s
JOIN MyDB..DATA7901_DR19_objID_List b ON b.objID = s.bestObjID;
