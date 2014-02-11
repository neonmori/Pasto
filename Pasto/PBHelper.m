//
//  PBHelper.m
//  Pasto
//
//  Created by Ke Yang on 10/2/13.
//  Copyright (c) 2013 Pyrus. All rights reserved.
//

#import "PBHelper.h"

@implementation PBHelper
+ (NSString *) urlEncode:(NSString *) url{
    return (NSString *)CFBridgingRelease(
                                         CFURLCreateStringByAddingPercentEscapes(
                                                                                 NULL,
                                                                                 (__bridge CFStringRef) url,
                                                                                 NULL,
                                                                                 CFSTR("!*'();:@&=+$,/?%#[]"),
                                                                                 kCFStringEncodingUTF8
                                                                                 )
                                         );
}

+ (NSDictionary *) PBSyntaxDict{
    static NSDictionary* fooDict = nil;
    if (fooDict == nil) {
        fooDict = @{
                    @"4cs":@"4CS",
                    @"6502acme":@"6502 ACME Cross Assembler",
                    @"6502kickass":@"6502 Kick Assembler",
                    @"6502tasm":@"6502 TASM/64TASS",
                    @"abap":@"ABAP",
                    @"actionscript":@"ActionScript",
                    @"actionscript3":@"ActionScript 3",
                    @"ada":@"Ada",
                    @"algol68":@"ALGOL 68",
                    @"apache":@"Apache Log",
                    @"applescript":@"AppleScript",
                    @"apt_sources":@"APT Sources",
                    @"arm":@"ARM",
                    @"asm":@"ASM (NASM)",
                    @"asp":@"ASP",
                    @"asymptote":@"Asymptote",
                    @"autoconf":@"autoconf",
                    @"autohotkey":@"Autohotkey",
                    @"autoit":@"AutoIt",
                    @"avisynth":@"Avisynth",
                    @"awk":@"Awk",
                    @"bascomavr":@"BASCOM AVR",
                    @"bash":@"Bash",
                    @"basic4gl":@"Basic4GL",
                    @"bibtex":@"BibTeX",
                    @"blitzbasic":@"Blitz Basic",
                    @"bnf":@"BNF",
                    @"boo":@"BOO",
                    @"bf":@"BrainFuck",
                    @"c":@"C",
                    @"c_mac":@"C for Macs",
                    @"cil":@"C Intermediate Language",
                    @"csharp":@"C#",
                    @"cpp":@"C++",
                    @"cpp-qt":@"C++ (with QT extensions)",
                    @"c_loadrunner":@"C: Loadrunner",
                    @"caddcl":@"CAD DCL",
                    @"cadlisp":@"CAD Lisp",
                    @"cfdg":@"CFDG",
                    @"chaiscript":@"ChaiScript",
                    @"clojure":@"Clojure",
                    @"klonec":@"Clone C",
                    @"klonecpp":@"Clone C++",
                    @"cmake":@"CMake",
                    @"cobol":@"COBOL",
                    @"coffeescript":@"CoffeeScript",
                    @"cfm":@"ColdFusion",
                    @"css":@"CSS",
                    @"cuesheet":@"Cuesheet",
                    @"d":@"D",
                    @"dcl":@"DCL",
                    @"dcpu16":@"DCPU-16",
                    @"dcs":@"DCS",
                    @"delphi":@"Delphi",
                    @"oxygene":@"Delphi Prism (Oxygene)",
                    @"diff":@"Diff",
                    @"div":@"DIV",
                    @"dos":@"DOS",
                    @"dot":@"DOT",
                    @"e":@"E",
                    @"ecmascript":@"ECMAScript",
                    @"eiffel":@"Eiffel",
                    @"email":@"Email",
                    @"epc":@"EPC",
                    @"erlang":@"Erlang",
                    @"fsharp":@"F#",
                    @"falcon":@"Falcon",
                    @"fo":@"FO Language",
                    @"f1":@"Formula One",
                    @"fortran":@"Fortran",
                    @"freebasic":@"FreeBasic",
                    @"freeswitch":@"FreeSWITCH",
                    @"gambas":@"GAMBAS",
                    @"gml":@"Game Maker",
                    @"gdb":@"GDB",
                    @"genero":@"Genero",
                    @"genie":@"Genie",
                    @"gettext":@"GetText",
                    @"go":@"Go",
                    @"groovy":@"Groovy",
                    @"gwbasic":@"GwBasic",
                    @"haskell":@"Haskell",
                    @"haxe":@"Haxe",
                    @"hicest":@"HicEst",
                    @"hq9plus":@"HQ9 Plus",
                    @"html4strict":@"HTML",
                    @"html5":@"HTML 5",
                    @"icon":@"Icon",
                    @"idl":@"IDL",
                    @"ini":@"INI file",
                    @"inno":@"Inno Script",
                    @"intercal":@"INTERCAL",
                    @"io":@"IO",
                    @"j":@"J",
                    @"java":@"Java",
                    @"java5":@"Java 5",
                    @"javascript":@"JavaScript",
                    @"jquery":@"jQuery",
                    @"kixtart":@"KiXtart",
                    @"latex":@"Latex",
                    @"ldif":@"LDIF",
                    @"lb":@"Liberty BASIC",
                    @"lsl2":@"Linden Scripting",
                    @"lisp":@"Lisp",
                    @"llvm":@"LLVM",
                    @"locobasic":@"Loco Basic",
                    @"logtalk":@"Logtalk",
                    @"lolcode":@"LOL Code",
                    @"lotusformulas":@"Lotus Formulas",
                    @"lotusscript":@"Lotus Script",
                    @"lscript":@"LScript",
                    @"lua":@"Lua",
                    @"m68k":@"M68000 Assembler",
                    @"magiksf":@"MagikSF",
                    @"make":@"Make",
                    @"mapbasic":@"MapBasic",
                    @"matlab":@"MatLab",
                    @"mirc":@"mIRC",
                    @"mmix":@"MIX Assembler",
                    @"modula2":@"Modula 2",
                    @"modula3":@"Modula 3",
                    @"68000devpac":@"Motorola 68000 HiSoft Dev",
                    @"mpasm":@"MPASM",
                    @"mxml":@"MXML",
                    @"mysql":@"MySQL",
                    @"nagios":@"Nagios",
                    @"newlisp":@"newLISP",
                    @"text":@"None",
                    @"nsis":@"NullSoft Installer",
                    @"oberon2":@"Oberon 2",
                    @"objeck":@"Objeck Programming Langua",
                    @"objc":@"Objective C",
                    @"ocaml-brief":@"OCalm Brief",
                    @"ocaml":@"OCaml",
                    @"octave":@"Octave",
                    @"pf":@"OpenBSD PACKET FILTER",
                    @"glsl":@"OpenGL Shading",
                    @"oobas":@"Openoffice BASIC",
                    @"oracle11":@"Oracle 11",
                    @"oracle8":@"Oracle 8",
                    @"oz":@"Oz",
                    @"parasail":@"ParaSail",
                    @"parigp":@"PARI/GP",
                    @"pascal":@"Pascal",
                    @"pawn":@"PAWN",
                    @"pcre":@"PCRE",
                    @"per":@"Per",
                    @"perl":@"Perl",
                    @"perl6":@"Perl 6",
                    @"php":@"PHP",
                    @"php-brief":@"PHP Brief",
                    @"pic16":@"Pic 16",
                    @"pike":@"Pike",
                    @"pixelbender":@"Pixel Bender",
                    @"plsql":@"PL/SQL",
                    @"postgresql":@"PostgreSQL",
                    @"povray":@"POV-Ray",
                    @"powershell":@"Power Shell",
                    @"powerbuilder":@"PowerBuilder",
                    @"proftpd":@"ProFTPd",
                    @"progress":@"Progress",
                    @"prolog":@"Prolog",
                    @"properties":@"Properties",
                    @"providex":@"ProvideX",
                    @"purebasic":@"PureBasic",
                    @"pycon":@"PyCon",
                    @"python":@"Python",
                    @"pys60":@"Python for S60",
                    @"q":@"q/kdb+",
                    @"qbasic":@"QBasic",
                    @"rsplus":@"R",
                    @"rails":@"Rails",
                    @"rebol":@"REBOL",
                    @"reg":@"REG",
                    @"rexx":@"Rexx",
                    @"robots":@"Robots",
                    @"rpmspec":@"RPM Spec",
                    @"ruby":@"Ruby",
                    @"gnuplot":@"Ruby Gnuplot",
                    @"sas":@"SAS",
                    @"scala":@"Scala",
                    @"scheme":@"Scheme",
                    @"scilab":@"Scilab",
                    @"sdlbasic":@"SdlBasic",
                    @"smalltalk":@"Smalltalk",
                    @"smarty":@"Smarty",
                    @"spark":@"SPARK",
                    @"sparql":@"SPARQL",
                    @"sql":@"SQL",
                    @"stonescript":@"StoneScript",
                    @"systemverilog":@"SystemVerilog",
                    @"tsql":@"T-SQL",
                    @"tcl":@"TCL",
                    @"teraterm":@"Tera Term",
                    @"thinbasic":@"thinBasic",
                    @"typoscript":@"TypoScript",
                    @"unicon":@"Unicon",
                    @"uscript":@"UnrealScript",
                    @"ups":@"UPC",
                    @"urbi":@"Urbi",
                    @"vala":@"Vala",
                    @"vbnet":@"VB.NET",
                    @"vedit":@"Vedit",
                    @"verilog":@"VeriLog",
                    @"vhdl":@"VHDL",
                    @"vim":@"VIM",
                    @"visualprolog":@"Visual Pro Log",
                    @"vb":@"VisualBasic",
                    @"visualfoxpro":@"VisualFoxPro",
                    @"whitespace":@"WhiteSpace",
                    @"whois":@"WHOIS",
                    @"winbatch":@"Winbatch",
                    @"xbasic":@"XBasic",
                    @"xml":@"XML",
                    @"xorg_conf":@"Xorg Config",
                    @"xpp":@"XPP",
                    @"yaml":@"YAML",
                    @"z80":@"Z80 Assembler",
                    @"zxbasic":@"ZXBasic"
                    };
    }
    return fooDict;
}

+ (NSDictionary *) PBTimeDict{
    static NSDictionary* pbtimeDict = nil;
    if (pbtimeDict==nil) {
        pbtimeDict = @{
                       @"N": @"Never",
                       @"10M": @"10 Minutes",
                       @"1H": @"1 Hour",
                       @"1D": @"1 Day",
                       @"1W": @"1 Week",
                       @"2W": @"2 Weeks",
                       @"1M": @"1 Month"
                       };
    }
    return pbtimeDict;
}
@end
