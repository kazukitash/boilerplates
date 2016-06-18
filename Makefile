AR			:= tar
ARFLAGS	:= cjvf
AREXS		:= --exclude node_modules --exclude .git
DIR			:= $(shell ls | grep -v install | grep -v dist | grep -v Makefile)
DIST		:= $(DIR:%=%.tar.gz)

all: $(DIST)

$(DIST):
	$(AR) $(ARFLAGS) dist/$@ $(AREXS) $(subst .tar.gz,,$@)
