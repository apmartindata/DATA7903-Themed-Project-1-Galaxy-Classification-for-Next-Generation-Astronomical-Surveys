SELECT
  p.objID,
  p.cloudCam_r,
  p.cloudCam_i,
  p.cloudCam_z,
  p.nProf_u,
  p.nProf_g,
  p.nProf_r,
  p.nProf_i,
  p.nProf_z,
  p.phioffset_u,
  p.phioffset_g
INTO MyDB..DATA7901_DR19_Photo_VF38
FROM PhotoObj p
JOIN MyDB..DATA7901_DR19_objID_List b ON b.objID = p.objID;
