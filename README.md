### Overview

This adds an `Excel` provider to Transformalize using [ExcelDataReader](https://github.com/ExcelDataReader/ExcelDataReader) for reading and [OpenXmlPowerTools](https://github.com/OfficeDev/Open-Xml-PowerTools) for writing.  It is a plug-in compatible with Transformalize 0.3.12-beta.

Build the Autofac project and put it's output into Transformalize's *plugins* folder.

### Write Usage

```xml
<add name='TestProcess' mode='init'>
  <connections>
    <add name='input' provider='bogus' seed='1' />
    <add name='output' provider='excel' file='c:\temp\bogus.xlsx' />
  </connections>
  <entities>
    <add name='Contact' size='1000'>
      <fields>
        <add name='Identity' type='int' primary-key='true' />
        <add name='FirstName' />
        <add name='LastName' />
        <add name='Stars' type='byte' min='1' max='5' />
        <add name='Reviewers' type='int' min='0' max='500' />
      </fields>
    </add>
  </entities>
</add>
```

This writes 1000 rows of bogus data to an excel file.  It includes a bold header row.

### Read Usage

```xml
<add name='TestProcess' >
  <connections>
    <add name='input' provider='excel' file='c:\temp\bogus.xlsx' start='2' />
  </connections>
  <entities>
    <add name='Contact' page='1' size='10'>
      <fields>
        <add name='Identity' type='int' />
        <add name='FirstName' />
        <add name='LastName' />
        <add name='Stars' type='byte' />
        <add name='Reviewers' type='int' />
      </fields>
    </add>
  </entities>
</add>
```

This reads 10 rows of bogus data from the spreadsheet.

<pre>
<strong>Identity,FirstName,LastName,Stars,Reviewers</strong>
1,Justin,Konopelski,3,153
2,Eula,Schinner,2,41
3,Tanya,Shanahan,4,412
4,Emilio,Hand,4,469
5,Rachel,Abshire,3,341
6,Doyle,Beatty,4,458
7,Delbert,Durgan,2,174
8,Harold,Blanda,4,125
9,Willie,Heaney,5,342
10,Sophie,Hand,2,176</pre>