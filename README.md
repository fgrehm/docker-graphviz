# docker-graphviz

Graphviz in an Alpine Linux container

# Usage

    docker run --rm -v $(PWD):/graphviz fgrehm/graphviz dot -Tpng -o out.png input.dot

# Makefile example

Create a `Makefile` similar to the one below.  NOTE: make requires tab characters to be used for indentation so you will need to change spaces to tabs if you copy paste this text.

	.PHONY = render
	FORMAT = png
	TARGETS = $(patsubst %.dot,%.$(FORMAT),$(wildcard *.dot))
	VIEWER = tty -s && test -x /Applications && open -a preview

	render: $(TARGETS)

	%.$(FORMAT): %.dot
		docker run --rm -v $(PWD):/graphviz fgrehm/graphviz dot -T$(FORMAT) -o $@ $<
		$(VIEWER) $@ || true

Assuming you have a `services.dot`, you can create and preview (on macOS) `services.png` with:

	make

If you prefer a different format such as `pdf`:

	make FORMAT=pdf
