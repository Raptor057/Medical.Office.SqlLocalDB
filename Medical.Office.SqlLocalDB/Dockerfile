# Imagen base de SQL Server
FROM mcr.microsoft.com/mssql/server:2022-latest

# Configuración de variables de entorno
ENV ACCEPT_EULA=Y
ENV MSSQL_SA_PASSWORD=Cbmwjmkq23
ENV MSSQL_PID=Express

# Crear un volumen para la persistencia de datos
VOLUME /var/opt/mssql

# Health check para verificar que el servidor SQL esté listo
HEALTHCHECK --interval=10s --timeout=10s --retries=10 \
    CMD /opt/mssql-tools/bin/sqlcmd -S localhost -U sa -P "$MSSQL_SA_PASSWORD" -Q "SELECT 1" || exit 1

# Exponer el puerto predeterminado de SQL Server
EXPOSE 1433

# Comando para iniciar SQL Server
CMD /opt/mssql/bin/sqlservr
