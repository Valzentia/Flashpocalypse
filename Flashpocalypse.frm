VERSION 5.00
Object = "{D27CDB6B-AE6D-11CF-96B8-444553540000}#1.0#0"; "flash.ocx"
Object = "{F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.2#0"; "COMDLG32.OCX"
Begin VB.Form Form1 
   Caption         =   "Flashpocalypse"
   ClientHeight    =   8100
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   10695
   Icon            =   "Flashpocalypse.frx":0000
   LinkTopic       =   "Form1"
   ScaleHeight     =   8100
   ScaleWidth      =   10695
   StartUpPosition =   3  'Windows Default
   Begin MSComDlg.CommonDialog CommonDialog1 
      Left            =   0
      Top             =   0
      _ExtentX        =   847
      _ExtentY        =   847
      _Version        =   393216
   End
   Begin VB.TextBox SWFPointer 
      Height          =   285
      Left            =   960
      TabIndex        =   3
      Text            =   "No .SWF loaded; select one on your PC or enter an online link to a .SWF file."
      Top             =   0
      Width           =   9135
   End
   Begin VB.CommandButton PlaySWF 
      Caption         =   "Play"
      Height          =   255
      Left            =   10080
      TabIndex        =   2
      Top             =   0
      Width           =   615
   End
   Begin VB.CommandButton SWFSelect 
      Caption         =   "Select SWF"
      Height          =   255
      Left            =   0
      TabIndex        =   1
      Top             =   0
      Width           =   975
   End
   Begin ShockwaveFlashObjectsCtl.ShockwaveFlash FlashPlayer 
      Height          =   7935
      Left            =   0
      TabIndex        =   0
      Top             =   240
      Width           =   10695
      _cx             =   18865
      _cy             =   13996
      FlashVars       =   ""
      Movie           =   ""
      Src             =   ""
      WMode           =   "Window"
      Play            =   -1  'True
      Loop            =   -1  'True
      Quality         =   "High"
      SAlign          =   ""
      Menu            =   -1  'True
      Base            =   ""
      AllowScriptAccess=   "always"
      Scale           =   "ShowAll"
      DeviceFont      =   0   'False
      EmbedMovie      =   0   'False
      BGColor         =   ""
      SWRemote        =   ""
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub PlaySWF_Click()
FlashPlayer.Movie = SWFPointer.Text
FlashPlayer.Playing = True
Form1.Caption = "Flashpocalypse - " & FlashPlayer.Movie
End Sub

Private Sub SWFSelect_Click()
CommonDialog1.Filter = "Adobe Flash File (*.swf)|*.swf"
CommonDialog1.DefaultExt = "swf"
CommonDialog1.DialogTitle = "Select a SWF file."
CommonDialog1.ShowOpen
SWFPointer.Text = CommonDialog1.FileName
End Sub
