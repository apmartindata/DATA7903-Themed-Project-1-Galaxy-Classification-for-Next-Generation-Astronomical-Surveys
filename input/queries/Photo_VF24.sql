SELECT
  p.objID,
  p.expRadErr_r,
  p.expRadErr_i,
  p.expRadErr_z,
  p.deVAB_u,
  p.deVAB_g,
  p.deVAB_r,
  p.deVAB_i,
  p.deVAB_z,
  p.deVABErr_u,
  p.deVABErr_g
INTO MyDB..DATA7901_DR19_Photo_VF24
FROM PhotoObj p
JOIN MyDB..DATA7901_DR19_objID_List b ON b.objID = p.objID;
