B4A=true
Group=Default Group
ModulesStructureVersion=1
Type=Activity
Version=9.801
@EndOfDesignText@
#Region  Activity Attributes 
	#FullScreen: true
	#IncludeTitle: false
#End Region

Sub Process_Globals
	'These global variables will be declared once when the application starts.
	'These variables can be accessed from all modules.

End Sub

Sub Globals
	'These global variables will be redeclared each time the activity is created.
	'These variables can only be accessed from this module.
Dim age As Int
Dim ping As Int


	Private pinggang As EditText
	Private umur As EditText
	Private wanita As Button
	Private pria As Button
	Private EditText1 As EditText
	Private EditText3 As EditText
	Private ImageView1 As ImageView
	Dim o As Int = 0 
End Sub

Sub Activity_Create(FirstTime As Boolean)
	'Do not forget to load the layout file created with the visual designer. For example:
	Activity.LoadLayout("fat")

End Sub

Sub Activity_Resume

End Sub

Sub Activity_Pause (UserClosed As Boolean)

End Sub

'perhitungan wanita'
Sub wanita_Click
	Dim hsl As Float 
	EditText3.Text = hsl
	
	ping = pinggang.Text
	age = umur.Text
	
	'perhitungan'
	
	hsl = 0.439 * ping + 0.221 * age - 9.4
	EditText1.Text = hsl
	
	If hsl <= 5.0 Then
		Msgbox("KURANG","KATEGORI LEMAK TUBUH ANDA")
	else if hsl >= 5.0 And hsl <= 19.9 Then
		Msgbox("RENDAH","KATEGORI LEMAK TUBUH ANDA")
	else if hsl >= 20.0 And hsl <= 29.9 Then
		Msgbox("NORMAL","KATEGORI LEMAK TUBUH ANDA")
	else if hsl >= 30.0 And hsl <= 34.9 Then
		Msgbox("TINGGI","KATEGORI LEMAK TUBUH ANDA")
	else if hsl >= 35.0 And hsl <= 50.0 Then
		Msgbox("SANGAT TINGGI","KATEGORI LEMAK TUBUH ANDA")
	Else
		Msgbox("OBESITAS","KATEGORI LEMAK TUBUH ANDA")
	End If
	
End Sub

Sub pria_Click
	Dim hsl As Float
	EditText3.Text = hsl
	
	ping = pinggang.Text
	age = umur.Text
	
	'perhitungan'
	
	hsl = 0.567 * ping + 0.101 * age - 31.8
	EditText1.Text = hsl
	
	If hsl <= 5.0 Then
		Msgbox("KURANG","KATEGORI LEMAK TUBUH ANDA")
	else if hsl >= 5.0 And hsl <= 9.9 Then
		Msgbox("RENDAH","KATEGORI LEMAK TUBUH ANDA")
	else if hsl >= 10.0 And hsl <= 19.9 Then
		Msgbox("NORMAL","KATEGORI LEMAK TUBUH ANDA")
	else if hsl >= 20.0 And hsl <= 24.9 Then
		Msgbox("TINGGI","KATEGORI LEMAK TUBUH ANDA")
	else if hsl >= 25.0 And hsl <= 50.0 Then
		Msgbox("SANGAT TINGGI","KATEGORI LEMAK TUBUH ANDA")
	Else
		Msgbox("OBESITAS","KATEGORI LEMAK TUBUH ANDA")
	End If
	
End Sub


'kembali'

Sub ImageView1_Click
	If o = 0 Then
		Activity.Finish
	End If
End Sub
