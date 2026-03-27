.PHONY: install uninstall

CLAUDE_DIR := $(HOME)/.claude
TARGET := $(CLAUDE_DIR)/CLAUDE.md
SOURCE := $(CURDIR)/README.txt

help:
	@cat Makefile

pp:
	git a README.txt
	git commit -m "update system prompt rules"
	git push origin main

install: uninstall
	@mkdir -p $(CLAUDE_DIR)
	@ln -sf $(SOURCE) $(TARGET)
	@echo "Symlinked $(SOURCE) -> $(TARGET)"

uninstall:
	@rm -f $(TARGET)
	@echo "Removed $(TARGET)"
