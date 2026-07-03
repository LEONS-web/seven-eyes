# Nuwa Design Board · 女娲设计董事会

> **Seven design masters. One pipeline. AI-powered design judgment.**

Nuwa Design Board is a **design decision framework** distilled from seven legendary designers. It's not a component library — it's a **judgment system**: seven AI-consumable skill files that work in sequence to critique, constrain, and guide any UI design toward clarity, memorability, and honesty.

Each skill captures **how a master designer thinks**, not what they made. The output is a chain of executable design decisions — not a style guide, not a mood board, not "make it prettier."

---

## The Board

```
product-context brief (your product, hero asset, goals, constraints)
  ↓
Kenya Hara — emptiness quality, material honesty, anti-cheap
  ↓
Paula Scher — brand memory, visual impact, theme prominence
  ↓
Susan Kare — icon language, micro-emotion, pixel-level warmth
  ↓
Yugo Nakamura — motion texture, interaction rhythm, idle=ambient
  ↓
Dieter Rams — subtraction gate, honesty audit, durability check
  ↓
Refactoring UI — spacing system, type hierarchy, shadow depth, color system
  ↓
Executable design parameters → code
```

**Special role**: Stefan Sagmeister — emotional impact for holiday/themed/marketing moments (lightweight, 4 heuristics)

---

## Why This Exists

**AI can write UI code. The output is usually embarrassing.**

In 2026, AI coding tools handle logic and structure well. But visual output still defaults to purple gradients, emoji icons, and identical slate-50 cards. The problem isn't tool capability — it's the lack of **design judgment** in the loop.

Nuwa Design Board fills that gap. It gives AI agents (and humans) a **decision framework for design**:
- Seven perspectives that check each other
- Conflict resolution rules ("when Scher says LOUD and Rams says QUIET, who wins?")
- Every heuristic is executable, not hand-wavy

---

## Quick Start

### Install (Reasonix / Claude Code)

```bash
# Clone the repo
git clone https://github.com/YOUR_USERNAME/nuwa-design-board.git
cd nuwa-design-board

# One-click install (copies all 7 skills to the active agent's skill directory)
bash scripts/install.sh
```

### Use

In your Reasonix or Claude Code session:

```
Load all 7 design skills from nuwa-design-board/skills/
Input the pettime-witch product brief from case-studies/pettime-witch/
Run the pipeline: Kenya Hara → Paula Scher → Susan Kare → Yugo Nakamura → Dieter Rams → Refactoring UI
Output design direction brief with A/B/C variants
```

Or step-by-step: load individual skills as needed. Each skill works standalone — you don't need the full board for every task.

---

## What's Inside

```
skills/
├── kenya-hara-design/SKILL.md          # Emptiness, material quality, anti-cheap (5 models, 8 heuristics)
├── paula-scher-design/SKILL.md         # Brand memory, visual impact (5 models, 8 heuristics)
├── susan-kare-design/SKILL.md          # Icon language, micro-emotion (5 models, 8 heuristics)
├── yugo-nakamura-design/SKILL.md       # Motion texture, interaction rhythm (5 models, 8 heuristics)
├── dieter-rams-design/SKILL.md         # Subtraction, honesty, durability (5 models, 8 heuristics)
├── refactoring-ui-design/SKILL.md      # Spacing, type, shadow, color systems (5 models, 8 heuristics)
└── stefan-sagmeister-design/SKILL.md   # Emotional impact for holidays/marketing (4 heuristics)

case-studies/pettime-witch/             # Real product validation (HarmonyOS pet companion app)
standards/                               # Shared quality gates, review checklists
docs/                                    # Pipeline architecture, distillation methodology
scripts/install.sh                       # One-click install for any agent platform
```

Each SKILL.md follows identical structure: **5 mental models + 8 heuristics + 8 anti-patterns + 10-field output contract + pipeline integration + cross-scenario migration**.

---

## The Distillation Methodology

We don't ask AI to "roleplay as Dieter Rams." We **distill** each designer's method into:

1. **Mental models** — How they see design problems
2. **Decision heuristics** — Executable if-then rules with trigger conditions
3. **Anti-patterns** — What they'd never do, and why
4. **Output contracts** — Standardized 10-field format consumed by the next layer
5. **Conflict arbitration** — When masters disagree, who wins in which scenario

This is a five-phase process: 6D research → framework synthesis → SKILL.md construction → quality verification → dual-agent refinement.

---

## Supported By

- **Reasonix** (DeepSeek V4 Pro) — Full pipeline execution at ¥2 per designer
- **Claude Code** (Anthropic Claude) — Single-skill deep dives
- **Any agent platform** that can consume Markdown skill files

---

## Case Study: PetTime · Little Witch Theme

*PetTime* (萌宠时光册) is a HarmonyOS desktop pet companion app. Its v1.5 "Little Witch Spring Garden" theme suffered from weak theme identity — users couldn't tell it apart from the default skin.

We ran the full 7-designer pipeline on the Little Witch home screen brief. The pipeline produced:
- Emptiness diagnosis (Kenya Hara): "Passive whitespace, no stage for photos"
- Brand memory check (Paula Scher): "Theme exists but won't be remembered"
- Icon warmth audit (Susan Kare): "Icons are cold — add 2px eye + 1px smile arc"
- Motion strategy (Yugo Nakamura): "Replace continuous floating particles with single-entry 300ms fade + press feedback"
- Subtraction gate (Dieter Rams): "3 decorative elements had no functional reason — deleted"
- Tactical specs (Refactoring UI): "4px spacing scale, slate-gray palette, 5-level shadow system"

Read the full pipeline run at `case-studies/pettime-witch/pipeline-run/`.

---

## Roadmap

- [x] 7 designer skills distilled (5 full + 1 lightweight)
- [x] Pipeline architecture and conflict arbitration
- [ ] Phase 4 quality verification (dual-agent cross-review)
- [ ] Phase 5 dual-agent refinement
- [ ] Full pipeline run on PetTime Little Witch (verification output)
- [ ] Refined "Pipeline Run Pack" (50-80K token compressed version)
- [ ] English language skill variants
- [ ] MCP server wrapper for one-command pipeline execution

---

## Contributing

You can:
- Use the distillation framework to add new designers to the board
- Submit improvements to existing heuristics
- Share pipeline run results on your own products

See `docs/distillation-methodology.md` for the full 5-phase process.

---

## License

MIT © 2026 Pengfei & Reasonix

---

*"Good design is not about artistic talent. It is about systems and constraints." — but mostly, it's about knowing which master to ask.*
