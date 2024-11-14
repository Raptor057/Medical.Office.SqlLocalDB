# Usamos la imagen base de SQL Server
FROM mcr.microsoft.com/mssql/server:2022-latest

# Variables de entorno para aceptar la licencia y configurar la contraseña de SA
ENV ACCEPT_EULA=Y
ENV MSSQL_SA_PASSWORD=Cbmwjmkq23

# Exponer el puerto 1433 para SQL Server
EXPOSE 1433

# Comando CMD para iniciar SQL Server
CMD /opt/mssql/bin/sqlservr
