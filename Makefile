.PHONY: install uninstall

CLAUDE_DIR := $(HOME)/.claude
TARGET := $(CLAUDE_DIR)/CLAUDE.md
SOURCE := $(CURDIR)/CLAUDE.md

install:
	@mkdir -p $(CLAUDE_DIR)
	@ln -sf $(SOURCE) $(TARGET)
	@echo "Symlinked $(SOURCE) -> $(TARGET)"

uninstall:
	@rm -f $(TARGET)
	@echo "Removed $(TARGET)"
