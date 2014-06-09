SELECT 
  name, 
  place AS kind,
  way AS __geometry__ 

FROM planet_osm_point 

WHERE name IS NOT NULL 

AND place IN (
  'continent',
  'ocean', 
  'country'
)

AND way && !bbox!