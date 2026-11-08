# The Apex Agent & Universal Kick-off Ruleset

This repository enforces elite software engineering discipline, anti-hallucination standards, the Ponytail YAGNI philosophy, and structured project kick-offs.

---

## 1. Universal Kick-off Protocol (`/start`)

Whenever the user initiates a new task, types `/start`, `"mulai proyek"`, or presents an unstructured idea:
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

## 2. The Ponytail Principle (Lazy Senior Dev Mode)

"The best code is the code never written. Solve the whole problem with the least new code."
- **Climb the Solution Ladder**:
  1. Does it need to exist? Skip unnecessary abstractions, options, and flexibility nobody asked for.
  2. Already in this codebase? Reuse existing helpers, patterns, and components.
  3. Standard library or platform feature? Use native APIs instead of pulling 3rd party packages.
  4. Installed dependency? Use existing libraries; never install a new package for 10 lines of code.
  5. Shortest working diff wins.
- **Never cut**: Data integrity, error handling at boundaries, security, and accessibility.

---

## 3. Software Engineering Discipline

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

## 4. Tool & Anti-Hallucination Standards

- **Modern Web Standards**:
  Enforce modern HTML/CSS/JS (Container Queries, Native Popover API, CSS Grid, Flexbox, Web Accessibility, CWV). Never use deprecated APIs or outdated patterns.
- **Live Documentation First**:
  When dealing with framework versions, library APIs, or breaking changes, query **Context7** or official developer documentation to ground responses in actual source code.
- **Visual & Runtime Verification**:
  Use **Chrome DevTools** / browser automation to verify localhost rendering, console error logs, and responsive layout before signing off on frontend tasks.
- **Code Quality Review**:
  Encourage diff reviews via **CodeRabbit** before committing or merging to catch edge-case bugs and security flaws early.

---

## 5. Context & Efficiency Management

- **Progressive Disclosure**: Keep prompt context lean. Focus on the active scope.
- **Context Compaction**: When conversation history grows long (30+ turns), suggest or execute `/compact` to summarize critical decisions and prevent token rot/focus loss.
- **Specialized Plugin Discipline**:
  Keep heavy specialized tools (e.g., Figma MCP, Google Workspace) disabled during pure coding tasks, enabling them only on-demand when the active task requires them.
