SELECT
  p.objID,
  p.deVRadErr_r,
  p.deVRadErr_i,
  p.deVRadErr_z,
  p.expRad_u,
  p.expRad_g,
  p.expRad_r,
  p.expRad_i,
  p.expRad_z,
  p.expRadErr_u,
  p.expRadErr_g
INTO MyDB..DATA7901_DR19_Photo_VF23
FROM PhotoObj p
JOIN MyDB..DATA7901_DR19_objID_List b ON b.objID = p.objID;
