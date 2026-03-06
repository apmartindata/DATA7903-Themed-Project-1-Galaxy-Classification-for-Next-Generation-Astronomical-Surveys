SELECT
  p.objID,
  p.deVMag_r,
  p.deVMag_i,
  p.deVMag_z,
  p.deVMagErr_u,
  p.deVMagErr_g,
  p.deVMagErr_r,
  p.deVMagErr_i,
  p.deVMagErr_z,
  p.deVFlux_u,
  p.deVFlux_g
INTO MyDB..DATA7901_DR19_Photo_VF26
FROM PhotoObj p
JOIN MyDB..DATA7901_DR19_objID_List b ON b.objID = p.objID;
