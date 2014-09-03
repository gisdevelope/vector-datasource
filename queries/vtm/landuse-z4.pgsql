SELECT name, area, kind, source, __geometry__, __id__

FROM
(
    --
    -- Urban Areas
    --
    SELECT 'urban' AS name,
           way_area::bigint AS area,
           'urban area' AS kind,
           'naturalearthdata.com' AS source,
           the_geom AS __geometry__,
           gid::varchar AS __id__
    
    FROM ne_50m_urban_areas
    
    WHERE the_geom && !bbox!

) AS land_usages