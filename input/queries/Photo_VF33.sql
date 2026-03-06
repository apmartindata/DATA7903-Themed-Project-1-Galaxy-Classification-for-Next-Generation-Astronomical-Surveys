SELECT
  p.objID,
  p.aperFlux7Ivar_r,
  p.aperFlux7Ivar_i,
  p.aperFlux7Ivar_z,
  p.type_u,
  p.type_g,
  p.type_r,
  p.type_i,
  p.type_z,
  p.probPSF_u,
  p.probPSF_g
INTO MyDB..DATA7901_DR19_Photo_VF33
FROM PhotoObj p
JOIN MyDB..DATA7901_DR19_objID_List b ON b.objID = p.objID;
