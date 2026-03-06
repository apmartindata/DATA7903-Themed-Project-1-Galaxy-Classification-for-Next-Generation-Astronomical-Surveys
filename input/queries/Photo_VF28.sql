SELECT
  p.objID,
  p.expAB_r,
  p.expAB_i,
  p.expAB_z,
  p.expABErr_u,
  p.expABErr_g,
  p.expABErr_r,
  p.expABErr_i,
  p.expABErr_z,
  p.expPhi_u,
  p.expPhi_g
INTO MyDB..DATA7901_DR19_Photo_VF28
FROM PhotoObj p
JOIN MyDB..DATA7901_DR19_objID_List b ON b.objID = p.objID;
