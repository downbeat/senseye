PROJNAME=imager-adc
SRCDIR=src

document:
	pdfjoin $(SRCDIR)/$(PROJNAME)_schematic.pdf \
		$(SRCDIR)/$(PROJNAME)_board.pdf \
		$(SRCDIR)/$(PROJNAME)_top.pdf \
		$(SRCDIR)/$(PROJNAME)_bottom.pdf \
		$(SRCDIR)/$(PROJNAME)_silk.pdf
	mv $(PROJNAME)_silk-joined.pdf $(PROJNAME).pdf
