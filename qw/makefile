################################################################
#
# $Id:$
#
# $Log:$
#
#CC=  gcc  # gcc or g++
CC=  gcc
#STRIP=  strip  # gcc or g++
STRIP=  strip

CFLAGS= -O2  -I../wat/inc
LDFLAGS= -L../wat/lib
LIBS= -lwatt

# subdirectory for objects
O=dos

# not too sophisticated dependency
OBJS=                           \
$(O)/cd_audio.o  \
$(O)/mathlib.o  \
$(O)/d_edge.o \
$(O)/r_aclip.o  \
$(O)/r_vars.o   \
$(O)/d_fill.o   \
$(O)/r_alias.o  \
$(O)/sbar.o     \
$(O)/cl_demo.o  \
$(O)/d_init.o   \
$(O)/keys.o     \
$(O)/r_bsp.o    \
$(O)/screen.o   \
$(O)/cl_input.o \
$(O)/d_modech.o \
$(O)/r_draw.o   \
$(O)/cl_main.o  \
$(O)/d_part.o   \
$(O)/menu.o     \
$(O)/r_edge.o   \
$(O)/cl_parse.o \
$(O)/d_polyse.o \
$(O)/model.o    \
$(O)/r_efrag.o  \
$(O)/cl_tent.o  \
$(O)/d_scan.o   \
$(O)/r_light.o  \
$(O)/cmd.o      \
$(O)/d_sky.o    \
$(O)/r_main.o   \
$(O)/view.o     \
$(O)/common.o   \
$(O)/d_sprite.o \
$(O)/r_misc.o   \
$(O)/wad.o      \
$(O)/d_surf.o   \
$(O)/r_part.o   \
$(O)/console.o  \
$(O)/d_vars.o   \
$(O)/r_sky.o    \
$(O)/zone.o     \
$(O)/crc.o      \
$(O)/d_zpoint.o \
$(O)/r_sprite.o \
$(O)/cvar.o     \
$(O)/draw.o     \
$(O)/r_surf.o   \
$(O)/pmove.o   \
$(O)/pmovetst.o   \
$(O)/cl_ents.o   \
$(O)/cl_pred.o   \
$(O)/cl_cam.o   \
$(O)/skin.o   \
$(O)/md4.o   \
$(O)/net_udp.o  \
$(O)/net_chan.o \
$(O)/snd_dos.o  \
$(O)/snd_dma.o  \
$(O)/snd_gus.o  \
$(O)/snd_mix.o  \
$(O)/snd_mem.o  \
$(O)/dos_v2.o   \
$(O)/in_dos.o   \
$(O)/vid_vga.o  \
$(O)/vid_ext.o  \
$(O)/vregset.o  \
$(O)/d_copy.o \
$(O)/sys_dosa.o \
$(O)/vid_dos.o   \
$(O)/j.o \
$(O)/D_DRAW.o \
$(O)/D_DRAW16.o \
$(O)/D_PARTA.o \
$(O)/D_POLYSA.o \
$(O)/D_SCANA.o \
$(O)/D_SPR8.o \
$(O)/D_VARSA.o \
$(O)/MATH.o \
$(O)/R_ACLIPA.o \
$(O)/R_ALIASA.o \
$(O)/R_EDGEA.o \
$(O)/R_VARSA.o \
$(O)/R_DRAWA.o \
$(O)/SND_MIXA.o \
$(O)/SURF16.o \
$(O)/SURF8.o 


all:     qw.exe

clean:
	rm -f *.o *~ *.flc
	rm -f qw.exe
	rm -f dqw.exe
	rm -f dos/*.o

qw.exe: $(OBJS) $(O)/sys_dos.o
	$(CC) $(CFLAGS) $(LDFLAGS) $(OBJS) $(O)/sys_dos.o \
	-o dqw.exe $(LIBS)
#	rm  qw.exe
	cp dqw.exe qw.exe
	$(STRIP) qw.exe
	

DO_AS=$(CC) $(CFLAGS)  -x assembler-with-cpp -o $@ -c $<

#Assembly stuff
$(O)/d_copy.o : d_copy.s
	$(DO_AS)

$(O)/sys_dosa.o :       sys_dosa.s
	$(DO_AS)

$(O)/r_edgea.o :        r_edgea.s
	$(DO_AS)

$(O)/surf8.o :  surf8.s
	$(DO_AS)

$(O)/surf16.o : surf16.s
	$(DO_AS)

$(O)/math.o :   math.s
	$(DO_AS)

$(O)/d_polysa.o :       d_polysa.s
	$(DO_AS)

$(O)/DOSASM.o : dosasm.s
	$(DO_AS)

$(O)/D_DRAW.o : d_draw.s
	$(DO_AS)

$(O)/D_DRAW16.o : D_draw16.s
	$(DO_AS)

$(O)/D_PARTA.o : D_PARTA.s
	$(DO_AS)

$(O)/D_POLYSA.o : d_polysa.s
	$(DO_AS)

$(O)/D_SCANA.o : d_scana.s
	$(DO_AS)

$(O)/D_SPR8.o : d_spr8.s
	$(DO_AS)

$(O)/D_VARSA.o : d_varsa.s
	$(DO_AS)

$(O)/MATH.o : math.s
	$(DO_AS)

$(O)/R_ACLIPA.o : r_aclipa.s
	$(DO_AS)

$(O)/R_ALIASA.o : r_aliasa.s
	$(DO_AS)

$(O)/R_DRAWA.o : R_DRAWA.s
	$(DO_AS)

$(O)/R_EDGEA.o : r_edgea.s
	$(DO_AS)

$(O)/R_VARSA.o : r_varsa.s
	$(DO_AS)

$(O)/SND_MIXA.o : snd_mixa.s
	$(DO_AS)

$(O)/SURF16.o : surf16.s
	$(DO_AS)

$(O)/SURF8.o : surf8.s
	$(DO_AS)

$(O)/WORLDA.o : worlda.s
	$(DO_AS)


$(O)/%.o:       %.c
	$(CC) $(CFLAGS) -c $< -o $@


#############################################################
#
#############################################################
