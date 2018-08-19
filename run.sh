# See more about schemapy in http://schemaspy.org/
# Configuration: https://schemaspy.readthedocs.io/en/latest/configuration.html
# Download Postgresql driver ( all versions in https://jdbc.postgresql.org/download.html )

# wget https://jdbc.postgresql.org/download/postgresql-42.2.4.jar

OUTPUT_FOLDER=result
DATABASE_HOST=localhost
DATABASE_PORT=5432
DATABASE_NAME=
DATABASE_USER=
DATABASE_PASSWORD=

mv mv $OUTPUT_FOLDER $OUTPUT_FOLDER-$(date +%s) # backup the last result
mkdir $OUTPUT_FOLDER

java -jar schemaspy-6.0.0.jar \
	-dp ./postgresql-42.2.4.jar \
	-t pgsql \
	-host $DATABASE_HOST \
	-port $DATABASE_PORT \
	-db $DATABASE_NAME \
	-u $DATABASE_USER \
	-p $DATABASE_PASSWORD \
	-rails \
	-o ./$OUTPUT_FOLDER && \
	echo "result in: file://$PWD/$OUTPUT_FOLDER/index.html" &&
	echo "schema images in: file://$PWD/$OUTPUT_FOLDER/diagrams/summary/relationships.real.large.png"