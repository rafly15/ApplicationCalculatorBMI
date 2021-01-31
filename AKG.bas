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
	Dim usia As Int
	Dim bb As Float
	Dim tb As Float
	Dim akti As Float

	Private EditText2 As EditText
	Private EditText3 As EditText
	Private EditText4 As EditText
	Private EditText5 As EditText
	Private EditText6 As EditText
	Private Button2 As Button
	Private Button1 As Button
	Private EditText7 As EditText
End Sub

Sub Activity_Create(FirstTime As Boolean)
	'Do not forget to load the layout file created with the visual designer. For example:
	Activity.LoadLayout("akg")

End Sub

Sub Activity_Resume

End Sub

Sub Activity_Pause (UserClosed As Boolean)

End Sub


Sub Button2_Click
	'RUMUS KALORI PRIA'
	Dim hsl As Float
EditText7.Text = hsl
	
usia = EditText2.Text
bb = EditText3.Text	
tb = EditText4.Text
akti = EditText5.Text

	'rumus'
	hsl = (((10*bb) + (6.25*tb) - (5*usia)) + 5) * akti
	EditText6.Text = hsl
End Sub

Sub Button1_Click
	'RUMUS KALORI WANITA'
	Dim jml As Float

	
	usia = EditText2.Text
	bb = EditText3.Text
	tb = EditText4.Text
	akti = EditText5.Text

	'rumus'
	jml = (((10*bb) + (6.25*tb) - (5*usia)) - 161) * akti
	EditText6.Text = jml

End Sub
