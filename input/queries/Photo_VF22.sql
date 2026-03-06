SELECT
  p.objID,
  p.petroR90Err_r,
  p.petroR90Err_i,
  p.petroR90Err_z,
  p.deVRad_u,
  p.deVRad_g,
  p.deVRad_r,
  p.deVRad_i,
  p.deVRad_z,
  p.deVRadErr_u,
  p.deVRadErr_g
INTO MyDB..DATA7901_DR19_Photo_VF22
FROM PhotoObj p
JOIN MyDB..DATA7901_DR19_objID_List b ON b.objID = p.objID;
