" Vim syntax file
" Language: MIPS
" Original Author: Alex Brick <alex@alexrbrick.com>
" Author: Brandon Harrison
" Maintainer: Brandon Harrison
" Last Change: 2023 Jul 08

" Init {{{
if version < 600
  syntax clear
elseif exists("b:current_syntax")
  finish
endif

setlocal iskeyword+=-
syntax case match
"}}}

" Basics {{{
syntax match mipsComment /#.*/
syntax match mipsNumber /\<[-]\?\d\+\>/ " Decimal numbers
syntax match mipsNumber "\$[0-9A-Fa-f_]" contained " Hexadecimal numbers
syntax match mipsNumber "\$[01_]" contained " Binary numbers
syntax match mipsLabelColon /:/ contained
syntax match mipsLabel /\w\+:/ contains=mipsLabelColon
"}}}

" Registers {{{
syntax match mipsRegister "r0" contained
syntax match mipsRegister "r1" contained
syntax match mipsRegister "r2" contained
syntax match mipsRegister "r3" contained
syntax match mipsRegister "r4" contained
syntax match mipsRegister "r5" contained
syntax match mipsRegister "r6" contained
syntax match mipsRegister "r7" contained
syntax match mipsRegister "r8" contained
syntax match mipsRegister "r9" contained
syntax match mipsRegister "r10" contained
syntax match mipsRegister "r11" contained
syntax match mipsRegister "r12" contained
syntax match mipsRegister "r13" contained
syntax match mipsRegister "r14" contained
syntax match mipsRegister "r15" contained

syntax match mipsSpecialRegister "ra" contained
syntax match mipsSpecialRegister "sp" contained
"}}}

" Devices {{{
syntax match mipsDevice "d0" contained
syntax match mipsDevice "d1" contained
syntax match mipsDevice "d2" contained
syntax match mipsDevice "d3" contained
syntax match mipsDevice "d4" contained
syntax match mipsDevice "d5" contained
syntax match mipsDevice "db" contained
"}}}

" Macros {{{
syntax match mipsMacro "HASH\(\"[A-Za-z0-9\-\_]\"\)" contained " Hashes
"}}}

" Constants {{{
syntax keyword mipsConstant nan contained
syntax keyword mipsConstant pinf ninf contained
syntax keyword mipsConstant pi contained
syntax keyword mipsConstant deg2rad rad2deg contained
syntax keyword mipsConstant epsilon contained
"}}}

syntax match arglist ".+$" contains=mipsRegister,mipsSpecialRegister,mipsDevice,mipsMacro,mipsConstant

" Instructions {{{
syntax keyword mipsInstruction l nextgroup=arglist
syntax keyword mipsInstruction lb nextgroup=arglist
syntax keyword mipsInstruction lbn nextgroup=arglist
syntax keyword mipsInstruction lbs nextgroup=arglist
syntax keyword mipsInstruction lbns nextgroup=arglist
syntax keyword mipsInstruction s nextgroup=arglist
syntax keyword mipsInstruction ss nextgroup=arglist
syntax keyword mipsInstruction sbs nextgroup=arglist
syntax keyword mipsInstruction sb nextgroup=arglist
syntax keyword mipsInstruction ls nextgroup=arglist
syntax keyword mipsInstruction lr nextgroup=arglist
syntax keyword mipsInstruction alias nextgroup=arglist
syntax keyword mipsInstruction define nextgroup=arglist
syntax keyword mipsInstruction move nextgroup=arglist
syntax keyword mipsInstruction add nextgroup=arglist
syntax keyword mipsInstruction sub nextgroup=arglist
syntax keyword mipsInstruction sdse nextgroup=arglist
syntax keyword mipsInstruction sdns nextgroup=arglist
syntax keyword mipsInstruction slt nextgroup=arglist
syntax keyword mipsInstruction sgt nextgroup=arglist
syntax keyword mipsInstruction sle nextgroup=arglist
syntax keyword mipsInstruction sge nextgroup=arglist
syntax keyword mipsInstruction seq nextgroup=arglist
syntax keyword mipsInstruction snan nextgroup=arglist
syntax keyword mipsInstruction snanz nextgroup=arglist
syntax keyword mipsInstruction sne nextgroup=arglist
syntax keyword mipsInstruction sap nextgroup=arglist
syntax keyword mipsInstruction sna nextgroup=arglist
syntax keyword mipsInstruction sltz nextgroup=arglist
syntax keyword mipsInstruction sgtz nextgroup=arglist
syntax keyword mipsInstruction slez nextgroup=arglist
syntax keyword mipsInstruction sgez nextgroup=arglist
syntax keyword mipsInstruction seqz nextgroup=arglist
syntax keyword mipsInstruction snez nextgroup=arglist
syntax keyword mipsInstruction sapz nextgroup=arglist
syntax keyword mipsInstruction snaz nextgroup=arglist
syntax keyword mipsInstruction and nextgroup=arglist
syntax keyword mipsInstruction or nextgroup=arglist
syntax keyword mipsInstruction xor nextgroup=arglist
syntax keyword mipsInstruction nor nextgroup=arglist
syntax keyword mipsInstruction mul nextgroup=arglist
syntax keyword mipsInstruction div nextgroup=arglist
syntax keyword mipsInstruction mod nextgroup=arglist
syntax keyword mipsInstruction j nextgroup=arglist
syntax keyword mipsInstruction bdse nextgroup=arglist
syntax keyword mipsInstruction bdns nextgroup=arglist
syntax keyword mipsInstruction blt nextgroup=arglist
syntax keyword mipsInstruction bgt nextgroup=arglist
syntax keyword mipsInstruction ble nextgroup=arglist
syntax keyword mipsInstruction bge nextgroup=arglist
syntax keyword mipsInstruction beq nextgroup=arglist
syntax keyword mipsInstruction bnan nextgroup=arglist
syntax keyword mipsInstruction brnan nextgroup=arglist
syntax keyword mipsInstruction bne nextgroup=arglist
syntax keyword mipsInstruction bap nextgroup=arglist
syntax keyword mipsInstruction bna nextgroup=arglist
syntax keyword mipsInstruction bltz nextgroup=arglist
syntax keyword mipsInstruction bgez nextgroup=arglist
syntax keyword mipsInstruction blez nextgroup=arglist
syntax keyword mipsInstruction bgtz nextgroup=arglist
syntax keyword mipsInstruction beqz nextgroup=arglist
syntax keyword mipsInstruction bnez nextgroup=arglist
syntax keyword mipsInstruction bapz nextgroup=arglist
syntax keyword mipsInstruction bnaz nextgroup=arglist
syntax keyword mipsInstruction jr nextgroup=arglist
syntax keyword mipsInstruction jr nextgroup=arglist
syntax keyword mipsInstruction brdse nextgroup=arglist
syntax keyword mipsInstruction brdns nextgroup=arglist
syntax keyword mipsInstruction brlt nextgroup=arglist
syntax keyword mipsInstruction brgt nextgroup=arglist
syntax keyword mipsInstruction brle nextgroup=arglist
syntax keyword mipsInstruction brge nextgroup=arglist
syntax keyword mipsInstruction breq nextgroup=arglist
syntax keyword mipsInstruction brne nextgroup=arglist
syntax keyword mipsInstruction brap nextgroup=arglist
syntax keyword mipsInstruction brna nextgroup=arglist
syntax keyword mipsInstruction brltz nextgroup=arglist
syntax keyword mipsInstruction brgez nextgroup=arglist
syntax keyword mipsInstruction brlez nextgroup=arglist
syntax keyword mipsInstruction brgtz nextgroup=arglist
syntax keyword mipsInstruction breqz nextgroup=arglist
syntax keyword mipsInstruction brnez nextgroup=arglist
syntax keyword mipsInstruction brapz nextgroup=arglist
syntax keyword mipsInstruction brnaz nextgroup=arglist
syntax keyword mipsInstruction jal nextgroup=arglist
syntax keyword mipsInstruction bdseal nextgroup=arglist
syntax keyword mipsInstruction bdnsal nextgroup=arglist
syntax keyword mipsInstruction bltal nextgroup=arglist
syntax keyword mipsInstruction bgtal nextgroup=arglist
syntax keyword mipsInstruction bleal nextgroup=arglist
syntax keyword mipsInstruction bgeal nextgroup=arglist
syntax keyword mipsInstruction beqal nextgroup=arglist
syntax keyword mipsInstruction bneal nextgroup=arglist
syntax keyword mipsInstruction bapal nextgroup=arglist
syntax keyword mipsInstruction bnaal nextgroup=arglist
syntax keyword mipsInstruction bltzal nextgroup=arglist
syntax keyword mipsInstruction bgezal nextgroup=arglist
syntax keyword mipsInstruction blezal nextgroup=arglist
syntax keyword mipsInstruction bgtzal nextgroup=arglist
syntax keyword mipsInstruction beqzal nextgroup=arglist
syntax keyword mipsInstruction bnezal nextgroup=arglist
syntax keyword mipsInstruction bapzal nextgroup=arglist
syntax keyword mipsInstruction bnazal nextgroup=arglist
syntax keyword mipsInstruction sqrt nextgroup=arglist
syntax keyword mipsInstruction round nextgroup=arglist
syntax keyword mipsInstruction trunc nextgroup=arglist
syntax keyword mipsInstruction ceil nextgroup=arglist
syntax keyword mipsInstruction floor nextgroup=arglist
syntax keyword mipsInstruction max nextgroup=arglist
syntax keyword mipsInstruction min nextgroup=arglist
syntax keyword mipsInstruction abs nextgroup=arglist
syntax keyword mipsInstruction log nextgroup=arglist
syntax keyword mipsInstruction exp nextgroup=arglist
syntax keyword mipsInstruction rand nextgroup=arglist
syntax keyword mipsInstruction yield nextgroup=arglist
syntax keyword mipsInstruction label nextgroup=arglist
syntax keyword mipsInstruction peek nextgroup=arglist
syntax keyword mipsInstruction push nextgroup=arglist
syntax keyword mipsInstruction pop nextgroup=arglist
syntax keyword mipsInstruction hcf nextgroup=arglist
syntax keyword mipsInstruction select nextgroup=arglist
syntax keyword mipsInstruction sleep nextgroup=arglist
syntax keyword mipsInstruction sin nextgroup=arglist
syntax keyword mipsInstruction cos nextgroup=arglist
syntax keyword mipsInstruction tan nextgroup=arglist
syntax keyword mipsInstruction asin nextgroup=arglist
syntax keyword mipsInstruction acos nextgroup=arglist
syntax keyword mipsInstruction atan nextgroup=arglist
syntax keyword mipsInstruction atan2 nextgroup=arglist
"}}}

" Highlights Linking {{{
hi def link mipsComment             Comment
hi def link mipsNumber              Number
hi def link mipsLabel               Label
hi def link mipsRegister            Identifier
hi def link mipsSpecialRegister     Special
hi def link mipsDevice              Function
hi def link mipsConstant            Constant
hi def link mipsInstruction         Statement
hi def link mipsMacro               Macro
"}}}

let b:current_syntax = "mips"
" vim:ft=vim:fdm=marker:ff=unix:foldopen=all:foldclose=all:colorcolumn=80
