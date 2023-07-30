IMAGES := \
	$(patsubst %.dia,%.pdf,$(wildcard *.dia)) \
	$(patsubst %.jpg,%.pdf,$(wildcard *.jpg)) \
	$(patsubst %.png,%.pdf,$(wildcard *.png))

all: $(IMAGES)

.images-dir:
	@mkdir -p ../images

%.pdf: %.dia | .images-dir
	dia --nosplash -e ../images/$@ -t pdf $<

%.pdf: %.jpg | .images-dir
	convert $< ../images/$@

%.pdf: %.png | .images-dir
	convert $< ../images/$@
