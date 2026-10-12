# ==========================================
# Voting App - .NET Worker Service
# ==========================================

# ==========================================
# STAGE 1: BUILD
# ==========================================

FROM mcr.microsoft.com/dotnet/sdk:7.0 AS build

WORKDIR /src

# Copy project file
COPY app/worker/Worker.csproj ./worker/

# Restore NuGet dependencies
RUN dotnet restore ./worker/Worker.csproj

# Copy worker source code
COPY app/worker/ ./worker/

# Compile and publish the application
RUN dotnet publish ./worker/Worker.csproj \
    -c Release \
    -o /app/publish \
    --no-restore


# ==========================================
# STAGE 2: RUNTIME
# ==========================================

FROM mcr.microsoft.com/dotnet/runtime:7.0

WORKDIR /app

# Copy compiled application from build stage
COPY --from=build /app/publish .

# Run the application as a non-root user
USER 1654

# Start the worker
ENTRYPOINT ["dotnet", "Worker.dll"]