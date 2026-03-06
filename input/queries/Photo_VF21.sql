SELECT
  p.objID,
  p.petroR50Err_r,
  p.petroR50Err_i,
  p.petroR50Err_z,
  p.petroR90_u,
  p.petroR90_g,
  p.petroR90_r,
  p.petroR90_i,
  p.petroR90_z,
  p.petroR90Err_u,
  p.petroR90Err_g
INTO MyDB..DATA7901_DR19_Photo_VF21
FROM PhotoObj p
JOIN MyDB..DATA7901_DR19_objID_List b ON b.objID = p.objID;
