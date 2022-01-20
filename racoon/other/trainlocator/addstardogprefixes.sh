export db=http://localhost:5820/trains
stardog namespace add --prefix u --uri http://purl.org/ub/upper/ $db
stardog namespace add --prefix doc --uri http://purl.org/ub/doc/ $db
stardog namespace add --prefix p4d --uri http://purl.org/ub/upper/p4d/ $db
stardog namespace add --prefix core --uri http://purl.org/rail/core/ $db
stardog namespace add --prefix vocab --uri http://purl.org/rail/core/vocab/ $db
stardog namespace add --prefix is --uri http://purl.org/rail/is/ $db
stardog namespace add --prefix tt --uri http://purl.org/rail/tt/ $db
stardog namespace add --prefix rs --uri http://purl.org/rail/rs/ $db
stardog namespace add --prefix demo --uri http://purl.org/ub/demo/ontology/ $db
stardog namespace add --prefix dres --uri http://purl.org/ub/demo/resource/ $db
stardog namespace add --prefix res --uri http://purl.org/rail/resource/ $db
stardog namespace add --prefix dc --uri http://purl.org/dc/elements/1.1/ $db
stardog namespace add --prefix dcam --uri http://purl.org/dc/dcam/ $db
stardog namespace add --prefix dct --uri http://purl.org/dc/terms/ $db
stardog namespace add --prefix geo --uri http://www.opengis.net/ont/geosparql# $db
stardog namespace add --prefix gml --uri http://www.opengis.net/ont/gml# $db
stardog namespace add --prefix owl --uri http://www.w3.org/2002/07/owl# $db
stardog namespace add --prefix prov --uri http://www.w3.org/ns/prov# $db
stardog namespace add --prefix rdf --uri http://www.w3.org/1999/02/22-rdf-syntax-ns# $db
stardog namespace add --prefix rdfs --uri http://www.w3.org/2000/01/rdf-schema# $db
stardog namespace add --prefix sf --uri http://www.opengis.net/ont/sf# $db
stardog namespace add --prefix skos --uri http://www.w3.org/2004/02/skos/core# $db
stardog namespace add --prefix time --uri http://www.w3.org/2006/time# $db
stardog namespace add --prefix tzont --uri http://www.w3.org/2006/timezone# $db
stardog namespace add --prefix unit --uri http://qudt.org/vocab/unit# $db
stardog namespace add --prefix wgspos --uri http://www.w3.org/2003/01/geo/wgs84_pos# $db
stardog namespace add --prefix xml --uri http://www.w3.org/XML/1998/namespace $db
stardog namespace add --prefix xsd --uri http://www.w3.org/2001/XMLSchema# $db
stardog namespace add --prefix rule --uri tag:stardog:api:rule: $db