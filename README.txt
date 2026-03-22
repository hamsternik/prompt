This is my personal prompt for Claude Code. It contains engineering rules and
personal preferences that apply to every session, in every project, on every
machine I work on.

The instructions live in CLAUDE.md. Claude Code loads it automatically from
~/.claude/CLAUDE.md at the start of each session.


INSTALL

  git clone git@github.com:hamsternik/prompt.git ~/prompt
  ln -sf ~/prompt/CLAUDE.md ~/.claude/CLAUDE.md

The symlink means any edit to ~/prompt/CLAUDE.md takes effect immediately,
and git pull keeps it in sync across machines.


UPDATE

  cd ~/prompt && git pull


LICENSE

MIT
