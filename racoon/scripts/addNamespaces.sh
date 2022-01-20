export db=trains
export STARDOG_HOME=/Users/jin/PycharmProjects/stardog_service/stardog/bin
cd $STARDOG_HOME
./stardog namespace add --prefix doc --uri http://purl.org/ub/doc/ $db
./stardog namespace add --prefix u --uri http://purl.org/ub/upper/ $db
./stardog namespace add --prefix core --uri http://purl.org/rail/core/ $db
./stardog namespace add --prefix vocab --uri http://purl.org/ub/rail/core/vocab $db
./stardog namespace add --prefix dcam --uri http://purl.org/dc/dcam $db
./stardog namespace add --prefix dc --uri http://purl.org/dc/elements/1.1/ $db
./stardog namespace add --prefix dct --uri http://purl.org/dc/terms/ $db
./stardog namespace add --prefix geo --uri http://www.opengis.net/ont/geosparql# $db
./stardog namespace add --prefix gml --uri http://www.opengis.net/ont/gml# $db
./stardog namespace add --prefix time --uri http://www.w3.org/2006/time# $db
./stardog namespace add --prefix tzont --uri http://www.w3.org/2006/timezone# $db
./stardog namespace add --prefix wgspos --uri http://www.w3.org/2003/01/geo/wgs84_pos# $db
./stardog namespace add --prefix xsd --uri http://w3.org/2001/xmlschema# $db
./stardog namespace add --prefix xml --uri http://w3.org/xml/1998/namespace $db
./stardog namespace add --prefix unit --uri http://qudt.org/vocab/unit# $db
./stardog namespace add --prefix xcity --uri http://purl.org/rail/xcity/ $db
./stardog namespace add --prefix is --uri http://purl.org/rail/is/ $db
./stardog namespace add --prefix rw --uri http://purl.org/rail/rw/ $db
./stardog namespace add --prefix resource --uri http://purl.org/rail/resource/ $db
