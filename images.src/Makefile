IMAGES := $(addprefix ../images/, \
	$(patsubst %.dia,%.pdf,$(wildcard *.dia)) \
	$(patsubst %.jpg,%.pdf,$(wildcard *.jpg)) \
	$(patsubst %.odg,%.pdf,$(wildcard *.odg)) \
	$(patsubst %.png,%.pdf,$(wildcard *.png)) \
)

all: $(IMAGES)

.images-dir:
	@mkdir -p ../images

../images/%.pdf: %.dia | .images-dir
	dia --nosplash -e $@ -t pdf $<

../images/%.pdf: %.jpg | .images-dir
	convert $< $@

../images/%.pdf: %.odg | .images-dir
	lodraw --headless --convert-to pdf --outdir ../images $<

../images/%.pdf: %.png | .images-dir
	convert $< $@
