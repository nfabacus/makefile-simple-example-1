.PHONY: testing-all

all: test test2

.EXPORT_ALL_VARIABLES:
VAR1="testing"
VAR2="testing"
test:
	$(info hello world)
	$(info VAR is $(VAR1))

test2:
	@if [ "$(VAR1)" = "$(VAR2)" ]; then \
		echo "PASSED"; else \
		echo "FAILED"; \
	fi \

