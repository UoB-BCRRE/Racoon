echo "=== Stardog AMaaS Pre-load Script Modified 07/07/14 by JT ==="
echo "=== (TTL file structure now mirrors URI structure)        ==="
export tbox=http://purl.org/rail/demo/graph/schema
export abox=http://purl.org/rail/demo/graph/resource
stardog-admin --server $server db list
echo "    Re-creating DB"
stardog-admin --server $server db create -c database.properties
stardog data remove $db -a
echo "    Adding amaas tbox vocabulary"
stardog data add -g $tbox $db ontology.ttl
stardog data add -g $tbox $db others.ttl
stardog data add -g $tbox $db owlrdf.ttl
echo "    Adding amaas abox vocabulary"
stardog data add -g $abox $db bags.ttl
stardog data add -g $abox $db stations_post.ttl
stardog data add -g $abox $db tclinks.nt
stardog data add -g $abox $db demolinerefs.ttl