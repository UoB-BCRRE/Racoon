export server=http://$devhost:5820
export db=$server/trains
echo "Loading Schema"
sh ./loadschema.sh