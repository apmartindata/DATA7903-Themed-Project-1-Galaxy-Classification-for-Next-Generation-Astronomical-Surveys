SELECT
  s.specObjID,
  s.bestObjID,
  s.special_target2,
  s.segue1_target1,
  s.segue1_target2,
  s.segue2_target1,
  s.segue2_target2,
  s.boss_target1,
  s.eboss_target0,
  s.eboss_target1,
  s.eboss_target2,
  s.eboss_target_id
INTO MyDB..DATA7901_DR19_Spec_VF05
FROM specObj s
JOIN MyDB..DATA7901_DR19_objID_List b ON b.objID = s.bestObjID;
