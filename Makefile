.PHONY: install uninstall

CLAUDE_DIR := $(HOME)/.claude
TARGET := $(CLAUDE_DIR)/CLAUDE.md
SOURCE := $(CURDIR)/README.txt

help:
	@cat Makefile

install:
	@mkdir -p $(CLAUDE_DIR)
	@ln -sf $(SOURCE) $(TARGET)
	@echo "Symlinked $(SOURCE) -> $(TARGET)"

uninstall:
	@rm -f $(TARGET)
	@echo "Removed $(TARGET)"
