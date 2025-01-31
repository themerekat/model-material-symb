SELECT n.llavenombre  as taxon_id,
cast(if(epitetoinfraespecifico2cat<>'',CONCAT(generocat," ",epitetoespecificocat," ",epitetoinfraespecificocat," ",epitetoinfraespecifico2cat), 
    if(epitetoespecificocat<>'',CONCAT(generocat," ",epitetoespecificocat," ",epitetoinfraespecificocat),
    if(epitetoespecificocat<>'',CONCAT(generocat," ",epitetoespecificocat),
    if(generocat<>'',generocat,"")))) as char) as scientific_name, 
cast(if(autoranioinfraespecie2cat<>'',autoranioinfraespecie2cat, 
    if(autoranioinfraespeciecat<>'',autoranioinfraespeciecat, if(autoranioespeciecat<>'',autoranioespeciecat, 
    if(autoraniogenerocat<>'',autoraniogenerocat,"")))) as char) as scientific_name_authorship, 
cast(if(catdiccinfraespecie2cat<>'',catdiccinfraespecie2cat, if(catdiccinfraespeciecat<>'',catdiccinfraespeciecat, 
    if(catdiccespeciecat<>'',catdiccespeciecat, if(sistemaclasificaciongenerocat<>'',sistemaclasificaciongenerocat, 
    if(sistemaclasificacionfamiliacat<>'',sistemaclasificacionfamiliacat, if(sistemaclasificacionordencat<>'',sistemaclasificacionordencat, 
    if(sistemaclasificacionclasecat<>'',sistemaclasificacionclasecat, 
    if(sistemaclasificaciondivisionphylumcat<>'',sistemaclasificaciondivisionphylumcat,sistemaclasificacionreinocat)))))))) as char) as name_according_to, 
cattaxcat as taxon_rank, '' as taxon_source,
idnombrecat as scientific_name_id, anotaciontaxonoriginal as taxon_remarks,
'' as parent_taxon_id, 
cast(if(estatusinfraespecie2cat<>'',estatusinfraespecie2cat, if(estatusinfraespeciecat<>'',estatusinfraespeciecat, 
    if(estatusespeciecat<>'',estatusespeciecat, if(estatusgenerocat<>'',estatusgenerocat,"")))) as char) as taxonomic_status,
reinocat as kingdom,
divisionphylumcat as phylum,
clasecat as class,
ordencat as _order,
familiacat as family,
subfamiliacat as subfamily, 
generocat as genus, 
subgenerocat as subgenus, 
cast(if(epitetoinfraespecifico2catvalido<>'',CONCAT(generocatvalido," ",epitetoespecificocatvalido," ",epitetoinfraespecificocatvalido," ",epitetoinfraespecifico2catvalido), if(epitetoespecificocatvalido<>'',CONCAT(generocatvalido," ",epitetoespecificocatvalido," ",epitetoinfraespecificocatvalido), if(epitetoespecificocatvalido<>'',CONCAT(generocatvalido," ",epitetoespecificocatvalido), if(generocatvalido<>'',generocatvalido,"")))) as char) as accepted_scientific_name,
categoriainfraespeciecat as taxon_rank_infraespecificEpithet,
epitetoinfraespecificocat as infraespecificEpithet,
categoriainfraespecie2cat as taxon_rank_sub_infraespecificEpithet,
epitetoinfraespecifico2cat as subinfraespecificEpithet
FROM snib.nombre n 
where proyecto  in ('FY001','FZ016');