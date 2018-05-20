-- Before running this script, run this statement: 
-- CREATE TABLE geo_header_staging (data TEXT); 
-- and load the data from the geographic header file into that table. Then run this script, which parses the record that's stored in the data column into the individual values in geo_header_sf1 based on their character positions
  
INSERT INTO geo_header_sf1 (fileid, stusab, sumlev, geocomp, chariter, cifsn, logrecno, region, division, state, county, countycc, countysc, cousub, cousubcc, cousubsc, place, placecc, placesc, tract, blkgrp, block, iuc, concit, concitcc, concitsc, aianhh, aianhhfp, aianhhcc, aihhtli, aitsce, aits, aitscc, ttract, tblkgrp, anrc, anrccc, cbsa, cbsasc, metdiv, csa, necta, nectasc, nectadiv, cnecta, cbsapci, nectapci, ua, uasc, uatype, ur, cd, sldu, sldl, vtd, vtdi, reserve2, zcta5, submcd, submcdcc, sdelem, sdsec, sduni, arealand, areawatr, name, funcstat, gcuni, pop100, hu100, intptlat, intptlon, lsadc, partflag, reserve3, uga, statens, countyns, cousubns, placens, concitns, aianhhns, aitsns, anrcns, submcdns, cd113, cd114, cd115, sldu2, sldu3, sldu4, sldl2, sldl3, sldl4, aianhhsc, csasc, cnectasc, memi, nmemi, puma, reserved)
SELECT
trim(substr(data,1,6)) AS	fileid,
trim(substr(data,7,2)) AS	stusab,
trim(substr(data,9,3)) AS	sumlev,
trim(substr(data,12,2)) AS	geocomp,
trim(substr(data,14,3)) AS	chariter,
trim(substr(data,17,2)) AS	cifsn,
cast(trim(substr(data,19,7)) AS integer) AS	logrecno,
trim(substr(data,26,1)) AS	region,
trim(substr(data,27,1)) AS	division,
trim(substr(data,28,2)) AS	state,
trim(substr(data,30,3)) AS	county,
trim(substr(data,33,2)) AS	countycc,
trim(substr(data,35,2)) AS	countysc,
trim(substr(data,37,5)) AS	cousub,
trim(substr(data,42,2)) AS	cousubcc,
trim(substr(data,44,2)) AS	cousubsc,
trim(substr(data,46,5)) AS	place,
trim(substr(data,51,2)) AS	placecc,
trim(substr(data,53,2)) AS	placesc,
trim(substr(data,55,6)) AS	tract,
trim(substr(data,61,1)) AS	blkgrp,
trim(substr(data,62,4)) AS	block,
trim(substr(data,66,2)) AS	iuc,
trim(substr(data,68,5)) AS	concit,
trim(substr(data,73,2)) AS	concitcc,
trim(substr(data,75,2)) AS	concitsc,
trim(substr(data,77,4)) AS	aianhh,
trim(substr(data,81,5)) AS	aianhhfp,
trim(substr(data,86,2)) AS	aianhhcc,
trim(substr(data,88,1)) AS	aihhtli,
trim(substr(data,89,3)) AS	aitsce,
trim(substr(data,92,5)) AS	aits,
trim(substr(data,97,2)) AS	aitscc,
trim(substr(data,99,6)) AS	ttract,
trim(substr(data,105,1)) AS	tblkgrp,
trim(substr(data,106,5)) AS	anrc,
trim(substr(data,111,2)) AS	anrccc,
trim(substr(data,113,5)) AS	cbsa,
trim(substr(data,118,2)) AS	cbsasc,
trim(substr(data,120,5)) AS	metdiv,
trim(substr(data,125,3)) AS	csa,
trim(substr(data,128,5)) AS	necta,
trim(substr(data,133,2)) AS	nectasc,
trim(substr(data,135,5)) AS	nectadiv,
trim(substr(data,140,3)) AS	cnecta,
trim(substr(data,143,1)) AS	cbsapci,
trim(substr(data,144,1)) AS	nectapci,
trim(substr(data,145,5)) AS	ua,
trim(substr(data,150,2)) AS	uasc,
trim(substr(data,152,1)) AS	uatype,
trim(substr(data,153,1)) AS	ur,
trim(substr(data,154,2)) AS	cd,
trim(substr(data,156,3)) AS	sldu,
trim(substr(data,159,3)) AS	sldl,
trim(substr(data,162,6)) AS	vtd,
trim(substr(data,168,1)) AS	vtdi,
trim(substr(data,169,3)) AS	reserve2,
trim(substr(data,172,5)) AS	zcta5,
trim(substr(data,177,5)) AS	submcd,
trim(substr(data,182,2)) AS	submcdcc,
trim(substr(data,184,5)) AS	sdelem,
trim(substr(data,189,5)) AS	sdsec,
trim(substr(data,194,5)) AS	sduni,
cast(trim(substr(data,199,14)) AS integer) AS	arealand,
cast(trim(substr(data,213,14)) AS integer) AS	areawatr,
trim(substr(data,227,90)) AS	name,
trim(substr(data,317,1)) AS	funcstat,
trim(substr(data,318,1)) AS	gcuni,
cast(trim(substr(data,319,9)) AS integer) AS	pop100,
cast(trim(substr(data,328,9)) AS integer) AS	hu100,
trim(substr(data,337,11)) AS	intptlat,
trim(substr(data,348,12)) AS	intptlon,
trim(substr(data,360,2)) AS	lsadc,
trim(substr(data,362,1)) AS	partflag,
trim(substr(data,363,6)) AS	reserve3,
trim(substr(data,369,5)) AS	uga,
trim(substr(data,374,8)) AS	statens,
trim(substr(data,382,8)) AS	countyns,
trim(substr(data,390,8)) AS	cousubns,
trim(substr(data,398,8)) AS	placens,
trim(substr(data,406,8)) AS	concitns,
trim(substr(data,414,8)) AS	aianhhns,
trim(substr(data,422,8)) AS	aitsns,
trim(substr(data,430,8)) AS	anrcns,
trim(substr(data,438,8)) AS	submcdns,
trim(substr(data,446,2)) AS	cd113,
trim(substr(data,448,2)) AS	cd114,
trim(substr(data,450,2)) AS	cd115,
trim(substr(data,452,3)) AS	sldu2,
trim(substr(data,455,3)) AS	sldu3,
trim(substr(data,458,3)) AS	sldu4,
trim(substr(data,461,3)) AS	sldl2,
trim(substr(data,464,3)) AS	sldl3,
trim(substr(data,467,3)) AS	sldl4,
trim(substr(data,470,2)) AS	aianhhsc,
trim(substr(data,472,2)) AS	csasc,
trim(substr(data,474,2)) AS	cnectasc,
trim(substr(data,476,1)) AS	memi,
trim(substr(data,477,1)) AS	nmemi,
trim(substr(data,478,5)) AS	puma,
trim(substr(data,483,18)) AS	reserved
FROM geo_header_staging;
