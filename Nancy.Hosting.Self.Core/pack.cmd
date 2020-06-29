cd /d %~dp0
REM dotnet pack .\src\example\example.csproj -o c:\published\example -c Release /p:Version=1.2.3
set ver=1.0.1
set rep="%appdata%\..\..\.nuget\packages\Nancy.Hosting.Self.Core\%ver%"
if exist %rep% (rd /S/Q %rep%)
dotnet pack -v q --nologo --output lib -c Release /p:Version=%ver%
::dotnet pack /verbosity:q /nologo --output ..\..\lib -c Release /p:NuspecFile=.\project.nuspec
::exit