﻿-- export adres_plus naar CVS (exclusief geopunt) 
\COPY (SELECT openbareruimtenaam,verkorteopenbareruimtenaam,openbareruimte_id,huisnummer,huisletter,huisnummertoevoeging,postcode,nummeraanduiding_id,woonplaatsnaam AS woonplaats,woonplaatscode,gemeentenaam AS gemeente,gemeentecode,provincienaam,provinciecode,nevenadres,typeadresseerbaarobject,adresseerbaarobject_status,opp_adresseerbaarobject_m2,aantal_nad_per_adresobject,adresseerbaarobject_id,x,y,lon,lat,woonfunctie,bijeenkomstfunctie,celfunctie,gezondheidszorgfunctie,industriefunctie,kantoorfunctie,logiesfunctie,onderwijsfunctie,sportfunctie,winkelfunctie,overige_gebruiksfunctie,aantal_pand_relaties_dit_vbo,pand_id,aantal_vbo_relaties_dit_pnd,vbo_pnd_1_op_1,opp_pand,woningtype,omtrek_pand,verhouding_opp_vbo_opp_pnd,pandstatus,bouwjaar,uniq_key,pchnhlht,pchnhlht_uniek,pchn_uniek,rangorde_pchn FROM adres_plus ORDER BY postcode,openbareruimtenaam,huisnummer,huisletter,huisnummertoevoeging) TO '/tmp/bagadresplus.csv' WITH CSV HEADER DELIMITER ';';