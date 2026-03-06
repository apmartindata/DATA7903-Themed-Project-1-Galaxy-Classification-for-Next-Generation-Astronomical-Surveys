SELECT
  p.objID,
  p.u_r,
  p.u_i,
  p.u_z,
  p.uErr_u,
  p.uErr_g,
  p.uErr_r,
  p.uErr_i,
  p.uErr_z
INTO MyDB..DATA7901_DR19_Photo_VF48
FROM PhotoObj p
JOIN MyDB..DATA7901_DR19_objID_List b ON b.objID = p.objID;
