SOCEDS_DEST_ROOT= /home/sean/altera/15.0/embedded

CFLAGS += -I${SOCEDS_DEST_ROOT}/ip/altera/hps/altera_hps/hwlib/include \
	-I${SOCEDS_DEST_ROOT}/ip/altera/hps/altera_hps/hwlib/include/soc_cv_av -Dsoc_cv_av

CFLAGS_MOD += -DMICROPY_PY_DE0=1
SRC_MOD += de0/modde0.c
SRC_MOD += de0/led.c