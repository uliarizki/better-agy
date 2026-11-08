#!/usr/bin/env bash
set -e

echo -e "\033[1;36m==========================================================\033[0m"
echo -e "\033[1;36m  ANTIGRAVITY: APEX AGENT & UNIVERSAL KICK-OFF SETUP     \033[0m"
echo -e "\033[1;36m==========================================================\033[0m"

TARGET_PATHS=()

# Detect .antigravity-profiles
if [ -d "$HOME/.antigravity-profiles" ]; then
    for profile in "$HOME/.antigravity-profiles"/*; do
        if [ -d "$profile" ]; then
            TARGET_PATHS+=("$profile/.gemini/config")
        fi
    done
fi

# Fallback default
if [ ${#TARGET_PATHS[@]} -eq 0 ]; then
    TARGET_PATHS+=("$HOME/.gemini/config")
fi

AGENTS_CONTENT='# Global Ruleset: The Apex Agent & Universal Kick-off

This ruleset governs the AI agent across all projects and workspaces, enforcing elite engineering discipline, anti-hallucination protocols, and structured project kick-offs.

---

## 1. Universal Kick-off Protocol (`/start`)

Whenever the user initiates a new task, types `/start`, "mulai proyek", or presents an unstructured idea:
1. **Identify the Track**:
   - **Track A (Software & Engineering)**: Web, mobile app, API, CLI, or automation.
   - **Track B (Business & Product)**: Idea validation, PRD, Lean Canvas, strategy, or monetization.
   - **Track C (Research & Writing)**: Analysis, market research, content, or formal documentation.
   - **Track D (Design & UI/UX)**: User flow, wireframes, or interface concepts.
2. **Clarify the 3 Foundations**:
   - **Problem**: What core problem or opportunity does this address?
   - **Audience**: Who are the end-users, readers, or stakeholders?
   - **Deliverable**: What is the expected tangible output?
3. **Draft a Phased Roadmap**:
   - Always present a phased `- [ ]` checklist (Milestones 1, 2, 3) before executing heavy work.

---

## 2. Software Engineering Discipline

When writing or modifying code:
- **Test-Driven Development (TDD)**:
  Write failing unit/integration tests before writing implementation code. Verify the failure, implement the solution, and verify the pass.
- **Systematic Debugging**:
  Never guess or apply blind patches. Formulate hypotheses, inspect root causes with logs/breakpoints, fix the underlying defect, and verify the fix.
- **Evidence-First Verification**:
  Never claim a task is "done" or "working" without providing tangible evidence (test suite output, terminal logs, or browser verification).
- **Workspace Isolation**:
  Use isolated git worktrees or feature branches for substantial changes to keep the main branch clean and safe.

---

## 3. Tool & Anti-Hallucination Standards

- **Modern Web Standards**:
  Enforce modern HTML/CSS/JS (Container Queries, Native Popover API, CSS Grid, Flexbox, Web Accessibility, CWV). Never use deprecated APIs or outdated patterns.
- **Live Documentation First**:
  When dealing with framework versions, library APIs, or breaking changes, query **Context7** or official developer documentation to ground responses in actual source code.
- **Visual & Runtime Verification**:
  Use **Chrome DevTools** / browser automation to verify localhost rendering, console error logs, and responsive layout before signing off on frontend tasks.
- **Code Quality Review**:
  Encourage diff reviews via **CodeRabbit** before committing or merging to catch edge-case bugs and security flaws early.

---

## 4. Context & Efficiency Management

- **Progressive Disclosure**: Keep prompt context lean. Focus on the active scope.
- **Context Compaction**: When conversation history grows long (30+ turns), suggest or execute `/compact` to summarize critical decisions and prevent token rot/focus loss.
- **Specialized Plugin Discipline**:
  Keep heavy specialized tools (e.g., Figma MCP, Google Workspace) disabled during pure coding tasks, enabling them only on-demand when the active task requires them.
'

SKILL_CONTENT='---
name: start-project
description: Use when the user types "/start", "start project", "mulai proyek", "kickoff", or wants to initiate any new task, idea, or project—whether programming, business, research, writing, or creative design.
---

# Universal Project Kick-off Workflow (`/start`)

Use this skill whenever the user triggers a new initiative with `/start`, "mulai proyek", or presents a raw concept. This workflow turns raw ideas into structured, high-impact execution plans across four domains: Software, Business/Product, Research/Writing, and Design/Creative.

---

## Phase 1: Track Identification (Triage)
Quickly assess which track the project belongs to:
* **Track A — Software & Engineering**: Web apps, mobile apps, backend APIs, automation scripts, CLI tools.
* **Track B — Business & Product Strategy**: New venture ideas, Lean Canvas, PRD (Product Requirements Document), pitch decks, monetization models.
* **Track C — Research, Analysis & Writing**: In-depth reports, market research, content strategy, documentation, data synthesis.
* **Track D — Design & UI/UX**: User flows, wireframes, component design systems, mockup-to-code planning.

If the track is ambiguous from the user initial prompt, ask a single targeted question to clarify the primary track.

---

## Phase 2: Discovery (The 3 Core Questions)
Clarify the project foundation by answering or asking:
1. **The Problem**: What specific problem or opportunity does this solve? Why does it matter?
2. **The Target Audience**: Who are the primary users, readers, or stakeholders?
3. **The Deliverable**: What is the tangible output expected at the end of this session? (e.g., git repo, markdown report, interactive prototype, spreadsheet).

---

## Phase 3: Dynamic Tool & Skill Routing
Connect the project with the right Antigravity capabilities:

* **For Track A (Software)**:
  * Invoke `superpowers:brainstorming` and `superpowers:writing-plans`.
  * Establish TDD plan (`test-driven-development`) before writing implementation code.
  * Plan browser/UI verification using `Chrome DevTools`.
  * Verify library dependencies using `Context7`.

* **For Track B (Business & Product)**:
  * Generate a structured PRD (Executive Summary, Problem, Personas, User Stories, Acceptance Criteria, Success Metrics).
  * Structure MVP features into "Must-have", "Nice-to-have", and "Out-of-scope".

* **For Track C (Research & Writing)**:
  * Formulate research queries and outline the document structure.
  * Fact-check assertions and provide clear citations/sources.
  * Format output in clean GitHub-flavored markdown.

* **For Track D (Design & Creative)**:
  * Map information architecture and screen-by-screen user journeys.
  * Leverage Mobbin patterns or Figma design references where applicable.

---

## Phase 4: Execution Launchpad (Actionable Roadmap)
Present a clear, phased roadmap with a markdown task checklist:
```markdown
### Project Roadmap: [Project Name]
- [ ] Phase 1: [Immediate Foundation / Specs]
- [ ] Phase 2: [Core Implementation / Development / Drafting]
- [ ] Phase 3: [Review, Polish, & Verification]
```

**End with a call to action**: Ask the user for approval or feedback to begin Phase 1 immediately.
'

for CFG in "${TARGET_PATHS[@]}"; do
    echo -e "\n\033[1;33m[+] Configuring: $CFG\033[0m"
    mkdir -p "$CFG/skills/start-project"
    echo "$AGENTS_CONTENT" > "$CFG/AGENTS.md"
    echo -e "    \033[1;32m-> Installed AGENTS.md ruleset\033[0m"
    echo "$SKILL_CONTENT" > "$CFG/skills/start-project/SKILL.md"
    echo -e "    \033[1;32m-> Installed /start skill (Universal Kick-off)\033[0m"
done

echo -e "\n\033[1;36m==========================================================\033[0m"
echo -e "\033[1;36m  SETUP SUCCESSFUL! REQUIRED MARKETPLACE PLUGINS:        \033[0m"
echo -e "\033[1;36m==========================================================\033[0m"
echo -e "Buka Antigravity > Customizations > Marketplace, lalu Add:"
echo -e "1. Superpowers"
echo -e "2. Modern Web Guidance"
echo -e "3. Context7"
echo -e "4. Chrome DevTools"
echo -e "5. CodeRabbit"
echo -e "6. Vercel"
echo -e "7. Supabase"
echo -e "\n\033[1;32mSelesai! Kamu bisa langsung ketik /start di Antigravity!\033[0m\n"
