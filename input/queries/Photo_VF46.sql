SELECT
  p.objID,
  p.err_r,
  p.err_i,
  p.err_z,
  p.dered_u,
  p.dered_g,
  p.dered_r,
  p.dered_i,
  p.dered_z,
  p.q_u,
  p.q_g
INTO MyDB..DATA7901_DR19_Photo_VF46
FROM PhotoObj p
JOIN MyDB..DATA7901_DR19_objID_List b ON b.objID = p.objID;
