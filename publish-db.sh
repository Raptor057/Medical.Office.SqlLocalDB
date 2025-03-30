#!/bin/bash

echo "🔃 Esperando que SQL Server esté disponible..."
/opt/mssql/bin/sqlservr &

sleep 20

echo "🚀 Publicando la base de datos..."
/opt/mssql-tools/bin/sqlpackage \
    /Action:Publish \
    /SourceFile:/publish/Medical.Office.SqlLocalDB.dacpac \
    /TargetServerName:localhost \
    /TargetDatabaseName:MedicalOffice \
    /TargetUser:sa \
    /TargetPassword:$MSSQL_SA_PASSWORD \
    /p:DropObjectsNotInSource=True \
    /p:AllowIncompatiblePlatform=True

wait
