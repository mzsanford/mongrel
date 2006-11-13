'##################################################################
'# 
'# mongrel_service: Win32 native implementation for mongrel
'#                  (using ServiceFB and FreeBASIC)
'# 
'# Copyright (c) 2006 Multimedia systems
'# (c) and code by Luis Lavena
'# Portions (c) Louis Thomas
'# 
'#  mongrel_service (native) and mongrel_service gem_pluing are licensed
'#  in the same terms as mongrel, please review the mongrel license at
'#  http://mongrel.rubyforge.org/license.html
'#  
'#  Louis Thomas licensing:
'#  http://www.latenighthacking.com/projects/lnhfslicense.html
'#  
'##################################################################

'##################################################################
'# Requirements:
'# - FreeBASIC 0.17, Win32 CVS Build (as for November 09, 2006).
'# 
'# SendSignal from Louis Thomas is included in the repository
'# in a pre-compiled form (also included the modified source code).
'# The C code is ugly as hell, but get the job done.
'#
'# Compile instructions:
'# cl /c native\send_signal.cpp /Fonative\send_signal.obj
'# lib native\send_signal.obj /out:lib\libsend_signal.a
'# 
'##################################################################

#include once "windows.bi"

'# extern "C" from send_signal library
declare function send_break cdecl alias "send_break" (byval as uinteger) as integer

'# spawn(cmdline) => PID
declare function spawn(byref as string) as uinteger
