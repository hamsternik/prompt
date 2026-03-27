.PHONY: install uninstall

help:
	@cat Makefile

pp:
	git a README.txt
	git commit -m "update system prompt rules"
	git push origin main

CLAUDE_DIR := $(HOME)/.claude
PI_DIR := $(HOME)/.pi/agent
install: uninstall
	mkdir -p $(CLAUDE_DIR)
	ln -sf $(CURDIR)/README.txt $(CLAUDE_DIR)/CLAUDE.md
	ln -sf $(CURDIR)/README.txt $(PI_DIR)/SYSTEM.md

uninstall:
	rm -f $(CLAUDE_DIR)/CLAUDE.md
	rm -f $(PI_DIR)/SYSTEM.md
	@echo "Removed $(TARGET)"
