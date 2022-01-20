# Trainlocator Directory

This directory is the ontology used for part 2 of the AMaaS demo, and contains mostly mappings of infrastructure and timetable data from Birmingham New Street to Cardiff.

Key files:

Name | Description
----- | -----
addschema.sh | Shell script to add schema to Stardog
addstardogprefixes.sh | Shell script to add project prefixes to stardog
another demo2 query.sparql | Scratchpad for queries related to demo 2
bags.ttl | (Used in Project) Fabricated Track circuits and location for demo 2
bags2_complete2.ttl | (Not used in project) Fabricated Track circuits and location for demo 2
bagstrackcircuitindices.ttl | 'Expected' timings for trains on track circuits (bodge for creating live departure boards)
database.properties | Stardog config file for Triplestore
demolinerefs.ttl | Triples asserting which stations are on which ELR
loadschema.sh | Shell script to load all the RDF files needed for the demo into Stardog
midquery.sparql | SPARQL query to find train locations 
old | Directory of old (unused) turtle files for locations and timetables. Could be of use
ontology.ttl | Train locator ontology (T-box)
ontology.ttl.tbc | Topbraid Composer config for Train locator ontology
others.ttl | All ontology imports for tloc ontology, serialized into one file.
owlrdf.ttl | OWL and RDF entity definitions (from OWL/RDF namespace) - used mainly for rdf:labels for each term (i.e. such that a rdfs:subClassOf entity can be shown as 'subclass' on the web)
query to find trains that are one side of a station.sparql | Self explanatory! 
resource.ttl | Test file
resource_pos.ttl | Test file
services_through_UNI.ttl | All services that pass through UNI between 11AM and  12PM
stations_post.ttl | Stations on line between BHM and Cardiff
tclinks.nt | Joins between track circuits
tidy.nt | Data cleansing in Stardog - this is a file of **errors** in the infrastructure. Run a 'remove' command in Stardog and pass it this file and it removes these triples from the store
tidy.ttl | As above, in turtle form
xcity_complete_mileposts_and_tiplocs.ttl | Cross city line mileposts and TIPLOC locations
