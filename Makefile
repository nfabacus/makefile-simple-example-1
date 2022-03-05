.PHONY: testing-all

all: test test2

.EXPORT_ALL_VARIABLES:
VAR1 = "testing"
VAR2 = "testing"
TARGET_BRANCH = "main"
CURRENT_BRANCH = $(shell git rev-parse --abbrev-ref HEAD)

test:
	$(info hello world)
	$(info VAR is $(VAR1))

test2:
	echo "current branch is $(CURRENT_BRANCH)"
	@if [ "$(CURRENT_BRANCH)" != "$(TARGET_BRANCH)" ]; then \
		git checkout $TARGET_BRANCH; \
	fi
	echo "finished"
