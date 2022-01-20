#static Directory

This directory contains a number of large RDF files used in the development of the FuTRO project, mainly to do with location data mapped from other sources.


| Filename | Description |
| ----- | ----- |
| is_ELRs.ttl                       | a list of TIPLOC locations and their associated ELRs (engineers line references) from CIF          |
| is_tiplocswithstations.ttl        | subset of TIPLOCs with all details and ontology-defined types (station, calling point etc) from CORPUS          |
| merger                            | Working Timetable mapped from CIF. big files - delete.rq is a SPARQL delete query that finds a subset of trains based on your purposes |
| notneeded_googlerefine_ttls.zip   | A hangover from experimenting with openrefine - maybe some useful data in here, but wasn't relevant to FuTRO|
| nutscodes.ttl                     | NUTS regions in RDF form taken from uts.geovocab.org |
| rollingstockresources.ttl         | fictional rolling stock entities used in AMaaS demonstrator          |
| services_and_stations.ttl         | Subset of services from WTT, used for AMaaS demonstrator          |
| services_and_stations_and_elrs.ttl | As above, but with is_ELRs.ttl merged and trimmed          |
| static.7z                         | Another hangover archive          |
| stations_post.ttl                 | As below, but stations merged with TIPLOCs and STANOXs|
| stations_pre.ttl                  | UK rail stations in RDF (in ontology form) --- CIF merged with OSM data using OpenRefine. Potentially useful!          |
| tt_services.ttl                   | All services running through Coventry, from CIF. Made using OpenRefine          |

Some notes:

* Most of these files were created for the AMaaS demonstrator and focus on trains in and around Coventry.
* Most of the CIF data was created by using [CIFReader](https://github.com/swlines/CIFReader) to create a mySQL database, and then using [OpenRefine](http://openrefine.org/) and its RDF extension to map them into the form seen here. OpenRefine can do quite a lot with design patterns in its RDF exporter.