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
	Private player1 As SimpleExoPlayer
	Private player2 As SimpleExoPlayer
End Sub

Sub Globals
	'These global variables will be redeclared each time the activity is created.
	'These variables can only be accessed from this module.

	Private SimpleExoPlayerView1 As SimpleExoPlayerView
	Private SimpleExoPlayerView2 As SimpleExoPlayerView
End Sub

Sub Activity_Create(FirstTime As Boolean)
	'Do not forget to load the layout file created with the visual designer. For example:
	Activity.LoadLayout("olahraga")

	'upper body video'
	player1.Initialize("player")
	player1.Prepare(player1.CreatefileSource(File.DirAssets, "backup0000-0190.mp4"))
	
	'lower body video'
	player2.Initialize("player")
	player2.Prepare(player2.CreatefileSource(File.DirAssets, "paha0000-0160.mp4"))


	SimpleExoPlayerView1.Player = player1
	SimpleExoPlayerView2.Player = player2
End Sub

Sub Activity_Resume

End Sub

Sub Activity_Pause (UserClosed As Boolean)

End Sub
