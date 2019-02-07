B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=7
@EndOfDesignText@
#IgnoreWarnings: 12

Sub Class_Globals
	
	Private BANano As BANano 'ignore
	
	Private nw As BANanoObject
	
	Private currentWindow As BANanoObject
	
End Sub

Public Sub Initialize
	
	nw.Initialize("nw")

	currentWindow = nw.GetField("Window").RunMethod("get", Null)
	
End Sub

'
'Get the current window
'
'<link>NodeJS Documentation|http://docs.nwjs.io/en/latest/References/Window/#windowgetwindow_object</link>
Sub Get() As BANanoObject
	Return nw.GetField("Window").RunMethod("get", Null).Result
End Sub

'
'Get the corresponding DOM window object of the native window.
'
'http://docs.nwjs.io/en/latest/References/Window/#winwindow
Sub Window() As Map
	Return currentWindow.GetField("window").Result
End Sub

'
'Get or set left offset from window to screen.
'
'<link>NodeJS Documentation|http://docs.nwjs.io/en/latest/References/Window/#winx</link>
Sub setX(X As Int)
	currentWindow.setField("x", X)
End Sub
Sub getX() As Int
	Return currentWindow.GetField("x").Result
End Sub

'
'Get or set top offset from window to screen.
'
'<link>NodeJS Documentation|http://docs.nwjs.io/en/latest/References/Window/#winy</link>
Sub setY(Y As Int)
	currentWindow.setField("y", Y)
End Sub
Sub getY() As Int
	Return currentWindow.GetField("y").Result
End Sub

'
'Get or set the window width
'
'<link>NodeJS Documentation|http://docs.nwjs.io/en/latest/References/Window/#winwidth</link>
Sub setWidth(Width As Int)
	currentWindow.setField("width", Width)
End Sub
Sub getWidth() As Int
	Return currentWindow.GetField("width").Result
End Sub

'
'Get or set the window height
'
'<link>NodeJS Documentation|http://docs.nwjs.io/en/latest/References/Window/#winheight</link>
Sub setHeight(Height As Int)
	currentWindow.setField("height", Height)
End Sub
Sub getHeight() As Int
	Return currentWindow.GetField("height").Result
End Sub

'
'Get or set the window title
'
'<link>NodeJS Documentation|http://docs.nwjs.io/en/latest/References/Window/#wintitle</link>
Sub setTitle(Title As String)
	
	' currentWindow.setField("title", Title) ' doesn't work

	' fix: use document.title:
	Dim Document As BANanoObject
	Document.Initialize("document")
	Document.SetField("title", Title)

End Sub
Sub getTitle() As String
	Return currentWindow.GetField("title").Result
End Sub

'
'Moves a windows left and top edge to the specified coordinates.
'
'<link>NodeJS Documentation|http://docs.nwjs.io/en/latest/References/Window/#winmovetox-y</link>
Sub MoveTo(X As Int, Y As Int)
	currentWindow.RunMethod("moveTo", Array(X, Y))
End Sub

'
'Moves a window a specified number of pixels relative to its current coordinates.
'
'<link>NodeJS Documentation|http://docs.nwjs.io/en/latest/References/Window/#winmovebyx-y</link>
Sub MoveBy(X As Int, Y As Int)
	currentWindow.RunMethod("moveBy", Array(X, Y))
End Sub

'
'Resizes a window to the specified width and height.
'
'<link>NodeJS Documentation|http://docs.nwjs.io/en/latest/References/Window/#winresizetowidth-height</link>
Sub ResizeTo(Width As Int, Height As Int)
	currentWindow.RunMethod("resizeTo", Array(Width, Height))
End Sub

'
'Resizes a window by the specified amount.
'
'<link>NodeJS Documentation|http://docs.nwjs.io/en/latest/References/Window/#winresizebywidth-height</link>
Sub ResizeBy(Width As Int, Height As Int)
	currentWindow.RunMethod("resizeBy", Array(Width, Height))
End Sub

'
'Focus on the window.
'
'<link>NodeJS Documentation|http://docs.nwjs.io/en/latest/References/Window/#winfocus</link>
Sub Focus()
	currentWindow.RunMethod("focus", Null)
End Sub

'
'Move focus away. Usually it will move focus to other windows of your app, since on some platforms there is no concept of blur.
'
'<link>NodeJS Documentation|http://docs.nwjs.io/en/latest/References/Window/#winblur</link>
Sub Blur()
	currentWindow.RunMethod("blur", Null)
End Sub

'
'Show the window if it’s not shown.
'
'<link>NodeJS Documentation|http://docs.nwjs.io/en/latest/References/Window/#winshowis_show</link>
Sub Show()
	currentWindow.RunMethod("show", Null)
End Sub

'
'Hide the window. User will not be able to find the window once it’s hidden.
'
'<link>NodeJS Documentation|http://docs.nwjs.io/en/latest/References/Window/#winhide</link>
Sub Hide()
	currentWindow.RunMethod("hide", Null)
End Sub

'
'Closes the current window. You can prevent the closing by listening to the close event. If force is specified and equals true, then the close event will be ignored.
'
'<link>NodeJS Documentation|http://docs.nwjs.io/en/latest/References/Window/#wincloseforce</link>
Sub Close(Force As Boolean)
	currentWindow.RunMethod("close", Force)
End Sub

'
'Reloads the current window.
'
'<link>NodeJS Documentation|http://docs.nwjs.io/en/latest/References/Window/#winreload</link>
Sub Reload()
	currentWindow.RunMethod("reload", Null)
End Sub

'
'Reloads the current page by starting a new renderer process from scratch.
'
'<link>NodeJS Documentation|http://docs.nwjs.io/en/latest/References/Window/#winreloadignoringcache</link>
Sub ReloadIgnoringCache()
	currentWindow.RunMethod("reloadIgnoringCache", Null)
End Sub

'
'Maximize the window on GTK and Windows, and zoom the window on Mac OS X.
'
'<link>NodeJS Documentation|http://docs.nwjs.io/en/latest/References/Window/#winmaximize</link>
Sub Maximize()
	currentWindow.RunMethod("maximize", Null)
End Sub

'
'Unmaximize the window, i.e. the reverse of maximize().
'
'<link>NodeJS Documentation|http://docs.nwjs.io/en/latest/References/Window/#winunmaximize</link>
Sub Unmaximize()
	currentWindow.RunMethod("unmaximize", Null)
End Sub

'
'Minimize the window to task bar on Windows, iconify the window on GTK, and miniaturize the window on Mac OS X.
'
'<link>NodeJS Documentation|http://docs.nwjs.io/en/latest/References/Window/#winminimize</link>
Sub Minimize()
	currentWindow.RunMethod("minimize", Null)
End Sub

'
'Restore window to previous state after the window is minimized, i.e. the reverse of minimize(). It’s not named unminimize since restore is used commonly.
'
'<link>NodeJS Documentation|http://docs.nwjs.io/en/latest/References/Window/#winrestore</link>
Sub Restore()
	currentWindow.RunMethod("restore", Null)
End Sub

'
'Make the window fullscreen.
'
'<link>NodeJS Documentation|http://docs.nwjs.io/en/latest/References/Window/#winenterfullscreen</link>
Sub EnterFullscreen()
	currentWindow.RunMethod("enterFullscreen", Null)
End Sub

'
'Leave the fullscreen mode.
'
'<link>NodeJS Documentation|http://docs.nwjs.io/en/latest/References/Window/#winleavefullscreen</link>
Sub LeaveFullscreen()
	currentWindow.RunMethod("leaveFullscreen", Null)
End Sub

'
'Toggle the fullscreen mode.
'
'<link>NodeJS Documentation|http://docs.nwjs.io/en/latest/References/Window/#wintogglefullscreen</link>
Sub ToggleFullscreen()
	currentWindow.RunMethod("toggleFullscreen", Null)
End Sub

'
'Enter the Kiosk mode. In Kiosk mode, the app will be fullscreen and try to prevent users
'from leaving the app, so you should remember to provide a way in app to leave Kiosk mode.
'This mode is mainly used for presentation on public displays.
'
'<link>NodeJS Documentation|http://docs.nwjs.io/en/latest/References/Window/#winenterkioskmode</link>
Sub EnterKioskMode()
	currentWindow.RunMethod("enterKioskMode", Null)
End Sub

'
'Leave the Kiosk mode.
'
'<link>NodeJS Documentation|http://docs.nwjs.io/en/latest/References/Window/#winleavekioskmode</link>
Sub LeaveKioskMode()
	currentWindow.RunMethod("leaveKioskMode", Null)
End Sub

'
'Toggle the kiosk mode.
'
'<link>NodeJS Documentation|http://docs.nwjs.io/en/latest/References/Window/#wintogglekioskmode</link>
Sub ToggleKioskMode()
	currentWindow.RunMethod("toggleKioskMode", Null)
End Sub

'
'Enumerate the printers in the system.
'The callback function will receive an array of JSON objects for the printer information.
'The device name of the JSON object can be used as parameter in nw.Window.print().
'
'<link>NodeJS Documentation|http://docs.nwjs.io/en/latest/References/Window/#wingetprinterscallback</link>
Sub GetPrinters(Callback As Object)
	currentWindow.RunMethod("getPrinters", Callback)
End Sub

'
'Print the web contents in the window with or without the need for user’s interaction. options is a JSON object with the following fields:
'
'* autoprint {Boolean} whether to print without the need for user’s interaction; optional, true by default
'* printer {String} the device name of the printer returned by nw.Window.getPrinters(); No need to set this when printing to PDF
'* pdf_path {String} the path of the output PDF when printing to PDF
'* headerFooterEnabled {Boolean} whether to enable header and footer
'* landscape {Boolean} whether to use landscape or portrait
'* mediaSize {JSON Object} the paper size spec
'* shouldPrintBackgrounds {Boolean} whether to print CSS backgrounds
'* marginsType {Integer} 0 - Default; 1 - No margins; 2 - minimum; 3 - Custom, see marginsCustom.
'* marginsCustom {JSON Object} the custom margin setting; units are points.
'* copies {Integer} the number of copies to print.
'* scaleFactor {Integer} the scale factor; 100 is the default.
'* headerString {String} string to replace the URL in the header.
'* footerString {String} string to replace the URL in the footer.
'* marginsCustom example: "marginsCustom":{"marginBottom":54,"marginLeft":70,"marginRight":28,"marginTop":32}
'* mediaSize example: 'mediaSize':{'name': 'CUSTOM', 'width_microns': 279400, 'height_microns': 215900, 'custom_display_name':'Letter', 'is_default': true}
'
'NOTE: If no options are being passed, win.print({}) is what should be called.
'
'<link>NodeJS Documentation|http://docs.nwjs.io/en/latest/References/Window/#wingetprinterscallback</link>
Sub Print(Options As Map)
	currentWindow.RunMethod("print", Options)
End Sub

'
'Set windows maximum size.
'
'<link>NodeJS Documentation|http://docs.nwjs.io/en/latest/References/Window/#winsetmaximumsizewidth-height</link>
Sub SetMaximumSize(Width As Int, Height As Int)
	currentWindow.RunMethod("setMaximumSize", Array(Width, Height))
End Sub

'
'Set windows minimum size.
'
'<link>NodeJS Documentation|http://docs.nwjs.io/en/latest/References/Window/#winsetminimumsizewidth-height</link>
Sub SetMinimumSize(Width As Int, Height As Int)
	currentWindow.RunMethod("setMinimumSize", Array(Width, Height))
End Sub

'
'Set whether window is resizable.
'
'<link>NodeJS Documentation|http://docs.nwjs.io/en/latest/References/Window/#winsetresizableresizable</link>
Sub SetResizable(Resizable As Boolean)
	currentWindow.RunMethod("setResizable", Resizable)
End Sub

'
'Sets the widget to be on top of all other windows in the window system.
'
'<link>NodeJS Documentation|http://docs.nwjs.io/en/latest/References/Window/#winsetalwaysontoptop</link>
Sub SetAlwaysOnTop(AlwaysOnTop As Boolean)
	currentWindow.RunMethod("setAlwaysOnTop", AlwaysOnTop)
End Sub

'
'Control whether to show window in taskbar or dock. See also show_in_taskbar in Manifest-format.
'
'<link>NodeJS Documentation|http://docs.nwjs.io/en/latest/References/Window/#winsetprogressbarprogress</link>
Sub SetShowInTaskbar(ShowInTaskbar As Boolean)
	currentWindow.RunMethod("setShowInTaskbar", ShowInTaskbar)
End Sub

'
'Open the devtools to inspect the window.
'
'<link>NodeJS Documentation|http://docs.nwjs.io/en/latest/References/Window/#winshowdevtoolsiframe-callback</link>
Sub ShowDevTools()
	currentWindow.RunMethod("showDevTools", Null)
End Sub

'
'Close the devtools window.
'
'<link>NodeJS Documentation|http://docs.nwjs.io/en/latest/References/Window/#winclosedevtools</link>
Sub CloseDevTools()
	currentWindow.RunMethod("closeDevTools", Null)
End Sub