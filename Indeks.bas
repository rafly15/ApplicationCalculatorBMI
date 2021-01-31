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

	
	Private KG As EditText
	Private M As EditText
	Private hasil As EditText
	Private EditText4 As EditText
	Dim tb As Float
	Dim bb As Float
		Private Button2 As Button
	Private ImageView1 As ImageView
	Dim n As Int = 0
End Sub

Sub Activity_Create(FirstTime As Boolean)
	'Do not forget to load the layout file created with the visual designer. For example:
	Activity.LoadLayout("indeks")

End Sub

Sub Activity_Resume

End Sub

Sub Activity_Pause (UserClosed As Boolean)

End Sub

'perhitungan'
Sub Button2_Click
	Dim jum As Float
	EditText4.Text = jum
	bb = KG.Text
	tb = M.Text
	
	
	'perhitungan imt'
	tb = tb / 100
	jum = bb / (tb * tb)
	hasil.Text = jum
	
	
	If jum <= 18 Then
		Msgbox("BERAT BADAN ANDA KURANG","KATEGORI TUBUH ANDA : ")
		
	else if jum >= 18.5 And jum <= 22.9 Then
		Msgbox("BERAT BADAN ANDA NORMAL","KATEGORI TUBUH ANDA")
			
	else if jum >= 23 And jum <= 29.9 Then
		Msgbox("BERAT BADAN ANDA BERLEBIH","KATEGORI TUBUH ANDA")
				
	Else
		Msgbox("BERAT BADAN ANDA OBESITAS","KATEGORI TUBUH ANDA")
				
	End If
End Sub

Sub ImageView1_Click
	If n = 0 Then 
		Activity.Finish
	End If
	
End Sub
