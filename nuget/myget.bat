REM nuget pack Transformalize.Provider.Excel.nuspec -OutputDirectory "c:\temp\modules"
REM nuget pack Transformalize.Provider.Excel.Autofac.nuspec -OutputDirectory "c:\temp\modules"
REM nuget pack Transformalize.Provider.Excel.Autofac.v3.nuspec -OutputDirectory "c:\temp\modules"

nuget push "c:\temp\modules\Transformalize.Provider.Excel.0.8.29-beta.nupkg" -source https://www.myget.org/F/transformalize/api/v3/index.json
nuget push "c:\temp\modules\Transformalize.Provider.Excel.Autofac.0.8.29-beta.nupkg" -source https://www.myget.org/F/transformalize/api/v3/index.json
nuget push "c:\temp\modules\Transformalize.Provider.Excel.Autofac.v3.0.8.29-beta.nupkg" -source https://www.myget.org/F/transformalize/api/v3/index.json
