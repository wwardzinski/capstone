SELECT *
  FROM IDP_DEV_LEVEL1.WWARD02.TEMP_OTTAWA_MONTHLY_011889_122006
;
 
 SELECT YEAR,AVG(MEAN_TEMP)
 FROM IDP_DEV_LEVEL1.WWARD02.TEMP_OTTAWA_MONTHLY_011889_122006
 GROUP BY 1 ORDER BY 1;
 
  SELECT YEAR/10 || 'x' AS YEAR ,AVG(MEAN_TEMP) as AVG_TEMP
 FROM IDP_DEV_LEVEL1.WWARD02.TEMP_OTTAWA_MONTHLY_011889_122006
 GROUP BY 1 ORDER BY 1;
 
 YEAR	AVG
189x	5.500000
190x	5.253333
191x	5.549167
192x	5.360833
193x	5.199167
194x	5.447500
195x	5.982500
196x	5.839167
197x	5.825833
198x	6.169167
199x	6.660833
200x	7.102381  ;
 
 select * from IDP_DEV_LEVEL1.WWARD02.TEMP_OTTAWA_MONTHLY_011889_122006
 where abs((MEAN_MAX_TEMP+MEAN_MIN_TEMP )/2 -MEAN_TEMP) > 0.1 ;
 
 