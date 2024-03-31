	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 14, 0	sdk_version 14, 2
	.file	1 "/Users/adambillyard/projects/tek4404/development/gcc-1.42" "alloca.c"
	.globl	_alloca                         ; -- Begin function alloca
	.p2align	2
_alloca:                                ; @alloca
Lfunc_begin0:
	.loc	1 141 0                         ; alloca.c:141:0
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	.cfi_def_cfa_offset 64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	w0, [x29, #-12]
	sub	x8, x29, #13
Ltmp0:
	.loc	1 143 18 prologue_end           ; alloca.c:143:18
	str	x8, [sp, #24]
	adrp	x8, _stack_dir@PAGE
Ltmp1:
	.loc	1 146 7                         ; alloca.c:146:7
	ldr	w8, [x8, _stack_dir@PAGEOFF]
	.loc	1 146 17 is_stmt 0              ; alloca.c:146:17
	subs	w8, w8, #0
	cset	w8, ne
Ltmp2:
	.loc	1 146 7                         ; alloca.c:146:7
	tbnz	w8, #0, LBB0_2
	b	LBB0_1
LBB0_1:
Ltmp3:
	.loc	1 147 5 is_stmt 1               ; alloca.c:147:5
	bl	_find_stack_direction
	b	LBB0_2
Ltmp4:
LBB0_2:
	.loc	1 0 5 is_stmt 0                 ; alloca.c:0:5
	adrp	x8, _last_alloca_header@PAGE
Ltmp5:
	.loc	1 156 15 is_stmt 1              ; alloca.c:156:15
	ldr	x8, [x8, _last_alloca_header@PAGEOFF]
	.loc	1 156 13 is_stmt 0              ; alloca.c:156:13
	str	x8, [sp, #16]
	.loc	1 156 10                        ; alloca.c:156:10
	b	LBB0_3
LBB0_3:                                 ; =>This Inner Loop Header: Depth=1
Ltmp6:
	.loc	1 156 35                        ; alloca.c:156:35
	ldr	x8, [sp, #16]
	.loc	1 156 38                        ; alloca.c:156:38
	subs	x8, x8, #0
	cset	w8, eq
Ltmp7:
	.loc	1 156 5                         ; alloca.c:156:5
	tbnz	w8, #0, LBB0_11
	b	LBB0_4
LBB0_4:                                 ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 5                           ; alloca.c:0:5
	adrp	x8, _stack_dir@PAGE
Ltmp8:
	.loc	1 157 11 is_stmt 1              ; alloca.c:157:11
	ldr	w8, [x8, _stack_dir@PAGEOFF]
	.loc	1 157 21 is_stmt 0              ; alloca.c:157:21
	subs	w8, w8, #0
	cset	w8, le
	.loc	1 157 25                        ; alloca.c:157:25
	tbnz	w8, #0, LBB0_6
	b	LBB0_5
LBB0_5:                                 ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 157 28                        ; alloca.c:157:28
	ldr	x8, [sp, #16]
	.loc	1 157 34                        ; alloca.c:157:34
	ldr	x8, [x8, #8]
	.loc	1 157 41                        ; alloca.c:157:41
	ldr	x9, [sp, #24]
	.loc	1 157 39                        ; alloca.c:157:39
	subs	x8, x8, x9
	cset	w8, hi
	.loc	1 158 4 is_stmt 1               ; alloca.c:158:4
	tbnz	w8, #0, LBB0_8
	b	LBB0_6
LBB0_6:                                 ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 4 is_stmt 0                 ; alloca.c:0:4
	adrp	x8, _stack_dir@PAGE
	.loc	1 158 7                         ; alloca.c:158:7
	ldr	w8, [x8, _stack_dir@PAGEOFF]
	.loc	1 158 17                        ; alloca.c:158:17
	subs	w8, w8, #0
	cset	w8, ge
	.loc	1 158 21                        ; alloca.c:158:21
	tbnz	w8, #0, LBB0_9
	b	LBB0_7
LBB0_7:                                 ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 158 24                        ; alloca.c:158:24
	ldr	x8, [sp, #16]
	.loc	1 158 30                        ; alloca.c:158:30
	ldr	x8, [x8, #8]
	.loc	1 158 37                        ; alloca.c:158:37
	ldr	x9, [sp, #24]
	.loc	1 158 35                        ; alloca.c:158:35
	subs	x8, x8, x9
	cset	w8, hs
Ltmp9:
	.loc	1 157 11 is_stmt 1              ; alloca.c:157:11
	tbnz	w8, #0, LBB0_9
	b	LBB0_8
LBB0_8:                                 ;   in Loop: Header=BB0_3 Depth=1
Ltmp10:
	.loc	1 160 26                        ; alloca.c:160:26
	ldr	x8, [sp, #16]
	.loc	1 160 32 is_stmt 0              ; alloca.c:160:32
	ldr	x8, [x8]
	.loc	1 160 21                        ; alloca.c:160:21
	str	x8, [sp, #8]
	.loc	1 162 20 is_stmt 1              ; alloca.c:162:20
	ldr	x0, [sp, #16]
	.loc	1 162 4 is_stmt 0               ; alloca.c:162:4
	bl	_free
	.loc	1 164 9 is_stmt 1               ; alloca.c:164:9
	ldr	x8, [sp, #8]
	.loc	1 164 7 is_stmt 0               ; alloca.c:164:7
	str	x8, [sp, #16]
	.loc	1 165 2 is_stmt 1               ; alloca.c:165:2
	b	LBB0_10
Ltmp11:
LBB0_9:
	.loc	1 167 2                         ; alloca.c:167:2
	b	LBB0_11
Ltmp12:
LBB0_10:                                ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 156 5                         ; alloca.c:156:5
	b	LBB0_3
Ltmp13:
LBB0_11:
	.loc	1 169 26                        ; alloca.c:169:26
	ldr	x8, [sp, #16]
	adrp	x9, _last_alloca_header@PAGE
	.loc	1 169 24 is_stmt 0              ; alloca.c:169:24
	str	x8, [x9, _last_alloca_header@PAGEOFF]
Ltmp14:
	.loc	1 172 7 is_stmt 1               ; alloca.c:172:7
	ldur	w8, [x29, #-12]
	.loc	1 172 12 is_stmt 0              ; alloca.c:172:12
	subs	w8, w8, #0
	cset	w8, ne
Ltmp15:
	.loc	1 172 7                         ; alloca.c:172:7
	tbnz	w8, #0, LBB0_13
	b	LBB0_12
LBB0_12:
                                        ; kill: def $x8 killed $xzr
Ltmp16:
	.loc	1 173 5 is_stmt 1               ; alloca.c:173:5
	stur	xzr, [x29, #-8]
	b	LBB0_14
Ltmp17:
LBB0_13:
	.loc	1 178 55                        ; alloca.c:178:55
	ldur	w8, [x29, #-12]
                                        ; kill: def $x8 killed $w8
	.loc	1 178 53 is_stmt 0              ; alloca.c:178:53
	add	x0, x8, #16
	.loc	1 178 28                        ; alloca.c:178:28
	bl	_xmalloc
	.loc	1 178 22                        ; alloca.c:178:22
	str	x0, [sp]
	adrp	x9, _last_alloca_header@PAGE
	.loc	1 181 31 is_stmt 1              ; alloca.c:181:31
	ldr	x8, [x9, _last_alloca_header@PAGEOFF]
	.loc	1 181 16 is_stmt 0              ; alloca.c:181:16
	ldr	x10, [sp]
	.loc	1 181 29                        ; alloca.c:181:29
	str	x8, [x10]
	.loc	1 182 31 is_stmt 1              ; alloca.c:182:31
	ldr	x8, [sp, #24]
	.loc	1 182 16 is_stmt 0              ; alloca.c:182:16
	ldr	x10, [sp]
	.loc	1 182 29                        ; alloca.c:182:29
	str	x8, [x10, #8]
	.loc	1 184 36 is_stmt 1              ; alloca.c:184:36
	ldr	x8, [sp]
	.loc	1 184 24 is_stmt 0              ; alloca.c:184:24
	str	x8, [x9, _last_alloca_header@PAGEOFF]
	.loc	1 188 30 is_stmt 1              ; alloca.c:188:30
	ldr	x8, [sp]
	.loc	1 188 34 is_stmt 0              ; alloca.c:188:34
	add	x8, x8, #16
	.loc	1 188 5                         ; alloca.c:188:5
	stur	x8, [x29, #-8]
	b	LBB0_14
Ltmp18:
LBB0_14:
	.loc	1 190 1 is_stmt 1               ; alloca.c:190:1
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
Ltmp19:
Lfunc_end0:
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function find_stack_direction
_find_stack_direction:                  ; @find_stack_direction
Lfunc_begin1:
	.loc	1 84 0                          ; alloca.c:84:0
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	adrp	x8, _find_stack_direction.addr@PAGE
Ltmp20:
	.loc	1 89 7 prologue_end             ; alloca.c:89:7
	ldr	x8, [x8, _find_stack_direction.addr@PAGEOFF]
	.loc	1 89 12 is_stmt 0               ; alloca.c:89:12
	subs	x8, x8, #0
	cset	w8, ne
Ltmp21:
	.loc	1 89 7                          ; alloca.c:89:7
	tbnz	w8, #0, LBB1_2
	b	LBB1_1
LBB1_1:
	.loc	1 0 7                           ; alloca.c:0:7
	sub	x8, x29, #1
	adrp	x9, _find_stack_direction.addr@PAGE
Ltmp22:
	.loc	1 91 12 is_stmt 1               ; alloca.c:91:12
	str	x8, [x9, _find_stack_direction.addr@PAGEOFF]
	.loc	1 93 7                          ; alloca.c:93:7
	bl	_find_stack_direction
	.loc	1 94 5                          ; alloca.c:94:5
	b	LBB1_6
Ltmp23:
LBB1_2:
	.loc	1 0 5 is_stmt 0                 ; alloca.c:0:5
	adrp	x8, _find_stack_direction.addr@PAGE
Ltmp24:
	.loc	1 96 18 is_stmt 1               ; alloca.c:96:18
	ldr	x9, [x8, _find_stack_direction.addr@PAGEOFF]
	sub	x8, x29, #1
	.loc	1 96 16 is_stmt 0               ; alloca.c:96:16
	subs	x8, x8, x9
	cset	w8, ls
Ltmp25:
	.loc	1 96 9                          ; alloca.c:96:9
	tbnz	w8, #0, LBB1_4
	b	LBB1_3
LBB1_3:
	.loc	1 0 9                           ; alloca.c:0:9
	mov	w8, #1
	adrp	x9, _stack_dir@PAGE
Ltmp26:
	.loc	1 97 17 is_stmt 1               ; alloca.c:97:17
	str	w8, [x9, _stack_dir@PAGEOFF]
	.loc	1 97 7 is_stmt 0                ; alloca.c:97:7
	b	LBB1_5
LBB1_4:
	.loc	1 0 7                           ; alloca.c:0:7
	adrp	x9, _stack_dir@PAGE
	mov	w8, #-1
	.loc	1 99 17 is_stmt 1               ; alloca.c:99:17
	str	w8, [x9, _stack_dir@PAGEOFF]
	b	LBB1_5
Ltmp27:
LBB1_5:
	.loc	1 0 17 is_stmt 0                ; alloca.c:0:17
	b	LBB1_6
LBB1_6:
	.loc	1 100 1 is_stmt 1               ; alloca.c:100:1
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
Ltmp28:
Lfunc_end1:
	.cfi_endproc
                                        ; -- End function
.zerofill __DATA,__bss,_stack_dir,4,2   ; @stack_dir
.zerofill __DATA,__bss,_last_alloca_header,8,3 ; @last_alloca_header
.zerofill __DATA,__bss,_find_stack_direction.addr,8,3 ; @find_stack_direction.addr
	.section	__DWARF,__debug_abbrev,regular,debug
Lsection_abbrev:
	.byte	1                               ; Abbreviation Code
	.byte	17                              ; DW_TAG_compile_unit
	.byte	1                               ; DW_CHILDREN_yes
	.byte	37                              ; DW_AT_producer
	.byte	14                              ; DW_FORM_strp
	.byte	19                              ; DW_AT_language
	.byte	5                               ; DW_FORM_data2
	.byte	3                               ; DW_AT_name
	.byte	14                              ; DW_FORM_strp
	.ascii	"\202|"                         ; DW_AT_LLVM_sysroot
	.byte	14                              ; DW_FORM_strp
	.ascii	"\357\177"                      ; DW_AT_APPLE_sdk
	.byte	14                              ; DW_FORM_strp
	.byte	16                              ; DW_AT_stmt_list
	.byte	23                              ; DW_FORM_sec_offset
	.byte	27                              ; DW_AT_comp_dir
	.byte	14                              ; DW_FORM_strp
	.byte	17                              ; DW_AT_low_pc
	.byte	1                               ; DW_FORM_addr
	.byte	18                              ; DW_AT_high_pc
	.byte	6                               ; DW_FORM_data4
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	2                               ; Abbreviation Code
	.byte	52                              ; DW_TAG_variable
	.byte	0                               ; DW_CHILDREN_no
	.byte	3                               ; DW_AT_name
	.byte	14                              ; DW_FORM_strp
	.byte	73                              ; DW_AT_type
	.byte	19                              ; DW_FORM_ref4
	.byte	58                              ; DW_AT_decl_file
	.byte	11                              ; DW_FORM_data1
	.byte	59                              ; DW_AT_decl_line
	.byte	11                              ; DW_FORM_data1
	.byte	2                               ; DW_AT_location
	.byte	24                              ; DW_FORM_exprloc
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	3                               ; Abbreviation Code
	.byte	36                              ; DW_TAG_base_type
	.byte	0                               ; DW_CHILDREN_no
	.byte	3                               ; DW_AT_name
	.byte	14                              ; DW_FORM_strp
	.byte	62                              ; DW_AT_encoding
	.byte	11                              ; DW_FORM_data1
	.byte	11                              ; DW_AT_byte_size
	.byte	11                              ; DW_FORM_data1
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	4                               ; Abbreviation Code
	.byte	46                              ; DW_TAG_subprogram
	.byte	1                               ; DW_CHILDREN_yes
	.byte	17                              ; DW_AT_low_pc
	.byte	1                               ; DW_FORM_addr
	.byte	18                              ; DW_AT_high_pc
	.byte	6                               ; DW_FORM_data4
	.byte	64                              ; DW_AT_frame_base
	.byte	24                              ; DW_FORM_exprloc
	.byte	3                               ; DW_AT_name
	.byte	14                              ; DW_FORM_strp
	.byte	58                              ; DW_AT_decl_file
	.byte	11                              ; DW_FORM_data1
	.byte	59                              ; DW_AT_decl_line
	.byte	11                              ; DW_FORM_data1
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	5                               ; Abbreviation Code
	.byte	52                              ; DW_TAG_variable
	.byte	0                               ; DW_CHILDREN_no
	.byte	2                               ; DW_AT_location
	.byte	24                              ; DW_FORM_exprloc
	.byte	3                               ; DW_AT_name
	.byte	14                              ; DW_FORM_strp
	.byte	58                              ; DW_AT_decl_file
	.byte	11                              ; DW_FORM_data1
	.byte	59                              ; DW_AT_decl_line
	.byte	11                              ; DW_FORM_data1
	.byte	73                              ; DW_AT_type
	.byte	19                              ; DW_FORM_ref4
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	6                               ; Abbreviation Code
	.byte	15                              ; DW_TAG_pointer_type
	.byte	0                               ; DW_CHILDREN_no
	.byte	73                              ; DW_AT_type
	.byte	19                              ; DW_FORM_ref4
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	7                               ; Abbreviation Code
	.byte	22                              ; DW_TAG_typedef
	.byte	0                               ; DW_CHILDREN_no
	.byte	73                              ; DW_AT_type
	.byte	19                              ; DW_FORM_ref4
	.byte	3                               ; DW_AT_name
	.byte	14                              ; DW_FORM_strp
	.byte	58                              ; DW_AT_decl_file
	.byte	11                              ; DW_FORM_data1
	.byte	59                              ; DW_AT_decl_line
	.byte	11                              ; DW_FORM_data1
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	8                               ; Abbreviation Code
	.byte	23                              ; DW_TAG_union_type
	.byte	1                               ; DW_CHILDREN_yes
	.byte	3                               ; DW_AT_name
	.byte	14                              ; DW_FORM_strp
	.byte	11                              ; DW_AT_byte_size
	.byte	11                              ; DW_FORM_data1
	.byte	58                              ; DW_AT_decl_file
	.byte	11                              ; DW_FORM_data1
	.byte	59                              ; DW_AT_decl_line
	.byte	11                              ; DW_FORM_data1
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	9                               ; Abbreviation Code
	.byte	13                              ; DW_TAG_member
	.byte	0                               ; DW_CHILDREN_no
	.byte	3                               ; DW_AT_name
	.byte	14                              ; DW_FORM_strp
	.byte	73                              ; DW_AT_type
	.byte	19                              ; DW_FORM_ref4
	.byte	58                              ; DW_AT_decl_file
	.byte	11                              ; DW_FORM_data1
	.byte	59                              ; DW_AT_decl_line
	.byte	11                              ; DW_FORM_data1
	.byte	56                              ; DW_AT_data_member_location
	.byte	11                              ; DW_FORM_data1
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	10                              ; Abbreviation Code
	.byte	19                              ; DW_TAG_structure_type
	.byte	1                               ; DW_CHILDREN_yes
	.byte	11                              ; DW_AT_byte_size
	.byte	11                              ; DW_FORM_data1
	.byte	58                              ; DW_AT_decl_file
	.byte	11                              ; DW_FORM_data1
	.byte	59                              ; DW_AT_decl_line
	.byte	11                              ; DW_FORM_data1
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	11                              ; Abbreviation Code
	.byte	1                               ; DW_TAG_array_type
	.byte	1                               ; DW_CHILDREN_yes
	.byte	73                              ; DW_AT_type
	.byte	19                              ; DW_FORM_ref4
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	12                              ; Abbreviation Code
	.byte	33                              ; DW_TAG_subrange_type
	.byte	0                               ; DW_CHILDREN_no
	.byte	73                              ; DW_AT_type
	.byte	19                              ; DW_FORM_ref4
	.byte	55                              ; DW_AT_count
	.byte	11                              ; DW_FORM_data1
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	13                              ; Abbreviation Code
	.byte	36                              ; DW_TAG_base_type
	.byte	0                               ; DW_CHILDREN_no
	.byte	3                               ; DW_AT_name
	.byte	14                              ; DW_FORM_strp
	.byte	11                              ; DW_AT_byte_size
	.byte	11                              ; DW_FORM_data1
	.byte	62                              ; DW_AT_encoding
	.byte	11                              ; DW_FORM_data1
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	14                              ; Abbreviation Code
	.byte	46                              ; DW_TAG_subprogram
	.byte	1                               ; DW_CHILDREN_yes
	.byte	17                              ; DW_AT_low_pc
	.byte	1                               ; DW_FORM_addr
	.byte	18                              ; DW_AT_high_pc
	.byte	6                               ; DW_FORM_data4
	.byte	64                              ; DW_AT_frame_base
	.byte	24                              ; DW_FORM_exprloc
	.byte	3                               ; DW_AT_name
	.byte	14                              ; DW_FORM_strp
	.byte	58                              ; DW_AT_decl_file
	.byte	11                              ; DW_FORM_data1
	.byte	59                              ; DW_AT_decl_line
	.byte	11                              ; DW_FORM_data1
	.byte	39                              ; DW_AT_prototyped
	.byte	25                              ; DW_FORM_flag_present
	.byte	73                              ; DW_AT_type
	.byte	19                              ; DW_FORM_ref4
	.byte	63                              ; DW_AT_external
	.byte	25                              ; DW_FORM_flag_present
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	15                              ; Abbreviation Code
	.byte	5                               ; DW_TAG_formal_parameter
	.byte	0                               ; DW_CHILDREN_no
	.byte	2                               ; DW_AT_location
	.byte	24                              ; DW_FORM_exprloc
	.byte	3                               ; DW_AT_name
	.byte	14                              ; DW_FORM_strp
	.byte	58                              ; DW_AT_decl_file
	.byte	11                              ; DW_FORM_data1
	.byte	59                              ; DW_AT_decl_line
	.byte	11                              ; DW_FORM_data1
	.byte	73                              ; DW_AT_type
	.byte	19                              ; DW_FORM_ref4
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	16                              ; Abbreviation Code
	.byte	11                              ; DW_TAG_lexical_block
	.byte	1                               ; DW_CHILDREN_yes
	.byte	17                              ; DW_AT_low_pc
	.byte	1                               ; DW_FORM_addr
	.byte	18                              ; DW_AT_high_pc
	.byte	6                               ; DW_FORM_data4
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	0                               ; EOM(3)
	.section	__DWARF,__debug_info,regular,debug
Lsection_info:
Lcu_begin0:
.set Lset0, Ldebug_info_end0-Ldebug_info_start0 ; Length of Unit
	.long	Lset0
Ldebug_info_start0:
	.short	4                               ; DWARF version number
.set Lset1, Lsection_abbrev-Lsection_abbrev ; Offset Into Abbrev. Section
	.long	Lset1
	.byte	8                               ; Address Size (in bytes)
	.byte	1                               ; Abbrev [1] 0xb:0x1ae DW_TAG_compile_unit
	.long	0                               ; DW_AT_producer
	.short	12                              ; DW_AT_language
	.long	48                              ; DW_AT_name
	.long	57                              ; DW_AT_LLVM_sysroot
	.long	109                             ; DW_AT_APPLE_sdk
.set Lset2, Lline_table_start0-Lsection_line ; DW_AT_stmt_list
	.long	Lset2
	.long	120                             ; DW_AT_comp_dir
	.quad	Lfunc_begin0                    ; DW_AT_low_pc
.set Lset3, Lfunc_end1-Lfunc_begin0     ; DW_AT_high_pc
	.long	Lset3
	.byte	2                               ; Abbrev [2] 0x32:0x15 DW_TAG_variable
	.long	178                             ; DW_AT_name
	.long	71                              ; DW_AT_type
	.byte	1                               ; DW_AT_decl_file
	.byte	79                              ; DW_AT_decl_line
	.byte	9                               ; DW_AT_location
	.byte	3
	.quad	_stack_dir
	.byte	3                               ; Abbrev [3] 0x47:0x7 DW_TAG_base_type
	.long	188                             ; DW_AT_name
	.byte	5                               ; DW_AT_encoding
	.byte	4                               ; DW_AT_byte_size
	.byte	4                               ; Abbrev [4] 0x4e:0x39 DW_TAG_subprogram
	.quad	Lfunc_begin1                    ; DW_AT_low_pc
.set Lset4, Lfunc_end1-Lfunc_begin1     ; DW_AT_high_pc
	.long	Lset4
	.byte	1                               ; DW_AT_frame_base
	.byte	109
	.long	285                             ; DW_AT_name
	.byte	1                               ; DW_AT_decl_file
	.byte	83                              ; DW_AT_decl_line
	.byte	2                               ; Abbrev [2] 0x63:0x15 DW_TAG_variable
	.long	192                             ; DW_AT_name
	.long	135                             ; DW_AT_type
	.byte	1                               ; DW_AT_decl_file
	.byte	85                              ; DW_AT_decl_line
	.byte	9                               ; DW_AT_location
	.byte	3
	.quad	_find_stack_direction.addr
	.byte	5                               ; Abbrev [5] 0x78:0xe DW_TAG_variable
	.byte	2                               ; DW_AT_location
	.byte	145
	.byte	127
	.long	346                             ; DW_AT_name
	.byte	1                               ; DW_AT_decl_file
	.byte	87                              ; DW_AT_decl_line
	.long	140                             ; DW_AT_type
	.byte	0                               ; End Of Children Mark
	.byte	6                               ; Abbrev [6] 0x87:0x5 DW_TAG_pointer_type
	.long	140                             ; DW_AT_type
	.byte	3                               ; Abbrev [3] 0x8c:0x7 DW_TAG_base_type
	.long	197                             ; DW_AT_name
	.byte	6                               ; DW_AT_encoding
	.byte	1                               ; DW_AT_byte_size
	.byte	2                               ; Abbrev [2] 0x93:0x15 DW_TAG_variable
	.long	202                             ; DW_AT_name
	.long	168                             ; DW_AT_type
	.byte	1                               ; DW_AT_decl_file
	.byte	136                             ; DW_AT_decl_line
	.byte	9                               ; DW_AT_location
	.byte	3
	.quad	_last_alloca_header
	.byte	6                               ; Abbrev [6] 0xa8:0x5 DW_TAG_pointer_type
	.long	173                             ; DW_AT_type
	.byte	7                               ; Abbrev [7] 0xad:0xb DW_TAG_typedef
	.long	184                             ; DW_AT_type
	.long	221                             ; DW_AT_name
	.byte	1                               ; DW_AT_decl_file
	.byte	125                             ; DW_AT_decl_line
	.byte	8                               ; Abbrev [8] 0xb8:0x3e DW_TAG_union_type
	.long	228                             ; DW_AT_name
	.byte	16                              ; DW_AT_byte_size
	.byte	1                               ; DW_AT_decl_file
	.byte	117                             ; DW_AT_decl_line
	.byte	9                               ; Abbrev [9] 0xc0:0xc DW_TAG_member
	.long	232                             ; DW_AT_name
	.long	246                             ; DW_AT_type
	.byte	1                               ; DW_AT_decl_file
	.byte	119                             ; DW_AT_decl_line
	.byte	0                               ; DW_AT_data_member_location
	.byte	9                               ; Abbrev [9] 0xcc:0xc DW_TAG_member
	.long	258                             ; DW_AT_name
	.long	216                             ; DW_AT_type
	.byte	1                               ; DW_AT_decl_file
	.byte	124                             ; DW_AT_decl_line
	.byte	0                               ; DW_AT_data_member_location
	.byte	10                              ; Abbrev [10] 0xd8:0x1d DW_TAG_structure_type
	.byte	16                              ; DW_AT_byte_size
	.byte	1                               ; DW_AT_decl_file
	.byte	120                             ; DW_AT_decl_line
	.byte	9                               ; Abbrev [9] 0xdc:0xc DW_TAG_member
	.long	260                             ; DW_AT_name
	.long	265                             ; DW_AT_type
	.byte	1                               ; DW_AT_decl_file
	.byte	122                             ; DW_AT_decl_line
	.byte	0                               ; DW_AT_data_member_location
	.byte	9                               ; Abbrev [9] 0xe8:0xc DW_TAG_member
	.long	265                             ; DW_AT_name
	.long	135                             ; DW_AT_type
	.byte	1                               ; DW_AT_decl_file
	.byte	123                             ; DW_AT_decl_line
	.byte	8                               ; DW_AT_data_member_location
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	11                              ; Abbrev [11] 0xf6:0xc DW_TAG_array_type
	.long	140                             ; DW_AT_type
	.byte	12                              ; Abbrev [12] 0xfb:0x6 DW_TAG_subrange_type
	.long	258                             ; DW_AT_type
	.byte	8                               ; DW_AT_count
	.byte	0                               ; End Of Children Mark
	.byte	13                              ; Abbrev [13] 0x102:0x7 DW_TAG_base_type
	.long	238                             ; DW_AT_name
	.byte	8                               ; DW_AT_byte_size
	.byte	7                               ; DW_AT_encoding
	.byte	6                               ; Abbrev [6] 0x109:0x5 DW_TAG_pointer_type
	.long	184                             ; DW_AT_type
	.byte	7                               ; Abbrev [7] 0x10e:0xb DW_TAG_typedef
	.long	135                             ; DW_AT_type
	.long	270                             ; DW_AT_name
	.byte	1                               ; DW_AT_decl_file
	.byte	51                              ; DW_AT_decl_line
	.byte	14                              ; Abbrev [14] 0x119:0x98 DW_TAG_subprogram
	.quad	Lfunc_begin0                    ; DW_AT_low_pc
.set Lset5, Lfunc_end0-Lfunc_begin0     ; DW_AT_high_pc
	.long	Lset5
	.byte	1                               ; DW_AT_frame_base
	.byte	109
	.long	278                             ; DW_AT_name
	.byte	1                               ; DW_AT_decl_file
	.byte	139                             ; DW_AT_decl_line
                                        ; DW_AT_prototyped
	.long	270                             ; DW_AT_type
                                        ; DW_AT_external
	.byte	15                              ; Abbrev [15] 0x132:0xe DW_TAG_formal_parameter
	.byte	2                               ; DW_AT_location
	.byte	145
	.byte	116
	.long	306                             ; DW_AT_name
	.byte	1                               ; DW_AT_decl_file
	.byte	140                             ; DW_AT_decl_line
	.long	433                             ; DW_AT_type
	.byte	5                               ; Abbrev [5] 0x140:0xe DW_TAG_variable
	.byte	2                               ; DW_AT_location
	.byte	145
	.byte	115
	.long	324                             ; DW_AT_name
	.byte	1                               ; DW_AT_decl_file
	.byte	142                             ; DW_AT_decl_line
	.long	140                             ; DW_AT_type
	.byte	5                               ; Abbrev [5] 0x14e:0xe DW_TAG_variable
	.byte	2                               ; DW_AT_location
	.byte	143
	.byte	24
	.long	330                             ; DW_AT_name
	.byte	1                               ; DW_AT_decl_file
	.byte	143                             ; DW_AT_decl_line
	.long	135                             ; DW_AT_type
	.byte	16                              ; Abbrev [16] 0x15c:0x38 DW_TAG_lexical_block
	.quad	Ltmp5                           ; DW_AT_low_pc
.set Lset6, Ltmp14-Ltmp5                ; DW_AT_high_pc
	.long	Lset6
	.byte	5                               ; Abbrev [5] 0x169:0xe DW_TAG_variable
	.byte	2                               ; DW_AT_location
	.byte	143
	.byte	16
	.long	336                             ; DW_AT_name
	.byte	1                               ; DW_AT_decl_file
	.byte	154                             ; DW_AT_decl_line
	.long	168                             ; DW_AT_type
	.byte	16                              ; Abbrev [16] 0x177:0x1c DW_TAG_lexical_block
	.quad	Ltmp10                          ; DW_AT_low_pc
.set Lset7, Ltmp11-Ltmp10               ; DW_AT_high_pc
	.long	Lset7
	.byte	5                               ; Abbrev [5] 0x184:0xe DW_TAG_variable
	.byte	2                               ; DW_AT_location
	.byte	143
	.byte	8
	.long	343                             ; DW_AT_name
	.byte	1                               ; DW_AT_decl_file
	.byte	160                             ; DW_AT_decl_line
	.long	168                             ; DW_AT_type
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	16                              ; Abbrev [16] 0x194:0x1c DW_TAG_lexical_block
	.quad	Ltmp17                          ; DW_AT_low_pc
.set Lset8, Ltmp18-Ltmp17               ; DW_AT_high_pc
	.long	Lset8
	.byte	5                               ; Abbrev [5] 0x1a1:0xe DW_TAG_variable
	.byte	2                               ; DW_AT_location
	.byte	143
	.byte	0
	.long	339                             ; DW_AT_name
	.byte	1                               ; DW_AT_decl_file
	.byte	178                             ; DW_AT_decl_line
	.long	270                             ; DW_AT_type
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	3                               ; Abbrev [3] 0x1b1:0x7 DW_TAG_base_type
	.long	311                             ; DW_AT_name
	.byte	7                               ; DW_AT_encoding
	.byte	4                               ; DW_AT_byte_size
	.byte	0                               ; End Of Children Mark
Ldebug_info_end0:
	.section	__DWARF,__debug_str,regular,debug
Linfo_string:
	.asciz	"Apple clang version 15.0.0 (clang-1500.1.0.2.5)" ; string offset=0
	.asciz	"alloca.c"                      ; string offset=48
	.asciz	"/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk" ; string offset=57
	.asciz	"MacOSX.sdk"                    ; string offset=109
	.asciz	"/Users/adambillyard/projects/tek4404/development/gcc-1.42" ; string offset=120
	.asciz	"stack_dir"                     ; string offset=178
	.asciz	"int"                           ; string offset=188
	.asciz	"addr"                          ; string offset=192
	.asciz	"char"                          ; string offset=197
	.asciz	"last_alloca_header"            ; string offset=202
	.asciz	"header"                        ; string offset=221
	.asciz	"hdr"                           ; string offset=228
	.asciz	"align"                         ; string offset=232
	.asciz	"__ARRAY_SIZE_TYPE__"           ; string offset=238
	.asciz	"h"                             ; string offset=258
	.asciz	"next"                          ; string offset=260
	.asciz	"deep"                          ; string offset=265
	.asciz	"pointer"                       ; string offset=270
	.asciz	"alloca"                        ; string offset=278
	.asciz	"find_stack_direction"          ; string offset=285
	.asciz	"size"                          ; string offset=306
	.asciz	"unsigned int"                  ; string offset=311
	.asciz	"probe"                         ; string offset=324
	.asciz	"depth"                         ; string offset=330
	.asciz	"hp"                            ; string offset=336
	.asciz	"new"                           ; string offset=339
	.asciz	"np"                            ; string offset=343
	.asciz	"dummy"                         ; string offset=346
	.section	__DWARF,__apple_names,regular,debug
Lnames_begin:
	.long	1212240712                      ; Header Magic
	.short	1                               ; Header Version
	.short	0                               ; Header Hash Function
	.long	5                               ; Header Bucket Count
	.long	5                               ; Header Hash Count
	.long	12                              ; Header Data Length
	.long	0                               ; HeaderData Die Offset Base
	.long	1                               ; HeaderData Atom Count
	.short	1                               ; DW_ATOM_die_offset
	.short	6                               ; DW_FORM_data4
	.long	-1                              ; Bucket 0
	.long	-1                              ; Bucket 1
	.long	0                               ; Bucket 2
	.long	1                               ; Bucket 3
	.long	3                               ; Bucket 4
	.long	1834847417                      ; Hash in Bucket 2
	.long	2090071808                      ; Hash in Bucket 3
	.long	-868806213                      ; Hash in Bucket 3
	.long	-1025515892                     ; Hash in Bucket 4
	.long	-234693007                      ; Hash in Bucket 4
.set Lset9, LNames0-Lnames_begin        ; Offset in Bucket 2
	.long	Lset9
.set Lset10, LNames3-Lnames_begin       ; Offset in Bucket 3
	.long	Lset10
.set Lset11, LNames1-Lnames_begin       ; Offset in Bucket 3
	.long	Lset11
.set Lset12, LNames2-Lnames_begin       ; Offset in Bucket 4
	.long	Lset12
.set Lset13, LNames4-Lnames_begin       ; Offset in Bucket 4
	.long	Lset13
LNames0:
	.long	178                             ; stack_dir
	.long	1                               ; Num DIEs
	.long	50
	.long	0
LNames3:
	.long	192                             ; addr
	.long	1                               ; Num DIEs
	.long	99
	.long	0
LNames1:
	.long	285                             ; find_stack_direction
	.long	1                               ; Num DIEs
	.long	78
	.long	0
LNames2:
	.long	202                             ; last_alloca_header
	.long	1                               ; Num DIEs
	.long	147
	.long	0
LNames4:
	.long	278                             ; alloca
	.long	1                               ; Num DIEs
	.long	281
	.long	0
	.section	__DWARF,__apple_objc,regular,debug
Lobjc_begin:
	.long	1212240712                      ; Header Magic
	.short	1                               ; Header Version
	.short	0                               ; Header Hash Function
	.long	1                               ; Header Bucket Count
	.long	0                               ; Header Hash Count
	.long	12                              ; Header Data Length
	.long	0                               ; HeaderData Die Offset Base
	.long	1                               ; HeaderData Atom Count
	.short	1                               ; DW_ATOM_die_offset
	.short	6                               ; DW_FORM_data4
	.long	-1                              ; Bucket 0
	.section	__DWARF,__apple_namespac,regular,debug
Lnamespac_begin:
	.long	1212240712                      ; Header Magic
	.short	1                               ; Header Version
	.short	0                               ; Header Hash Function
	.long	1                               ; Header Bucket Count
	.long	0                               ; Header Hash Count
	.long	12                              ; Header Data Length
	.long	0                               ; HeaderData Die Offset Base
	.long	1                               ; HeaderData Atom Count
	.short	1                               ; DW_ATOM_die_offset
	.short	6                               ; DW_FORM_data4
	.long	-1                              ; Bucket 0
	.section	__DWARF,__apple_types,regular,debug
Ltypes_begin:
	.long	1212240712                      ; Header Magic
	.short	1                               ; Header Version
	.short	0                               ; Header Hash Function
	.long	7                               ; Header Bucket Count
	.long	7                               ; Header Hash Count
	.long	20                              ; Header Data Length
	.long	0                               ; HeaderData Die Offset Base
	.long	3                               ; HeaderData Atom Count
	.short	1                               ; DW_ATOM_die_offset
	.short	6                               ; DW_FORM_data4
	.short	3                               ; DW_ATOM_die_tag
	.short	5                               ; DW_FORM_data2
	.short	4                               ; DW_ATOM_type_flags
	.short	11                              ; DW_FORM_data1
	.long	-1                              ; Bucket 0
	.long	0                               ; Bucket 1
	.long	1                               ; Bucket 2
	.long	2                               ; Bucket 3
	.long	-1                              ; Bucket 4
	.long	4                               ; Bucket 5
	.long	6                               ; Bucket 6
	.long	-594775205                      ; Hash in Bucket 1
	.long	-1143920346                     ; Hash in Bucket 2
	.long	193493667                       ; Hash in Bucket 3
	.long	193495088                       ; Hash in Bucket 3
	.long	30546094                        ; Hash in Bucket 5
	.long	2090147939                      ; Hash in Bucket 5
	.long	-1304652851                     ; Hash in Bucket 6
.set Lset14, Ltypes1-Ltypes_begin       ; Offset in Bucket 1
	.long	Lset14
.set Lset15, Ltypes0-Ltypes_begin       ; Offset in Bucket 2
	.long	Lset15
.set Lset16, Ltypes6-Ltypes_begin       ; Offset in Bucket 3
	.long	Lset16
.set Lset17, Ltypes4-Ltypes_begin       ; Offset in Bucket 3
	.long	Lset17
.set Lset18, Ltypes3-Ltypes_begin       ; Offset in Bucket 5
	.long	Lset18
.set Lset19, Ltypes5-Ltypes_begin       ; Offset in Bucket 5
	.long	Lset19
.set Lset20, Ltypes2-Ltypes_begin       ; Offset in Bucket 6
	.long	Lset20
Ltypes1:
	.long	238                             ; __ARRAY_SIZE_TYPE__
	.long	1                               ; Num DIEs
	.long	258
	.short	36
	.byte	0
	.long	0
Ltypes0:
	.long	270                             ; pointer
	.long	1                               ; Num DIEs
	.long	270
	.short	22
	.byte	0
	.long	0
Ltypes6:
	.long	228                             ; hdr
	.long	1                               ; Num DIEs
	.long	184
	.short	23
	.byte	0
	.long	0
Ltypes4:
	.long	188                             ; int
	.long	1                               ; Num DIEs
	.long	71
	.short	36
	.byte	0
	.long	0
Ltypes3:
	.long	221                             ; header
	.long	1                               ; Num DIEs
	.long	173
	.short	22
	.byte	0
	.long	0
Ltypes5:
	.long	197                             ; char
	.long	1                               ; Num DIEs
	.long	140
	.short	36
	.byte	0
	.long	0
Ltypes2:
	.long	311                             ; unsigned int
	.long	1                               ; Num DIEs
	.long	433
	.short	36
	.byte	0
	.long	0
.subsections_via_symbols
	.section	__DWARF,__debug_line,regular,debug
Lsection_line:
Lline_table_start0:
