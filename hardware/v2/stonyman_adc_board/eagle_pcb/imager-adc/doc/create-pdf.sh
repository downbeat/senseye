#!/bin/sh

PROJNAME=imager-adc

for ii in `ls -1 *.ps`; do ps2pdf $ii; done
pdfjoin ${PROJNAME}_schematic.pdf \
        ${PROJNAME}_board.pdf \
        ${PROJNAME}_top.pdf \
        ${PROJNAME}_bottom.pdf \
        ${PROJNAME}_silk.pdf
mv ${PROJNAME}_silk-joined.pdf ${PROJNAME}.pdf

