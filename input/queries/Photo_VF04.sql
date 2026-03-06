SELECT
  p.objID,
  p.nDetect,
  p.nEdge,
  p.score,
  p.loadVersion,
  p.mjd,
  p.psffwhm_u,
  p.psffwhm_g,
  p.psffwhm_r,
  p.psffwhm_i,
  p.psffwhm_z
INTO MyDB..DATA7901_DR19_Photo_VF04
FROM PhotoObj p
JOIN MyDB..DATA7901_DR19_objID_List b ON b.objID = p.objID;
