VERSION 5.00
Begin VB.Form Form1 
   BackColor       =   &H00FFC0FF&
   Caption         =   "Form1"
   ClientHeight    =   6600
   ClientLeft      =   120
   ClientTop       =   450
   ClientWidth     =   8445
   LinkTopic       =   "Form1"
   ScaleHeight     =   6600
   ScaleWidth      =   8445
   StartUpPosition =   3  'Windows Default
   Begin VB.Timer Timer6 
      Enabled         =   0   'False
      Interval        =   30
      Left            =   4680
      Top             =   480
   End
   Begin VB.Timer Timer5 
      Enabled         =   0   'False
      Interval        =   30
      Left            =   4200
      Top             =   480
   End
   Begin VB.Timer Timer4 
      Enabled         =   0   'False
      Interval        =   30
      Left            =   3720
      Top             =   480
   End
   Begin VB.Timer Timer3 
      Enabled         =   0   'False
      Interval        =   30
      Left            =   3120
      Top             =   480
   End
   Begin VB.Timer Timer2 
      Enabled         =   0   'False
      Interval        =   30
      Left            =   2520
      Top             =   480
   End
   Begin VB.Timer Timer1 
      Enabled         =   0   'False
      Interval        =   30
      Left            =   2040
      Top             =   480
   End
   Begin VB.CommandButton Command2 
      BackColor       =   &H00C0C0FF&
      Caption         =   "Detener"
      BeginProperty Font 
         Name            =   "MS Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   4440
      MaskColor       =   &H00C0C0FF&
      TabIndex        =   1
      Top             =   2520
      Width           =   1215
   End
   Begin VB.CommandButton Command1 
      BackColor       =   &H00C0C0FF&
      Caption         =   "Iniciar"
      BeginProperty Font 
         Name            =   "MS Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   3120
      MaskColor       =   &H008080FF&
      TabIndex        =   0
      Top             =   2520
      Width           =   1215
   End
   Begin VB.Shape Shape1 
      BackColor       =   &H00FF80FF&
      BackStyle       =   1  'Opaque
      BorderColor     =   &H80000012&
      Height          =   495
      Left            =   120
      Shape           =   3  'Circle
      Top             =   120
      Width           =   615
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
If Timer1.Enabled = False Then
Timer1.Enabled = True
End If
End Sub

Private Sub Command2_Click()
If Timer1.Enabled = True Then
Timer1.Enabled = False
End If
If Timer2.Enabled = True Then
Timer2.Enabled = False
End If
If Timer3.Enabled = True Then
Timer3.Enabled = False
End If
If Timer4.Enabled = True Then
Timer4.Enabled = False
End If
If Timer5.Enabled = True Then
Timer5.Enabled = False
End If
If Timer6.Enabled = True Then
Timer6.Enabled = False
End If
End Sub

Private Sub Timer1_Timer()
If Shape1.Top <= 5760 Then
Shape1.Top = Shape1.Top + 100
Else
Shape1.Left = Shape1.Left + 100
End If
If Shape1.Left >= 1200 Then
Timer1.Enabled = False
Timer2.Enabled = True
End If
End Sub

Private Sub Timer2_Timer()
If Shape1.Top >= 120 Then
Shape1.Top = Shape1.Top - 100
Else
Shape1.Left = Shape1.Left + 100
End If
If Shape1.Left >= 2640 Then
Timer2.Enabled = False
Timer3.Enabled = True
End If
End Sub

Private Sub Timer3_Timer()
If Shape1.Top <= 5760 Then
Shape1.Top = Shape1.Top + 100
Else
Shape1.Left = Shape1.Left + 100
End If
If Shape1.Left >= 3960 Then
Timer3.Enabled = False
Timer4.Enabled = True
End If
End Sub

Private Sub Timer4_Timer()
If Shape1.Top >= 120 Then
Shape1.Top = Shape1.Top - 100
Else
Shape1.Left = Shape1.Left + 100
End If
If Shape1.Left >= 5400 Then
Timer4.Enabled = False
Timer5.Enabled = True
End If
End Sub

Private Sub Timer5_Timer()
If Shape1.Top <= 5760 Then
Shape1.Top = Shape1.Top + 100
Else
Shape1.Left = Shape1.Left + 100
End If
If Shape1.Left >= 6600 Then
Timer5.Enabled = False
Timer6.Enabled = True
End If
End Sub

Private Sub Timer6_Timer()
If Shape1.Top >= 120 Then
Shape1.Top = Shape1.Top - 100
Else
Shape1.Left = Shape1.Left + 100
End If
If Shape1.Left >= 7920 Then
Timer6.Enabled = False
End If
End Sub
