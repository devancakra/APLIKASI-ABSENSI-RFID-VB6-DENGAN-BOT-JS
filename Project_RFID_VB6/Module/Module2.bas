Attribute VB_Name = "Module2"
'============================================================================================'
'Koneksi Database MySQL Online'
'============================================================================================'
Public CN As New ADODB.Connection
Public MyRecSet As New ADODB.Recordset

Sub Conn()
    Set CN = New ADODB.Connection
    Set MyRecSet = New ADODB.Recordset
    
    Dim server, nUser, dbName, dbUser, password As String
    Dim port As Integer
    
    '////////////// HOSTING //////////////'
    server = "sql12.freemysqlhosting.net"
    dbName = "sql12380344"
    dbUser = "sql12380344"
    password = "8gsgMLT2YE"
    port = "3306"
    
    '////////////// LOCAL //////////////'
    'server = "localhost"
    'dbName = "rfid_bot"
    'dbUser = "root"
    'password = ""
    'port = "3306"
    
    CN.Open "Driver={MySQL ODBC 8.0 ANSI Driver};Server=" & server _
        & ";Port=" & port & ";Database=" & dbName & ";User=" & dbUser & ";Password=" _
        & password & ";Option=3;"
End Sub
