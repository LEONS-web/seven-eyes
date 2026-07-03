# seven-eyes

> **Seven legendary designers watching over your UI.**

seven-eyes is a **design judgment pipeline** distilled from seven masters. Not a component library. Not a style guide. Seven perspectives that check each other — each asking one question about your design.

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
executable design parameters → code
```

**Special role**: Stefan Sagmeister — emotional impact for holiday/themed moments (4 heuristics)

---

## Why This Exists

AI can write UI code. The visual output is usually embarrassing — purple gradients, emoji icons, identical slate-50 cards everywhere. The missing piece isn't tool capability. It's **design judgment**.

seven-eyes gives AI agents (and humans) a **decision framework**:
- Seven perspectives that challenge each other
- Conflict resolution ("when Scher says LOUD and Rams says QUIET, who wins?")
- Every heuristic is executable — no hand-waving

---

## Quick Start

### Install

```bash
git clone https://github.com/LEONS-web/seven-eyes.git
cd seven-eyes
bash scripts/install.sh
# Windows: .\scripts\install.ps1
```

Copies all 7 skills to your agent's skill directory. Works with any platform that reads Markdown skill files.

### Run the Pipeline

Load all skills, feed in a product brief, run layer by layer:

```
Kenya Hara → Paula Scher → Susan Kare → Yugo Nakamura → Dieter Rams → Refactoring UI
```

Each skill also works standalone — you don't need the full board for every task.

---

## What's Inside

```
skills/
├── kenya-hara-design/       → emptiness, material quality, anti-cheap
├── paula-scher-design/      → brand memory, visual impact
├── susan-kare-design/       → icon language, micro-emotion
├── yugo-nakamura-design/    → motion texture, interaction rhythm
├── dieter-rams-design/      → subtraction, honesty, durability
├── refactoring-ui-design/   → spacing, type, shadow, color systems
└── stefan-sagmeister-design/ → holiday/marketing emotional impact

case-studies/                 → real product validation
standards/                    → shared quality gates, review checklists
docs/                         → pipeline architecture, methodology
scripts/                      → one-click install
```

Every SKILL.md: **5 mental models + 8 heuristics + 8 anti-patterns + 10-field output contract**.

---

## Case Study: PetTime · Little Witch Theme

PetTime (萌宠时光册) is a HarmonyOS desktop pet companion app. Its "Little Witch Spring Garden" theme suffered from weak identity — users couldn't tell it apart from the default.

Running the full pipeline produced:
- **Kenya Hara**: "Passive whitespace — no stage for photos"
- **Paula Scher**: "Theme exists but won't be remembered"
- **Susan Kare**: "Icons too cold — add 2px eye + smile arc"
- **Yugo Nakamura**: "Replace floating particles with single-entry 300ms fade"
- **Dieter Rams**: "3 decorative elements deleted — no functional reason"
- **Refactoring UI**: "4px spacing scale, slate-gray palette, 5-level shadow system"

Full run at `case-studies/pettime-witch/pipeline-run/`.

---

## How It's Made

Each designer goes through a five-phase distillation process. We don't ask AI to roleplay — we extract how they actually make decisions:

1. **Mental models** — How they see design problems
2. **Decision heuristics** — Executable if-then rules
3. **Anti-patterns** — What they'd never do
4. **Output contracts** — Standardized 10-field format
5. **Conflict arbitration** — When masters disagree, who wins

See `docs/distillation-methodology.md` for the full process.

---

## Roadmap

- [x] 7 designer skills (6 full + 1 lightweight)
- [x] Pipeline architecture with conflict resolution
- [ ] Quality verification (dual-agent cross-review)
- [ ] Full pipeline run on PetTime (verification output)
- [ ] Pipeline Run Pack (compressed 50-80K token version)
- [ ] MCP server wrapper for one-command execution

---

## Contribute

- Add new designers using the distillation framework
- Improve existing heuristics
- Share pipeline results from your own products

---

## License

MIT © 2026 Pengfei
