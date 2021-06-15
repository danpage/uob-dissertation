# Copyright (C) 2017 Daniel Page <csdsp@bristol.ac.uk>
#
# Use of this source code is restricted per the CC BY-SA license, a copy of
# which can be found via http://creativecommons.org (and should be included 
# as LICENSE.txt within the associated archive or repository).

# =============================================================================

BUILD   := ./build

SOURCES := $(wildcard *.tex)
TARGETS := $(patsubst %.tex, ${BUILD}/%.pdf, ${SOURCES})

# -----------------------------------------------------------------------------

define run_latex
    pdflatex                           -output-directory $${BUILD} $(strip ${1}).tex
endef

define run_biber
  if [ -f $${BUILD}/$(strip ${1}).bcf ]                                          ; then \
    biber --input-directory $${BUILD} --output-directory $${BUILD} $(strip ${1}) ;      \
  fi
endef

define build
$(addprefix $${BUILD}/$(strip ${1}), .pdf) : $(addprefix ./$(strip ${1}), .tex .bib .cls)
	@for i in $$$$(seq 3)               ; do \
	   $(call run_latex, $(strip ${1})) ;    \
	   $(call run_biber, $(strip ${1})) ;    \
         done
endef

$(foreach SOURCE, ${SOURCES}, $(eval $(call build, $(basename ${SOURCE}))))

# -----------------------------------------------------------------------------

all      : ${TARGETS}

clean    :
	@rm --force ${BUILD}/*

# =============================================================================
