nuget pack Transformalize.Provider.Excel.nuspec -OutputDirectory "c:\temp\modules"
nuget pack Transformalize.Provider.Excel.Autofac.nuspec -OutputDirectory "c:\temp\modules"
nuget pack Transformalize.Provider.Excel.Autofac.v3.nuspec -OutputDirectory "c:\temp\modules"

REM nuget push "c:\temp\modules\Transformalize.Provider.Excel.0.6.6-beta.nupkg" -source https://api.nuget.org/v3/index.json
REM nuget push "c:\temp\modules\Transformalize.Provider.Excel.Autofac.0.6.6-beta.nupkg" -source https://api.nuget.org/v3/index.json
REM nuget push "c:\temp\modules\Transformalize.Provider.Excel.Autofac.v3.0.6.6-beta.nupkg" -source https://api.nuget.org/v3/index.json
