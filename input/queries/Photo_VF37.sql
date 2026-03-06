SELECT
  p.objID,
  p.offsetDec_r,
  p.offsetDec_i,
  p.offsetDec_z,
  p.extinction_u,
  p.extinction_g,
  p.extinction_r,
  p.extinction_i,
  p.extinction_z,
  p.cloudCam_u,
  p.cloudCam_g
INTO MyDB..DATA7901_DR19_Photo_VF37
FROM PhotoObj p
JOIN MyDB..DATA7901_DR19_objID_List b ON b.objID = p.objID;
