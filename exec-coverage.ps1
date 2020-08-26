Write-Host "sonar begin"
dotnet sonarscanner begin /k:"Coverlet-Demo" /d:sonar.host.url=http://localhost:10000 /d:sonar.cs.opencover.reportsPaths="ClassLib.UnitTests/results/coverage.opencover.xml" /d:sonar.coverage.exclusions="**Fixture*.cs"
Write-Host "build"
dotnet build ./coverlet-demo.sln
Write-Host "test"
dotnet test ./ClassLib.UnitTests/ClassLib.UnitTests.csproj /p:CollectCoverage=true /p:CoverletOutputFormat=opencover /p:CoverletOutput="./results/" 
Write-Host "build-server shutdown"
dotnet build-server shutdown
Write-Host "sonar end"
dotnet sonarscanner end