#define MOTOROLA


#include "tm-m68k.h"


#undef CALL_USED_REGISTERS
/* AB:  Uniflex seems to clobber d2 */
/* AB:  Uniflex seems to clobber a2 */
#define CALL_USED_REGISTERS \
 {1, 1, 1, 0, 0, 0, 0, 0, \
  1, 1, 1, 0, 0, 0, 0, 1, \
  1, 1, 0, 0, 0, 0, 0, 0, \
  /* FPA registers.  */   \
  1, 1, 1, 1, 0, 0, 0, 0, \
  0, 0, 0, 0, 0, 0, 0, 0, \
  0, 0, 0, 0, 0, 0, 0, 0, \
  0, 0, 0, 0, 0, 0, 0, 0, }

/* AB: Uniflex asm knows about and uses quick variants, but does not accept them */
#define TSC_ASM

#define GNULIB_NEEDS_DOUBLE (1)

#define NO_ADDSUB_Q

#undef HAVE_addqi3
#define HAVE_addqi3 (0)

#undef HAVE_subqi3
#define HAVE_subqi3 (0)

#undef HAVE_andqi3
#define HAVE_andqi3 (0)

#undef HAVE_iorqi3
#define HAVE_iorqi3 (0)

#undef HAVE_xorqi3
#define HAVE_xorqi3 (0)

#undef HAVE_ashlqi3
#define HAVE_ashlqi3 (0)

#undef HAVE_ashrqi3
#define HAVE_ashrqi3 (0)

#undef HAVE_lshlqi3
#define HAVE_lshlqi3 (0)

#undef HAVE_lshrqi3
#define HAVE_lshrqi3 (0)

#undef HAVE_rotlqi3
#define HAVE_rotlqi3 (0)

#undef HAVE_rotrqi3
#define HAVE_rotrqi3 (0)



/* See tm-m68k.h.  0 means 68000 with no 68881.  */

#define TARGET_DEFAULT 0

#define STANDARD_EXEC_PREFIX "/bin/cpasses/"

#define STARTFILE_SPEC  "%{pg:/lib/Cwrapper.r%s}%{!pg:%{p:/lib/Cwrapper.r%s}%{!p:/lib/Cwrapper.r%s}}"
  
#define ASM_SPEC "+u"

#define LINK_SPEC "+b=1M"

/* native cc adds these last options..  undocumented */
#define LIB_SPEC "+c=C +il=clibs +l=cmathlib +Y +W"

/* Names to predefine in the preprocessor for this target machine.  */

#define CPP_PREDEFINES "-Dmc68010 -Dtek -Dunix"

/* Uniflex uses \015 */
#undef TARGET_NEWLINE
#define TARGET_NEWLINE 015

#undef ASM_OUTPUT_SOURCE_FILENAME
#define ASM_OUTPUT_SOURCE_FILENAME(FILE, FILENAME) \
  fprintf (FILE, "\tname %s\015", FILENAME)
  
#undef ASM_FILE_START
#define ASM_FILE_START(FILE) fprintf (FILE, "\tlib sysdef\015\tlib sysfloat\015");

#undef ASM_APP_ON
#define ASM_APP_ON ""

#undef ASM_APP_OFF
#define ASM_APP_OFF	""

#undef TEXT_SECTION_ASM_OP
#define TEXT_SECTION_ASM_OP "\ttext"

#undef DATA_SECTION_ASM_OP
#define DATA_SECTION_ASM_OP "\tdata"

#undef ASM_OUTPUT_LABEL
#define ASM_OUTPUT_LABEL(FILE,NAME)	\
  do { assemble_name (FILE, NAME); fputs ("\015", FILE); } while (0)

#undef ASM_GLOBALIZE_LABEL
#define ASM_GLOBALIZE_LABEL(FILE,NAME)	\
  do { fputs ("\tglobal ", FILE); assemble_name (FILE, NAME); fputs ("\015", FILE);} while (0)

#undef ASM_OUTPUT_INTERNAL_LABEL
#define ASM_OUTPUT_INTERNAL_LABEL(FILE,PREFIX,NUM)	\
  fprintf (FILE, "%s%d\015", PREFIX, NUM)

#undef ASM_OUTPUT_DOUBLE
#define ASM_OUTPUT_DOUBLE(FILE,VALUE)  \
do { union { double d; long l[2]; } tem;		\
     tem.d = (VALUE);					\
     fprintf(FILE, "\tdc.l $%8.8X,$%8.8X\015", tem.l[0], tem.l[1]); \
   } while (0)

/* This is how to output an assembler line defining a `float' constant.  */
#undef ASM_OUTPUT_FLOAT
#define ASM_OUTPUT_FLOAT(FILE,VALUE)  \
  fprintf (FILE, "\tdc.l    $%8.8X\015", *(unsigned long *)&(VALUE))

/* Output a float value (represented as a C double) as an immediate operand.
   This macro is a 68k-specific macro.  */
#undef ASM_OUTPUT_FLOAT_OPERAND
#define ASM_OUTPUT_FLOAT_OPERAND(FILE,VALUE)				\
  fprintf (FILE, "#0r%g", (VALUE))

/* Output a double value (represented as a C double) as an immediate operand.
   This macro is a 68k-specific macro.  */
#undef ASM_OUTPUT_DOUBLE_OPERAND
#define ASM_OUTPUT_DOUBLE_OPERAND(FILE,VALUE)				\
  fprintf (FILE, "#0r%g", (VALUE))



/* This is how to output an assembler line defining an `int' constant.  */

#undef ASM_OUTPUT_INT
#define ASM_OUTPUT_INT(FILE,VALUE)  \
( fprintf (FILE, "\tfqb "),			\
  output_addr_const (FILE, (VALUE)),		\
  fprintf (FILE, "\015"))

#undef ASM_OUTPUT_SHORT
#define ASM_OUTPUT_SHORT(FILE,VALUE)  \
( fprintf (FILE, "\tfdb "),			\
  output_addr_const (FILE, (VALUE)),		\
  fprintf (FILE, "\015"))

#undef ASM_OUTPUT_CHAR
#define ASM_OUTPUT_CHAR(FILE,VALUE)  \
( fprintf (FILE, "\tfcb "),			\
  output_addr_const (FILE, (VALUE)),		\
  fprintf (FILE, "\015"))

#undef ASM_OUTPUT_BYTE
#define ASM_OUTPUT_BYTE(FILE,VALUE)  \
  fprintf (FILE, "\tfcb 0x%X\015", (VALUE))

#undef ASM_FORMAT_PRIVATE_NAME
#define ASM_FORMAT_PRIVATE_NAME(OUTPUT, NAME, LABELNO)	\
( (OUTPUT) = (char *) alloca (strlen ((NAME)) + 10),	\
  sprintf ((OUTPUT), "%s_%d", (NAME), (LABELNO)))


#undef ASM_OUTPUT_SKIP
#define ASM_OUTPUT_SKIP(FILE,SIZE)  \
  fprintf (FILE, "\trmb %d\015", (SIZE))

#undef ASM_OUTPUT_COMMON
#define ASM_OUTPUT_COMMON(FILE, NAME, SIZE, ROUNDED)  \
( fputs ("\tglobal ", (FILE)),			\
  assemble_name ((FILE), (NAME)),		\
  fputs ("\015\tbss\015", (FILE)),			\
  assemble_name ((FILE), (NAME)),		\
  fprintf ((FILE), "\trab %d\015", (ROUNDED)))
  
#undef ASM_OUTPUT_LOCAL
#define ASM_OUTPUT_LOCAL(FILE, NAME, SIZE, ROUNDED)  \
(  fputs ("\tbss\015", (FILE)),			\
  assemble_name ((FILE), (NAME)),		\
  fprintf ((FILE), "\trab %d\015", (ROUNDED))), \
  fputs ("\ttext\015", (FILE))

#undef ASM_OUTPUT_ADDR_DIFF_ELT
#define ASM_OUTPUT_ADDR_DIFF_ELT(FILE, VALUE, REL)  \
  fprintf (FILE, "\tfdb L%d-L%d\015", VALUE, REL)

#undef ASM_OUTPUT_ALIGN
#define ASM_OUTPUT_ALIGN(FILE,LOG)	\
  if ((LOG) == 1)			\
    fprintf (FILE, "\teven\015");	\
  else if ((LOG) != 0)			\
    abort ();

#undef ASM_OUTPUT_ASCII
#define ASM_OUTPUT_ASCII(file, p, size)			\
{							\
  for (i = 0; i < size; i++)				\
    {							\
      register int c = p[i];				\
      if ((i / 40) * 40 == i)				\
      if (i == 0)					\
        fprintf (file, "\tfcc \"");			\
      else						\
        fprintf (file, "\"\015\tfcc \"");		\
      if (c == '\"' || c == '\\')			\
        putc ('\\', file);				\
      if (c >= ' ' && c < 0177)				\
        putc (c, file);					\
      else						\
        {						\
          fprintf (file, "\",$%2.2X,\"", c);			\
          if (i < size - 1 				\
              && p[i + 1] >= '0' && p[i + 1] <= '9')	\
          fprintf (file, "\"\015\tfcc \"");		\
        }						\
    }							\
  fprintf (file, "\",0\015");				\
}

#undef ASM_OUTPUT_OPCODE
#define ASM_OUTPUT_OPCODE(FILE, PTR)			\
{ if ((PTR)[0] == 'j' && (PTR)[1] == 'b')		\
    { ++(PTR);						\
      while (*(PTR) != ' ')				\
	{ putc (*(PTR), (FILE)); ++(PTR); }		\
      fprintf ((FILE), ".w"); }				\
}

#undef PRINT_OPERAND_PRINT_FLOAT
#define PRINT_OPERAND_PRINT_FLOAT(CODE, FILE)   \
{ if (CODE == 'f')							\
    ASM_OUTPUT_FLOAT_OPERAND (FILE, u1.f);				\
  else									\
    fprintf (FILE, "#%d", u1.i); }  /* AB: Uniflex asm rejects hex constants */


#undef FUNCTION_PROLOGUE
#define FUNCTION_PROLOGUE(FILE, SIZE)     \
{ register int regno;						\
  register int mask = 0;					\
  extern char call_used_regs[];					\
  int fsize = ((SIZE) + 3) & -4;				\
  if (frame_pointer_needed)					\
    { if (fsize < 0x8000)			\
        fprintf (FILE, "\tlink a6,#%d\015", -fsize);		\
      else							\
	fprintf (FILE, "\tlink a6,#0\015\tsub.l #%d,sp\015", fsize); }  \
  for (regno = 24; regno < 56; regno++)				\
    if (regs_ever_live[regno] && ! call_used_regs[regno])	\
      fprintf(FILE, "\tfpmoved %s, -(sp)\015",			\
	      reg_names[regno]);				\
  for (regno = 16; regno < 24; regno++)				\
    if (regs_ever_live[regno] && ! call_used_regs[regno])	\
       mask |= 1 << (regno - 16);				\
  if ((mask & 0xff) != 0)					\
    fprintf (FILE, "\tfmovem #0x%x,-(sp)\015", mask & 0xff);       \
  mask = 0;							\
  for (regno = 0; regno < 16; regno++)				\
    if (regs_ever_live[regno] && ! call_used_regs[regno])	\
       mask |= 1 << (regno);				\
  if (frame_pointer_needed)					\
    mask &= ~ (1 << (FRAME_POINTER_REGNUM));			\
  if (exact_log2 (mask) >= 0)					\
    fprintf (FILE, "\tmove.l %s,-(sp)\015", reg_names[exact_log2 (mask)]);  \
  else if (mask) fprintf (FILE, "\tmovem.l #$%x,-(sp)\015",mask);}

#undef FUNCTION_EPILOGUE
#define FUNCTION_EPILOGUE(FILE, SIZE) \
{ register int regno;						\
  register int mask, fmask;					\
  register int nregs;						\
  int offset, foffset, fpoffset;				\
  extern char call_used_regs[];					\
  extern int current_function_pops_args;			\
  extern int current_function_args_size;			\
  int fsize = ((SIZE) + 3) & -4;				\
  int big = 0;							\
  nregs = 0;  fmask = 0; fpoffset = 0;				\
  for (regno = 24 ; regno < 56 ; regno++)			\
    if (regs_ever_live[regno] && ! call_used_regs[regno])	\
      nregs++;							\
  fpoffset = nregs*8;						\
  nregs = 0;							\
  for (regno = 16; regno < 24; regno++)				\
    if (regs_ever_live[regno] && ! call_used_regs[regno])	\
      { nregs++; fmask |= 1 << (23 - regno); }			\
  foffset = fpoffset + nregs * 12;				\
  nregs = 0;  mask = 0;						\
  if (frame_pointer_needed) regs_ever_live[FRAME_POINTER_REGNUM] = 0; \
  for (regno = 0; regno < 16; regno++)				\
    if (regs_ever_live[regno] && ! call_used_regs[regno])	\
      { nregs++; mask |= 1 << regno; }				\
  offset = foffset + nregs * 4;					\
  if (offset + fsize >= 0x8000 					\
      && frame_pointer_needed 					\
      && (mask || fmask || fpoffset)) 				\
    { fprintf (FILE, "\tmove.l #%d,a0\015", -fsize);		\
      fsize = 0, big = 1; }					\
  if (exact_log2 (mask) >= 0) {					\
    if (big)							\
      fprintf (FILE, "\tmove.l -%d(a6,a0.l),%s\015",		\
	       offset + fsize, reg_names[exact_log2 (mask)]);	\
    else if (! frame_pointer_needed)				\
      fprintf (FILE, "\tmove.l (sp)+,%s\015",			\
	       reg_names[exact_log2 (mask)]);			\
    else							\
      fprintf (FILE, "\tmove.l -%d(a6),%s\015",			\
	       offset + fsize, reg_names[exact_log2 (mask)]); }	\
  else if (mask) {						\
    if (big)							\
      fprintf (FILE, "\tmovem.l a6@(-%d,a0:l),#0x%x\015",		\
	       offset + fsize, mask);				\
    else if (! frame_pointer_needed)				\
      fprintf (FILE, "\tmovem.l (sp)+,#$%x\015", mask);		\
    else							\
      fprintf (FILE, "\tmovem.l -%d(a6),#$%x\015",		\
	       offset + fsize, mask); }				\
  if (fmask) {							\
    if (big)							\
      fprintf (FILE, "\tfmovem a6@(-%d,a0:l),#0x%x\015",		\
	       foffset + fsize, fmask);				\
    else if (! frame_pointer_needed)				\
      fprintf (FILE, "\tfmovem (sp)+,#0x%x\015", fmask);		\
    else							\
      fprintf (FILE, "\tfmovem -%d(a6),#0x%x\015",		\
	       foffset + fsize, fmask); }			\
  if (fpoffset != 0)						\
    for (regno = 55; regno >= 24; regno--)			\
      if (regs_ever_live[regno] && ! call_used_regs[regno]) {	\
	if (big)						\
	  fprintf(FILE, "\tfpmoved a6@(-%d,a0:l), %s\015",	\
		  fpoffset + fsize, reg_names[regno]);		\
	else if (! frame_pointer_needed)			\
	  fprintf(FILE, "\tfpmoved (sp)+, %s\015",			\
		  reg_names[regno]);				\
	else							\
	  fprintf(FILE, "\tfpmoved a6@(-%d), %s\015",		\
		  fpoffset + fsize, reg_names[regno]);		\
	fpoffset -= 8;						\
      }								\
  if (frame_pointer_needed)					\
    fprintf (FILE, "\tunlk a6\015");				\
  if (current_function_pops_args && current_function_args_size)	\
    fprintf (FILE, "\trtd #%d\015", current_function_args_size);	\
  else fprintf (FILE, "\trts\015"); }

#undef PRINT_OPERAND
#define PRINT_OPERAND(FILE, X, CODE)  \
{ int i;								\
  if (CODE == '.') fprintf (FILE, ".");							\
  else if (CODE == '#') fprintf (FILE, "#");				\
  else if (CODE == '-') fprintf (FILE, "-(sp)");				\
  else if (CODE == '+') fprintf (FILE, "(sp)+");				\
  else if (CODE == 's') fprintf (FILE, "(sp)");				\
  else if (CODE == '!') fprintf (FILE, "cc");				\
  else if (GET_CODE (X) == REG)						\
    { if (REGNO (X) < 16 && (CODE == 'y' || CODE == 'x') && GET_MODE (X) == DFmode)	\
        fprintf (FILE, "%s:%s", reg_names[REGNO (X)], reg_names[REGNO (X)+1]); \
      else								\
        fprintf (FILE, "%s", reg_names[REGNO (X)]);			\
    }									\
  else if (GET_CODE (X) == MEM)						\
    {									\
      output_address (XEXP (X, 0));					\
      if (CODE == 'd' && ! TARGET_68020					\
	  && CONSTANT_ADDRESS_P (XEXP (X, 0))				\
	  && !(GET_CODE (XEXP (X, 0)) == CONST_INT			\
	       && INTVAL (XEXP (X, 0)) < 0x8000				\
	       && INTVAL (XEXP (X, 0)) >= -0x8000))			\
	fprintf (FILE, "");						\
    }									\
  else if ((CODE == 'y' || CODE == 'w')					\
	   && GET_CODE(X) == CONST_DOUBLE				\
	   && (i = standard_sun_fpa_constant_p (X)))			\
    fprintf (FILE, "%%%d", i & 0x1ff);					\
  else if (GET_CODE (X) == CONST_DOUBLE && GET_MODE (X) == SFmode)	\
    { union { double d; int i[2]; } u;					\
      union { float f; int i; } u1;					\
      PRINT_OPERAND_EXTRACT_FLOAT (X);					\
      u1.f = u.d;							\
      PRINT_OPERAND_PRINT_FLOAT (CODE, FILE); }				\
  else if (GET_CODE (X) == CONST_DOUBLE && GET_MODE (X) != DImode)	\
    { union { double d; int i[2]; } u;					\
      PRINT_OPERAND_EXTRACT_FLOAT (X);					\
      ASM_OUTPUT_DOUBLE_OPERAND (FILE, u.d); }				\
  else { putc ('#', FILE); output_addr_const (FILE, X); }}

/* Note that this contains a kludge that knows that the only reason
   we have an address (plus (label_ref...) (reg...))
   is in the insn before a tablejump, and we know that m68k.md
   generates a label LInnn: on such an insn.  */
#undef PRINT_OPERAND_ADDRESS
#define PRINT_OPERAND_ADDRESS(FILE, ADDR)  \
{ register rtx reg1, reg2, breg, ireg;					\
  register rtx addr = ADDR;						\
  rtx offset;								\
  switch (GET_CODE (addr))						\
    {									\
    case REG:								\
      fprintf (FILE, "(%s)", reg_name [REGNO (addr)]);			\
      break;								\
    case PRE_DEC:							\
      fprintf (FILE, "-(%s)", reg_name [REGNO (XEXP (addr, 0))]);	\
      break;								\
    case POST_INC:							\
      fprintf (FILE, "(%s)+", reg_name [REGNO (XEXP (addr, 0))]);	\
      break;								\
    case PLUS:								\
      reg1 = 0;	reg2 = 0;						\
      ireg = 0;	breg = 0;						\
      offset = 0;							\
      if (CONSTANT_ADDRESS_P (XEXP (addr, 0)))				\
	{								\
	  offset = XEXP (addr, 0);					\
	  addr = XEXP (addr, 1);					\
	}								\
      else if (CONSTANT_ADDRESS_P (XEXP (addr, 1)))			\
	{								\
	  offset = XEXP (addr, 1);					\
	  addr = XEXP (addr, 0);					\
	}								\
      if (GET_CODE (addr) != PLUS) ;					\
      else if (GET_CODE (XEXP (addr, 0)) == SIGN_EXTEND)		\
	{								\
	  reg1 = XEXP (addr, 0);					\
	  addr = XEXP (addr, 1);					\
	}								\
      else if (GET_CODE (XEXP (addr, 1)) == SIGN_EXTEND)		\
	{								\
	  reg1 = XEXP (addr, 1);					\
	  addr = XEXP (addr, 0);					\
	}								\
      else if (GET_CODE (XEXP (addr, 0)) == MULT)			\
	{								\
	  reg1 = XEXP (addr, 0);					\
	  addr = XEXP (addr, 1);					\
	}								\
      else if (GET_CODE (XEXP (addr, 1)) == MULT)			\
	{								\
	  reg1 = XEXP (addr, 1);					\
	  addr = XEXP (addr, 0);					\
	}								\
      else if (GET_CODE (XEXP (addr, 0)) == REG)			\
	{								\
	  reg1 = XEXP (addr, 0);					\
	  addr = XEXP (addr, 1);					\
	}								\
      else if (GET_CODE (XEXP (addr, 1)) == REG)			\
	{								\
	  reg1 = XEXP (addr, 1);					\
	  addr = XEXP (addr, 0);					\
	}								\
      if (GET_CODE (addr) == REG || GET_CODE (addr) == MULT		\
	  || GET_CODE (addr) == SIGN_EXTEND)				\
	{ if (reg1 == 0) reg1 = addr; else reg2 = addr; addr = 0; }	\
/*  for OLD_INDEXING							\
      else if (GET_CODE (addr) == PLUS)					\
	{								\
	  if (GET_CODE (XEXP (addr, 0)) == REG)				\
	    {								\
	      reg2 = XEXP (addr, 0);					\
	      addr = XEXP (addr, 1);					\
	    }								\
	  else if (GET_CODE (XEXP (addr, 1)) == REG)			\
	    {								\
	      reg2 = XEXP (addr, 1);					\
	      addr = XEXP (addr, 0);					\
	    }								\
	}								\
  */									\
      if (offset != 0) { if (addr != 0) abort (); addr = offset; }	\
      if ((reg1 && (GET_CODE (reg1) == SIGN_EXTEND			\
		    || GET_CODE (reg1) == MULT))			\
	  || (reg2 != 0 && REGNO_OK_FOR_BASE_P (REGNO (reg2))))		\
	{ breg = reg2; ireg = reg1; }					\
      else if (reg1 != 0 && REGNO_OK_FOR_BASE_P (REGNO (reg1)))		\
	{ breg = reg1; ireg = reg2; }					\
      if (ireg != 0 && breg == 0 && GET_CODE (addr) == LABEL_REF)	\
        { int scale = 1;						\
	  if (GET_CODE (ireg) == MULT)					\
	    { scale = INTVAL (XEXP (ireg, 1));				\
	      ireg = XEXP (ireg, 0); }					\
	  if (GET_CODE (ireg) == SIGN_EXTEND)				\
	    fprintf (FILE, "L%d-LI%d(pc,%s.w",			\
		     CODE_LABEL_NUMBER (XEXP (addr, 0)),		\
		     CODE_LABEL_NUMBER (XEXP (addr, 0)),		\
		     reg_name[REGNO (XEXP (ireg, 0))]); 		\
	  else								\
	    fprintf (FILE, "L%d-LI%d(pc,%s.l",			\
		     CODE_LABEL_NUMBER (XEXP (addr, 0)),		\
		     CODE_LABEL_NUMBER (XEXP (addr, 0)),		\
		     reg_name[REGNO (ireg)]);				\
	  if (scale != 1) fprintf (FILE, ":%d", scale);			\
	  putc (')', FILE);						\
	  break; }							\
      if (breg != 0 && ireg == 0 && GET_CODE (addr) == LABEL_REF)	\
        { fprintf (FILE, "L%d-LI%d-2(pc,%s.l",			\
		   CODE_LABEL_NUMBER (XEXP (addr, 0)),			\
		   CODE_LABEL_NUMBER (XEXP (addr, 0)),			\
		   reg_name[REGNO (breg)]);				\
	  putc (')', FILE);						\
	  break; }							\
      if (ireg != 0 || breg != 0)					\
	{ int scale = 1;						\
	  if (breg == 0)						\
	    abort ();							\
	  if (addr != 0)						\
	    output_addr_const (FILE, addr);				\
	  fprintf (FILE, "(%s", reg_name[REGNO (breg)]);		\
	  if (ireg != 0)						\
	    putc (',', FILE);						\
	  if (ireg != 0 && GET_CODE (ireg) == MULT)			\
	    { scale = INTVAL (XEXP (ireg, 1));				\
	      ireg = XEXP (ireg, 0); }					\
	  if (ireg != 0 && GET_CODE (ireg) == SIGN_EXTEND)		\
	    fprintf (FILE, "%s.w", reg_name[REGNO (XEXP (ireg, 0))]);	\
	  else if (ireg != 0)						\
	    fprintf (FILE, "%s.l", reg_name[REGNO (ireg)]);		\
	  if (scale != 1) fprintf (FILE, "*%d", scale);			\
	  putc (')', FILE);						\
	  break;							\
					\
	}								\
      else if (reg1 != 0 && GET_CODE (addr) == LABEL_REF)		\
	{ fprintf (FILE, "L%d-LI%d(pc,%s.w)",			\
		   CODE_LABEL_NUMBER (XEXP (addr, 0)),			\
		   CODE_LABEL_NUMBER (XEXP (addr, 0)),			\
		   reg_name[REGNO (reg1)]);				\
	  break; }							\
    default:								\
      if (GET_CODE (addr) == CONST_INT					\
	  && INTVAL (addr) < 0x8000					\
	  && INTVAL (addr) >= -0x8000)					\
	fprintf (FILE, "%d", INTVAL (addr));				\
      else								\
        output_addr_const (FILE, addr);					\
    }}

#define ASM_RETURN_CASE_JUMP return "jmp 2(pc,%0.w)"

/* Alignment of field after `int : 0' in a structure.  */

#undef EMPTY_FIELD_BOUNDARY
#define EMPTY_FIELD_BOUNDARY 16

/* Every structure or union's size must be a multiple of 2 bytes.  */

#define STRUCTURE_SIZE_BOUNDARY 16

/* This is BSD, so it wants DBX format.  */

#define DBX_DEBUGGING_INFOxx


#define bcopy(a,b,c) memcpy ((b),(a),(c))
#define bzero(a,b) memset ((a),0,(b))
#define bcmp(a,b,c) memcmp ((a),(b),(c))

/* Generate calls to memcpy, memcmp and memset.  */
#define TARGET_MEM_FUNCTIONS
