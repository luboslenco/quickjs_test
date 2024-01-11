
CFLAGS := -flto -std=gnu99 -O2
DEFINES := -D_GNU_SOURCE -DCONFIG_VERSION=\"2023-12-09\"

test: main.c
	cc $(DEFINES) main.c ./quickjs/quickjs.c ./quickjs/libunicode.c ./quickjs/libregexp.c ./quickjs/cutils.c ./quickjs/libbf.c -lm -o test ${CFLAGS}
