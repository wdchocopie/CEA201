; -----------------------------------------------------------------
; Comment begins with ';' to the end of a line
; From masm32\tutorial\console\demo1
;
; Build this with the "Project" menu using
; "Console Assemble and Link"
; -----------------------------------------------------------------
.486                                       ; create 32 bit code
.model flat, stdcall                       ; 32 bit memory model
option casemap :none                       ; case sensitive

include D:\masm32\include\windows.inc      ; always first
include D:\masm32\macros\macros.asm        ; MASM support macros

; -----------------------------------------------------------------
; include files that have MASM format prototypes for function calls
; -----------------------------------------------------------------
include D:\masm32\include\masm32.inc
include D:\masm32\include\gdi32.inc
include D:\masm32\include\user32.inc
include D:\masm32\include\kernel32.inc

; ------------------------------------------------
; Library files that have definitions for function exports
; and tested reliable prebuilt code.
; ------------------------------------------------
includelib D:\masm32\lib\masm32.lib
includelib D:\masm32\lib\gdi32.lib
includelib D:\masm32\lib\user32.lib
includelib D:\masm32\lib\kernel32.lib

.code                       ; Tell MASM where the code starts

start:                      ; The CODE entry point to the program
    print chr$("Hello world!",13,10) ; 13: carriage return, 10: new line
    exit                    ; exit the program

end start                   ; Tell MASM where the program ends
