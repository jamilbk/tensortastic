CFLAGS = -g -O3 -Wall

ERLANG_PATH = $(shell erl -eval 'io:format("~s", [lists:concat([code:root_dir(), "/erts-", erlang:system_info(version), "/include"])])' -s init stop -noshell)
CFLAGS += -I$(ERLANG_PATH)
CFLAGS += -Ic_src
LDFLAGS += -ltensorflow -L$(LIBTENSORFLOW_PATH)

LIB_NAME = priv/tensortastic_nif.so
ifneq ($(CROSSCOMPILE),)
    # crosscompiling
    CFLAGS += -fPIC
else
    # not crosscompiling
    ifneq ($(OS),Windows_NT)
        CFLAGS += -fPIC

        ifeq ($(shell uname),Darwin)
            LDFLAGS += -dynamiclib -undefined dynamic_lookup
        endif
    endif
endif

NIF_SRC=\
	c_src/tensortastic_nif.c

all: check_libtensorflow $(LIB_NAME)

check_libtensorflow: 
ifndef LIBTENSORFLOW_PATH
	$(error Please set LIBTENSORFLOW_PATH to the path containing libtensorflow.so)
endif

$(LIB_NAME): $(NIF_SRC)
	mkdir -p priv
	$(CC) $(CFLAGS) -shared $(LDFLAGS) $^ -o $@

clean:
	rm -f $(LIB_NAME)
	rm -rf _build

.PHONY: all clean check_libtensorflow 
