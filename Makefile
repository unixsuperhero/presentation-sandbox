.PHONY: build run all

build:
	./build

run:
	@if [ -z "$(w)" ]; then \
		echo "Usage: make run w=<number|name>"; \
		echo "  make run w=1"; \
		echo "  make run w=fund"; \
		exit 1; \
	fi
	./run $(w)

all: build
	./run $(w)
