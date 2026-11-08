---
name: start-project
description: Use when the user types '/start', 'start project', 'mulai proyek', 'kickoff', or wants to initiate any new task, idea, or project—whether programming, business, research, writing, or creative design.
---

# Universal Project Kick-off Workflow (`/start`)

Use this skill whenever the user triggers a new initiative with `/start`, `"mulai proyek"`, or presents a raw concept. This workflow turns raw ideas into structured, high-impact execution plans across four domains: Software, Business/Product, Research/Writing, and Design/Creative.

---

## Phase 1: Track Identification (Triage)
Quickly assess which track the project belongs to:
* **Track A — Software & Engineering**: Web apps, mobile apps, backend APIs, automation scripts, CLI tools.
* **Track B — Business & Product Strategy**: New venture ideas, Lean Canvas, PRD (Product Requirements Document), pitch decks, monetization models.
* **Track C — Research, Analysis & Writing**: In-depth reports, market research, content strategy, documentation, data synthesis.
* **Track D — Design & UI/UX**: User flows, wireframes, component design systems, mockup-to-code planning.

If the track is ambiguous from the user's initial prompt, ask a single targeted question to clarify the primary track.

---

## Phase 2: Discovery (The 3 Core Questions)
Clarify the project's foundation by answering or asking:
1. **The Problem**: What specific problem or opportunity does this solve? Why does it matter?
2. **The Target Audience**: Who are the primary users, readers, or stakeholders?
3. **The Deliverable**: What is the tangible output expected at the end of this session? (e.g., git repo, markdown report, interactive prototype, spreadsheet).

---

## Phase 3: Dynamic Tool & Skill Routing
Connect the project with the right Antigravity capabilities:

* **For Track A (Software)**:
  * Invoke `superpowers:brainstorming` and `superpowers:writing-plans`.
  * Enforce Ponytail YAGNI ladder: write the least amount of code necessary.
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
