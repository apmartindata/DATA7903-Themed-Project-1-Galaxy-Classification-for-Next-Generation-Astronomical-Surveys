SELECT
  p.objID,
  p.mRrCc_r,
  p.mRrCc_i,
  p.mRrCc_z,
  p.mRrCcErr_u,
  p.mRrCcErr_g,
  p.mRrCcErr_r,
  p.mRrCcErr_i,
  p.mRrCcErr_z,
  p.mCr4_u,
  p.mCr4_g
INTO MyDB..DATA7901_DR19_Photo_VF42
FROM PhotoObj p
JOIN MyDB..DATA7901_DR19_objID_List b ON b.objID = p.objID;
