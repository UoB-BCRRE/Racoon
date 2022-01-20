#!/bin/bash
#Moddified CM 28/07/2016
echo "=== Racoon Data Loading Scipt ==="

export localdir=/Users/Jin/Documents/Ontology/Workplace/racoon-master
export abox_dir=$localdir/other/abox
export am=$localdir/other/amaas
export upper=$localdir/ub/upper
export doc=$localdir/ub/doc
export rail=$localdir/rail
export core=$rail/core
export futroDir=$localdir/other/trainlocator
export tbox=http://purl.org/ub/upper/
export abox=http://purl.org/rail/resource/
export amaasTbox=http://amaas-siemens.com/ontology/
export amaasRes=http://amaas-siemens.com/resource/
export futroDemo=http://purl.org/ub/demo/resource/
export coreURI=http://purl.org/rail/core/
export scripts=$localdir/scripts
export server=localhost:5820
export db=trains
export fullDB=$server/$db
export STARDOG_HOME=/Users/jin/PycharmProjects/onto_integration/stardog/bin
export xcity=http://purl.org/rail/xcity
export lowAdh=$localdir/other/low_adhesion
pushd $STARDOG_HOME
./stardog-admin db list
echo "    Re-creating DB"
#I expect to be run in the same folder as database.properties
./stardog-admin db create -c $scripts/database.properties
echo "The previous instance of the server, $server, will have all data deleted."

while true; do
    read -p "C)ontinue,J)ust add, Q)uit" yn
    case $yn in
        [Cc]* ) ./stardog data remove $db -a; break;;
        [Jj]* ) break;;
		[Qq]* ) exit;;
        * ) echo "Please answer C,J or Q";;
    esac
done


echo "    Creating Upper"
./stardog data add -g $tbox $db $upper/3d.ttl
./stardog data add -g $tbox $db $upper/upper.ttl
./stardog data add -g $tbox $db $localdir/ub/co/tbox.ttl
./stardog data add -g http://purl.org/rail/py $db $rail/py/py.ttl
echo "Adding ICV constraints"
./stardog-admin icv add $db $upper/cv.ttl
./stardog-admin icv add $db $core/cv/core_cv.ttl 
echo "Documentation"
./stardog data add -g http://purl.org/ub/doc/ $db $doc/doc.ttl
echo "Creating Midlevel"
# ./stardog data add -g $amaasTbox $db $am/tbox.ttl
./stardog data add -g $coreURI $db $core/core.ttl
./stardog data add -g $coreURI $db $core/3d/core_3d.ttl

./stardog data add -g http://purl.org/rail/rs/ $db $rail/rs/tbox.ttl
./stardog data add -g http://purl.org/rail/is/ $db $rail/is/tbox.ttl
./stardog data add -g http://purl.org/rail/tt/ $db $rail/tt/tbox.ttl
./stardog data add -g http://purl.org/rail/rw/ $db $rail/rw/rw.ttl

echo "adding ABox"
./stardog data add -g $xcity $db $lowAdh/xcity.ttl
./stardog data add -g http://purl.org/rail/locations $db $lowAdh/is_tiplocswithstations.ttl
./stardog data add -g http://purl.org/rail/lines $db $lowAdh/lines.ttl
./stardog data add -g http://purl.org/rail/graph $db $lowAdh/graph.ttl

echo "adding rules"
./stardog data add -g http://purl.org/rail/xcity $db $rail/rw/dew_point_rule.ttl

# echo "    Adding  abox vocabulary"
# ./stardog data add -g $amaasRes $db $am/abox.ttl
# ./stardog data add -g $abox $db $abox_dir/rs_abox.ttl
# ./stardog data add -g $abox $db $core/vocab/core_vocab.ttl
# echo "    Adding  abox vocabulary (from Futro demo)"
# ./stardog data add -g $futroDemo $db $futroDir/resource.ttl
# ./stardog data add -g $futroDemo $db $futroDir/bags2_complete2.ttl

popd
echo "Done adding data"