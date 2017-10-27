[Setup]
SignTool=signtool
AppId={{1A776A84-EAC6-4A33-90A8-66BDE4DA59C7}
AppName=Scoriet Generator
AppVerName=Scoriet 1.0.0
AppVersion=1.0.0
VersionInfoVersion=1.0.0
AppPublisher=Systemhaus Predl IT-GmbH
AppPublisherURL=http://www.scoriet.com
AppSupportURL=http://www.scoriet.com
AppUpdatesURL=http://www.scoriet.com
AppCopyright=Systemhaus Predl IT-GmbH
DefaultDirName={pf}\Scoriet
DefaultGroupName=Scoriet
LicenseFile=D:\WdTemp19\Scoriet\Exe\Scoriet.txt
AppendDefaultDirName=no
SetupIconFile=D:\WdTemp19\Scoriet\code.ico
Compression=lzma
SolidCompression=yes
ShowLanguageDialog=true
ArchitecturesAllowed=x64
ArchitecturesInstallIn64BitMode=x64
OutputDir=D:\WdTemp19\Scoriet\InnoSetup\Output
OutputBaseFilename=Scoriet_Setup_64_1.0.0

[Components]
Name: "conv";         Description: "Daten Update";              Types: full compact custom; Flags: checkablealone disablenouninstallwarning
Name: "data";         Description: "Demo Daten";                Types: custom;              Flags: checkablealone disablenouninstallwarning
Name: "templates";    Description: "Templates";                 Types: custom;              Flags: checkablealone disablenouninstallwarning

[Languages]
Name: de; MessagesFile: "compiler:Languages\German.isl"
Name: en; MessagesFile: "compiler:Languages\English.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"
Name: "quicklaunchicon"; Description: "{cm:CreateQuickLaunchIcon}"; GroupDescription: "{cm:AdditionalIcons}"

[Dirs]
Name: "{userdocs}\Scoriet"; Permissions: everyone-full

[Files]
Source: "D:\WdTemp19\Scoriet\Exe\Scoriet.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "D:\WdTemp19\Scoriet\Exe\Scoriet_EN.chm"; DestDir: "{app}"; Flags: ignoreversion
Source: "D:\WdTemp19\Scoriet\Exe\Scoriet_DE.chm"; DestDir: "{app}"; Flags: ignoreversion
Source: "D:\WdTemp19\Scoriet\Exe\Scoriet.txt"; DestDir: "{app}"; Flags: ignoreversion
Source: "D:\WdTemp19\Scoriet\Scoriet.ana\Scoriet.wdd"; DestDir: "{app}"; Flags: ignoreversion
Source: "D:\WdTemp19\Scoriet\Exe\libmySQL.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "D:\Eigene Dateien\Scoriet\Data\GenerationType.fic"; DestDir: "{userdocs}\Scoriet\data"; Components: data; Flags: ignoreversion onlyifdoesntexist uninsneveruninstall
Source: "D:\Eigene Dateien\Scoriet\Data\GenerationType.ndx"; DestDir: "{userdocs}\Scoriet\data"; Components: data; Flags: ignoreversion onlyifdoesntexist uninsneveruninstall
Source: "D:\Eigene Dateien\Scoriet\Data\Language.fic"; DestDir: "{userdocs}\Scoriet\data"; Components: data; Flags: ignoreversion onlyifdoesntexist uninsneveruninstall
Source: "D:\Eigene Dateien\Scoriet\Data\Language.ndx"; DestDir: "{userdocs}\Scoriet\data"; Components: data; Flags: ignoreversion onlyifdoesntexist uninsneveruninstall
Source: "D:\Eigene Dateien\Scoriet\Data\Template.FIC"; DestDir: "{userdocs}\Scoriet\data"; Components: data; Flags: ignoreversion onlyifdoesntexist uninsneveruninstall
Source: "D:\Eigene Dateien\Scoriet\Data\Template.ndx"; DestDir: "{userdocs}\Scoriet\data"; Components: data; Flags: ignoreversion onlyifdoesntexist uninsneveruninstall
Source: "D:\Eigene Dateien\Scoriet\Data\TemplatePage.FIC"; DestDir: "{userdocs}\Scoriet\data"; Components: data; Flags: ignoreversion onlyifdoesntexist uninsneveruninstall
Source: "D:\Eigene Dateien\Scoriet\Data\TemplatePage.ndx"; DestDir: "{userdocs}\Scoriet\data"; Components: data; Flags: ignoreversion onlyifdoesntexist uninsneveruninstall
Source: "D:\Eigene Dateien\Scoriet\Templates\*"; DestDir: "{userdocs}\Scoriet\Templates"; Components: templates; Flags: ignoreversion onlyifdoesntexist uninsneveruninstall recursesubdirs
Source: "D:\WinDev 19\Programs\Framework\Win32x86\WD190ACTION.DLL"; DestDir: "{app}"; Flags: ignoreversion
Source: "D:\WinDev 19\Programs\Framework\Win32x86\WD190BARC.DLL"; DestDir: "{app}"; Flags: ignoreversion
Source: "D:\WinDev 19\Programs\Framework\Win32x86\WD190COD.DLL"; DestDir: "{app}"; Flags: ignoreversion
Source: "D:\WinDev 19\Programs\Framework\Win32x86\WD190COM.DLL"; DestDir: "{app}"; Flags: ignoreversion
Source: "D:\WinDev 19\Programs\Framework\Win32x86\WD190CPL.DLL"; DestDir: "{app}"; Flags: ignoreversion
Source: "D:\WinDev 19\Programs\Framework\Win32x86\WD190DB.DLL"; DestDir: "{app}"; Flags: ignoreversion
Source: "D:\WinDev 19\Programs\Framework\Win32x86\WD190ETAT.DLL"; DestDir: "{app}"; Flags: ignoreversion
Source: "D:\WinDev 19\Programs\Framework\Win32x86\WD190GRF.DLL"; DestDir: "{app}"; Flags: ignoreversion
Source: "D:\WinDev 19\Programs\Framework\Win32x86\WD190GPU.DLL"; DestDir: "{app}"; Flags: ignoreversion
Source: "D:\WinDev 19\Programs\Framework\Win32x86\WD190HF.DLL"; DestDir: "{app}"; Flags: ignoreversion
Source: "D:\WinDev 19\Programs\Framework\Win32x86\WD190HTML.DLL"; DestDir: "{app}"; Flags: ignoreversion
Source: "D:\WinDev 19\Programs\Framework\Win32x86\WD190IMG.DLL"; DestDir: "{app}"; Flags: ignoreversion
Source: "D:\WinDev 19\Programs\Framework\Win32x86\WD190MAT.DLL"; DestDir: "{app}"; Flags: ignoreversion
Source: "D:\WinDev 19\Programs\Framework\Win32x86\WD190MESS.DLL"; DestDir: "{app}"; Flags: ignoreversion
Source: "D:\WinDev 19\Programs\Framework\Win32x86\WD190MSQL.DLL"; DestDir: "{app}"; Flags: ignoreversion
Source: "D:\WinDev 19\Programs\Framework\Win32x86\WD190OBJ.DLL"; DestDir: "{app}"; Flags: ignoreversion
Source: "D:\WinDev 19\Programs\Framework\Win32x86\WD190OLDB.DLL"; DestDir: "{app}"; Flags: ignoreversion
Source: "D:\WinDev 19\Programs\Framework\Win32x86\WD190OLE.DLL"; DestDir: "{app}"; Flags: ignoreversion
Source: "D:\WinDev 19\Programs\Framework\Win32x86\WD190PDF.DLL"; DestDir: "{app}"; Flags: ignoreversion
Source: "D:\WinDev 19\Programs\Framework\Win32x86\WD190PNT.DLL"; DestDir: "{app}"; Flags: ignoreversion
Source: "D:\WinDev 19\Programs\Framework\Win32x86\WD190PRN.DLL"; DestDir: "{app}"; Flags: ignoreversion
Source: "D:\WinDev 19\Programs\Framework\Win32x86\WD190RTF.DLL"; DestDir: "{app}"; Flags: ignoreversion
Source: "D:\WinDev 19\Programs\Framework\Win32x86\WD190SQL.DLL"; DestDir: "{app}"; Flags: ignoreversion
Source: "D:\WinDev 19\Programs\Framework\Win32x86\WD190STD.DLL"; DestDir: "{app}"; Flags: ignoreversion
Source: "D:\WinDev 19\Programs\Framework\Win32x86\WD190TEST.DLL"; DestDir: "{app}"; Flags: ignoreversion
Source: "D:\WinDev 19\Programs\Framework\Win32x86\WD190TRS.DLL"; DestDir: "{app}"; Flags: ignoreversion
Source: "D:\WinDev 19\Programs\Framework\Win32x86\WD190UNI.DLL"; DestDir: "{app}"; Flags: ignoreversion
Source: "D:\WinDev 19\Programs\Framework\Win32x86\WD190VM.DLL"; DestDir: "{app}"; Flags: ignoreversion
Source: "D:\WinDev 19\Programs\Framework\Win32x86\WD190XLS.DLL"; DestDir: "{app}"; Flags: ignoreversion
Source: "D:\WinDev 19\Programs\Framework\Win32x86\WD190XML.DLL"; DestDir: "{app}"; Flags: ignoreversion
Source: "D:\WinDev 19\Programs\Framework\Win32x86\WD190ZIP.DLL"; DestDir: "{app}"; Flags: ignoreversion
Source: "D:\WinDev 19\Programs\WDOutil.wdk"; DestDir: "{app}"; Flags: ignoreversion
Source: "D:\WinDev 19\Programs\WDMod190.DLL"; DestDir: "{app}"; Flags: ignoreversion
Source: "D:\WinDev 19\Programs\WDMAP.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "D:\WinDev 19\Programs\WDModFic.EXE"; DestDir: "{app}"; Flags: ignoreversion

Source: "D:\WinDev 19\Programs\Framework\Win64x86\wd190action64.DLL"; DestDir: "{app}"; Flags: ignoreversion
Source: "D:\WinDev 19\Programs\Framework\Win64x86\wd190com64.DLL"; DestDir: "{app}"; Flags: ignoreversion
Source: "D:\WinDev 19\Programs\Framework\Win64x86\wd190cpl64.DLL"; DestDir: "{app}"; Flags: ignoreversion
Source: "D:\WinDev 19\Programs\Framework\Win64x86\wd190etat64.DLL"; DestDir: "{app}"; Flags: ignoreversion
Source: "D:\WinDev 19\Programs\Framework\Win64x86\wd190gpu64.DLL"; DestDir: "{app}"; Flags: ignoreversion
Source: "D:\WinDev 19\Programs\Framework\Win64x86\wd190grf64.DLL"; DestDir: "{app}"; Flags: ignoreversion
Source: "D:\WinDev 19\Programs\Framework\Win64x86\wd190hf64.DLL"; DestDir: "{app}"; Flags: ignoreversion
Source: "D:\WinDev 19\Programs\Framework\Win64x86\wd190html64.DLL"; DestDir: "{app}"; Flags: ignoreversion
Source: "D:\WinDev 19\Programs\Framework\Win64x86\wd190img64.DLL"; DestDir: "{app}"; Flags: ignoreversion
Source: "D:\WinDev 19\Programs\Framework\Win64x86\wd190mat64.DLL"; DestDir: "{app}"; Flags: ignoreversion
Source: "D:\WinDev 19\Programs\Framework\Win64x86\WD190MSQL64.DLL"; DestDir: "{app}"; Flags: ignoreversion
Source: "D:\WinDev 19\Programs\Framework\Win64x86\wd190obj64.DLL"; DestDir: "{app}"; Flags: ignoreversion
Source: "D:\WinDev 19\Programs\Framework\Win64x86\wd190oldb64.DLL"; DestDir: "{app}"; Flags: ignoreversion
Source: "D:\WinDev 19\Programs\Framework\Win64x86\wd190ole64.DLL"; DestDir: "{app}"; Flags: ignoreversion
Source: "D:\WinDev 19\Programs\Framework\Win64x86\wd190pdf64.DLL"; DestDir: "{app}"; Flags: ignoreversion
Source: "D:\WinDev 19\Programs\Framework\Win64x86\wd190pnt64.DLL"; DestDir: "{app}"; Flags: ignoreversion
Source: "D:\WinDev 19\Programs\Framework\Win64x86\wd190prn64.DLL"; DestDir: "{app}"; Flags: ignoreversion
Source: "D:\WinDev 19\Programs\Framework\Win64x86\wd190rtf64.DLL"; DestDir: "{app}"; Flags: ignoreversion
Source: "D:\WinDev 19\Programs\Framework\Win64x86\wd190sql64.DLL"; DestDir: "{app}"; Flags: ignoreversion
Source: "D:\WinDev 19\Programs\Framework\Win64x86\wd190std64.DLL"; DestDir: "{app}"; Flags: ignoreversion
Source: "D:\WinDev 19\Programs\Framework\Win64x86\wd190test64.DLL"; DestDir: "{app}"; Flags: ignoreversion
Source: "D:\WinDev 19\Programs\Framework\Win64x86\wd190uni64.DLL"; DestDir: "{app}"; Flags: ignoreversion
Source: "D:\WinDev 19\Programs\Framework\Win64x86\wd190vm64.DLL"; DestDir: "{app}"; Flags: ignoreversion
Source: "D:\WinDev 19\Programs\Framework\Win64x86\wd190xls64.DLL"; DestDir: "{app}"; Flags: ignoreversion
Source: "D:\WinDev 19\Programs\Framework\Win64x86\wd190xml64.DLL"; DestDir: "{app}"; Flags: ignoreversion
Source: "D:\WinDev 19\Programs\Framework\Win64x86\wd190zip64.DLL"; DestDir: "{app}"; Flags: ignoreversion

[Icons]
Name: "{group}\Scoriet"; Filename: "{app}\Scoriet.exe"
Name: "{group}\{cm:ProgramOnTheWeb,Scoriet}"; Filename: "http://www.scoriet.com"
Name: "{group}\{cm:UninstallProgram,Scoriet}"; Filename: "{uninstallexe}"
Name: "{commondesktop}\Scoriet"; Filename: "{app}\Scoriet.exe"; Tasks: desktopicon
Name: "{userappdata}\Microsoft\Internet Explorer\Quick Launch\Scoriet"; Filename: "{app}\Scoriet.exe"; Tasks: quicklaunchicon

[Run]
Filename: "{app}\WDModFic.EXE"; WorkingDir: "{app}"; Parameters: "-subdir -nobackup /WDD=""{app}\Scoriet.wdd"" /DIR=""{userdocs}\Scoriet\data"""
Filename: "{app}\Scoriet.exe"; Description: Start the application; Flags: postinstall skipifsilent unchecked
