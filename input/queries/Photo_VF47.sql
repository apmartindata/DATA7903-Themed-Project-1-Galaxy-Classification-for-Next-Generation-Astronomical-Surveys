SELECT
  p.objID,
  p.q_r,
  p.q_i,
  p.q_z,
  p.qErr_u,
  p.qErr_g,
  p.qErr_r,
  p.qErr_i,
  p.qErr_z,
  p.u_u,
  p.u_g
INTO MyDB..DATA7901_DR19_Photo_VF47
FROM PhotoObj p
JOIN MyDB..DATA7901_DR19_objID_List b ON b.objID = p.objID;
