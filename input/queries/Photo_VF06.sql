SELECT
  p.objID,
  p.rowvErr,
  p.colv,
  p.colvErr,
  p.rowc_u,
  p.rowc_g,
  p.rowc_r,
  p.rowc_i,
  p.rowc_z,
  p.rowcErr_u,
  p.rowcErr_g
INTO MyDB..DATA7901_DR19_Photo_VF06
FROM PhotoObj p
JOIN MyDB..DATA7901_DR19_objID_List b ON b.objID = p.objID;
