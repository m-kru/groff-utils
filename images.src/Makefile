IMAGES := \
	$(patsubst %.dia,%.pdf,$(wildcard *.dia)) \
	$(patsubst %.jpg,%.pdf,$(wildcard *.jpg)) \
	$(patsubst %.png,%.pdf,$(wildcard *.png))
IMAGES := $(addprefix ../images/,$(IMAGES))

all: $(IMAGES)

.images-dir:
	@mkdir -p ../images

../images/%.pdf: %.dia | .images-dir
	dia --nosplash -e $@ -t pdf $<

../images/%.pdf: %.jpg | .images-dir
	convert $< $@

../images/%.pdf: %.png | .images-dir
	convert $< $@
