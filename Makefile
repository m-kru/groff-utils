TITLE = Title

SRCS = \
	src/src1.ms \
	src/src2.ms

# Build targets
$(TITLE).pdf: build/$(TITLE).ms | .build-dir
	# Uncomment if document has images.
	#@make -C images.src/
	@groff -ms -Tpdf -Kutf8 $< > $@

build/$(TITLE).ms: $(SRCS) | .build-dir
	@cat $(SRCS) > $@

.build-dir:
	@mkdir -p build

.PHONY: clean
clean:
	@rm -f -r build

.PHONY: show
show:
	@evince $(TITLE).pdf > /dev/null 2>&1 &
