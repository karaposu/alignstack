# Project Summary — Non-Technical

## What this project is

This project is a **book plus a companion toolkit** for people who use AI coding assistants (like Claude or Cursor) and want a more disciplined way to work with them. The book's name is **AlignStack**, and the whole thing is published online at `karaposu.github.io/alignstack/`. The folder on disk is still called `vibe-driven-development` — the earlier name — but everything inside has been rebranded to AlignStack.

There is almost no traditional "code" here. What looks like a software project is really three kinds of writing sitting side by side:

1. **A book** — chapters in plain text (markdown) that explain a methodology for working with AI on software projects.
2. **A set of ~35 "slash commands"** — small prompt files you can install into Claude Code or Cursor so the AI will follow specific procedures when you type things like `/critic`, `/explore`, or `/sense-making`.
3. **An active research notebook** — the author's ongoing notes where he's still working out the ideas, many written this month.

The only real executable code is a 90-line install script (downloads the commands to your machine) and a 60-line hook (auto-stamps a little metadata header onto new documentation files).

## What it currently does

The things that are actually working and usable today:

- **The book reads end-to-end.** Twelve chapters covering the methodology, plus nine appendices of ready-to-copy prompts. It's built as a static website using a tool called mdBook (a book-building tool), with a config file pointing at a live GitHub Pages site.
- **The slash commands install.** Running `bash install.sh` copies ~35 command files into your local Claude config directory so you can use them from the terminal. Cursor users can copy them over too.
- **The commands themselves are self-contained instructions** that tell the AI, step by step, how to perform a specific thinking task: critique a plan, explore a codebase, write a project summary, decompose a problem, and so on. Each command is a detailed recipe — some are 10 lines, others are 800+ lines with full methodology baked in.
- **The metadata hook works.** If you wire it up in your Claude settings, every file the AI writes under a `devdocs/` folder automatically gets a date / git-branch / author header at the top.

## What it appears to be trying to do

Several things are clearly still in motion:

- **A deeper "thinking disciplines" framework is being built underneath the book.** Folders like `thinking_disciplines/` and `enes/` contain essays arguing that operations like *sensemaking*, *innovation*, *critique*, and *exploration* are formal cognitive disciplines with definable components, processes, and failure modes — independent of software. The slash commands are being reworked to implement these disciplines. This layer feels newer and more ambitious than the book, and the book hasn't fully caught up to it yet.
- **A "SIC loop" (Sensemaking → Innovation → Critique) is being established as a primitive.** The `/MVL` and `/MVL+` commands chain these three together, creating inquiry folders that track their own state across sessions. The author is using this on the project itself — there are 35 inquiry folders in `devdocs/inquiries/` where he's researched things like "what is intuition," "how does thinking-space work," "how to audit disciplines," each producing a `finding.md`.
- **The "archaeology pattern" is being wired in.** The very command the user just invoked (`/arch-small-summary`) is part of a small family (`/arch-intro`, `/arch-traces`) meant to run on an unfamiliar codebase and produce orientation docs. The project's own `CLAUDE.md` tells any Claude agent working here to run these first if they're stale.
- **Several commands are clearly mid-refactor.** You can see files like `old_MVL.md`, `old2_MVL.md`, `old_comprehend copy.md` sitting next to their replacements — the author keeps old versions around while the new ones settle.

## What looks half-built or abandoned

- **The published book is out of date.** The built HTML in `book/` was generated months ago and doesn't reflect the newer ideas in `thinking_disciplines/` or `enes/`. Someone reading the website right now is getting an older version of the thinking.
- **Chapter 7 has leftover files** (`probe_tests_fixed copy.md` alongside `probe_tests_fixed.md`) — the kind of clutter that suggests in-progress editing.
- **The `agent/` folder contains only a README** — placeholder for something not yet built.
- **A few scattered notes** (`a.md`, `b.md`, `note.md`, `debug.md`, `issue.md`, `points.md`, `sensemaking.md` at the root) look like scratch pads rather than finished content.
- **The name mismatch** — folder says "vibe-driven-development," everything inside says "AlignStack" — hints the rebrand isn't fully finished.

## Who would use this and why

Two audiences, really:

- **Developers who feel AI coding assistants are powerful but unreliable** — who want a structured way to keep the AI from drifting, losing context, or building the wrong thing. They'd read the book for the mental model and install the slash commands to get help running the methodology day-to-day.
- **People interested in AI collaboration as a practice** — not just coders, but anyone thinking about how humans and AI should share work. The "thinking disciplines" material pushes past software into general questions about how structured thinking can be made repeatable when the thinker is partly a machine.

## The general shape

This is **a book plus a Claude Code / Cursor plugin**, distributed as a single GitHub repository. If you had to put it in one sentence: it's a writer-and-researcher's workshop, where the product you can use today (the book, the commands) sits next to the author's live notes on what he thinks the product should become next.
