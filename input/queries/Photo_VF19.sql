SELECT
  p.objID,
  p.cModelFluxIvar_r,
  p.cModelFluxIvar_i,
  p.cModelFluxIvar_z,
  p.petroRad_u,
  p.petroRad_g,
  p.petroRad_r,
  p.petroRad_i,
  p.petroRad_z,
  p.petroRadErr_u,
  p.petroRadErr_g
INTO MyDB..DATA7901_DR19_Photo_VF19
FROM PhotoObj p
JOIN MyDB..DATA7901_DR19_objID_List b ON b.objID = p.objID;
