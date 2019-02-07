B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=7
@EndOfDesignText@
'Custom BANano View class

' Events:
#Event: Click (event As BANanoEvent)

' Properties:
#DesignerProperty: Key: Classes, DisplayName: Classes, FieldType: String, DefaultValue: , Description: Classes added to the HTML tag.
#DesignerProperty: Key: Style, DisplayName: Style, FieldType: String, DefaultValue: , Description: Styles added to the HTML tag. Must be a json String.
#DesignerProperty: Key: MarginLeft, DisplayName: Margin Left, FieldType: String, DefaultValue: , Description: Margin Left
#DesignerProperty: Key: MarginRight, DisplayName: Margin Right, FieldType: String, DefaultValue: , Description: Margin Right
#DesignerProperty: Key: MarginTop, DisplayName: Margin Top, FieldType: String, DefaultValue: , Description: Margin Top
#DesignerProperty: Key: MarginBottom, DisplayName: Margin Bottom, FieldType: String, DefaultValue: , Description: Margin Bottom
#DesignerProperty: Key: PaddingLeft, DisplayName: Padding Left, FieldType: String, DefaultValue: , Description: Padding Left
#DesignerProperty: Key: PaddingRight, DisplayName: Padding Right, FieldType: String, DefaultValue: , Description: Padding Right
#DesignerProperty: Key: PaddingTop, DisplayName: Padding Top, FieldType: String, DefaultValue: , Description: Padding Top
#DesignerProperty: Key: PaddingBottom, DisplayName: Padding Bottom, FieldType: String, DefaultValue: , Description: Padding Bottom
#DesignerProperty: Key: TagName, DisplayName: TagName, FieldType: String, DefaultValue: div, Description: Tagname
#DesignerProperty: Key: Text, DisplayName: Text, FieldType: String, DefaultValue: , Description: Text

Sub Class_Globals
	
	Private BANano As BANano 'ignore
	Private mName As String 'ignore
	Private mEventName As String 'ignore
	Private mCallBack As Object 'ignore
	Private mTarget As BANanoElement 'ignore
	Private mElement As BANanoElement 'ignore
	
	Private mClasses As String = ""
	Private mStyle As String = ""
	Private mStyle As String = ""
	Private mTagName As String = ""
	Private mText As String = ""
	Private mMarginLeft As String = ""
	Private mMarginRight As String = ""
	Private mMarginTop As String = ""
	Private mMarginBottom As String = ""
	Private mPaddingLeft As String = ""
	Private mPaddingRight As String = ""
	Private mPaddingTop As String = ""
	Private mPaddingBottom As String = ""
	
End Sub

Public Sub Initialize (CallBack As Object, Name As String, EventName As String)
	
	mName      = Name
	mEventName = EventName.ToLowerCase
	mCallBack  = CallBack
	
End Sub

Public Sub DesignerCreateView (Target As BANanoElement, Props As Map)
	
	mTarget = Target

	If Props <> Null Then
		
		mClasses       = Props.Get("Classes")
		mStyle         = Props.Get("Style")
		mTagName       = Props.Get("TagName")
		mText          = Props.Get("Text")
		
		mMarginLeft    = Props.Get("MarginLeft")
		mMarginRight   = Props.Get("MarginRight")
		mMarginTop     = Props.Get("MarginTop")
		mMarginBottom  = Props.Get("MarginBottom")
		mPaddingLeft   = Props.Get("PaddingLeft")
		mPaddingRight  = Props.Get("PaddingRight")
		mPaddingTop    = Props.Get("PaddingTop")
		mPaddingBottom = Props.Get("PaddingBottom")
		
	End If
	
	mElement = mTarget.Append($"<${mTagName} id="${mName}" ${BuildStyle}>${mText}</${mTagName}>"$).Get("#" & mName)
		
	mElement.AddClass(mClasses)
		
	' Events:
	
	mElement.HandleEvents("click", mCallBack, mEventName & "_click")
	
End Sub

Public Sub AddToParent(targetID As String)
	mTarget = BANano.GetElement("#" & targetID.ToLowerCase)
	DesignerCreateView(mTarget, Null)
End Sub

Public Sub Remove()
	mTarget.Empty
	BANano.SetMeToNull
End Sub

Public Sub Trigger(event As String, params() As String)
	If mElement <> Null Then
		mElement.Trigger(event, params)
	End If
End Sub

Private Sub BuildStyle() As String
	
	Dim sb As StringBuilder
	
	sb.Initialize
	
	If mStyle<> "" Then
		If mStyle.EndsWith(";") Then
			sb.Append(mStyle)
		Else
			sb.Append(mStyle & ";")
		End If
	End If
	
	If mMarginLeft    <> "" Then sb.Append("margin-left: "    & mMarginLeft & ";")
	If mMarginRight   <> "" Then sb.Append("margin-right: "   & mMarginRight & ";")
	If mMarginTop     <> "" Then sb.Append("margin-top: "     & mMarginTop & ";")
	If mMarginBottom  <> "" Then sb.Append("margin-bottom: "  & mMarginBottom & ";")
	If mPaddingLeft   <> "" Then sb.Append("padding-left: "   & mPaddingLeft & ";")
	If mPaddingRight  <> "" Then sb.Append("padding-right: "  & mPaddingRight & ";")
	If mPaddingTop    <> "" Then sb.Append("padding-top: "    & mPaddingTop & ";")
	If mPaddingBottom <> "" Then sb.Append("padding-bottom: " & mPaddingBottom & ";")
	
	If sb.ToString <> "" Then
		Return $" style="${sb.ToString}" "$
	End If
	
	Return ""
	
End Sub

#Region Property Getters and Setters

Public Sub setClasses(Classes As String)
	If mElement <> Null Then
		mElement.AddClass(Classes)
	End If
	mClasses = Classes
End Sub

Public Sub getClasses() As String
	Return mClasses
End Sub

' must be a json string
' e.g. $"{ "width": "200px", "height": "200px", "background": "green", "border-radius": "5px" }"$
Public Sub setStyle(Style As String)
	If mElement <> Null Then
		mElement.SetStyle(Style)
	End If
	mStyle = Style
End Sub

Public Sub getStyle() As String
	Return mStyle
End Sub

Public Sub setText(Text As String)
	mElement.SetText(Text)
End Sub
Public Sub getText() As String
	Return mElement.GetText
End Sub

Public Sub setHtml(Html As String)
	mElement.SetHTML(Html)
End Sub
Public Sub getHtml() As String
	Return mElement.GetHtml
End Sub

#End Region

#Region Internal Events

#End Region

