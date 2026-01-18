.PHONY: build run all

build:
	./bin/build

run:
	@if [ -z "$(w)" ]; then \
		echo "Usage: make run w=<number|name>"; \
		echo "  make run w=1"; \
		echo "  make run w=fund"; \
		exit 1; \
	fi
	./bin/run $(w)

all: build
	./bin/run $(w)
