SELECT
  p.objID,
  p.deVABErr_r,
  p.deVABErr_i,
  p.deVABErr_z,
  p.deVPhi_u,
  p.deVPhi_g,
  p.deVPhi_r,
  p.deVPhi_i,
  p.deVPhi_z,
  p.deVMag_u,
  p.deVMag_g
INTO MyDB..DATA7901_DR19_Photo_VF25
FROM PhotoObj p
JOIN MyDB..DATA7901_DR19_objID_List b ON b.objID = p.objID;
