SELECT
  s.specObjID,
  s.bestObjID,
  s.cy,
  s.cz,
  s.xFocal,
  s.yFocal,
  s.lambdaEff,
  s.blueFiber,
  s.zOffset,
  s.legacy_target1,
  s.legacy_target2,
  s.special_target1
INTO MyDB..DATA7901_DR19_Spec_VF04
FROM specObj s
JOIN MyDB..DATA7901_DR19_objID_List b ON b.objID = s.bestObjID;
