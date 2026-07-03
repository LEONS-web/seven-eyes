# Quick Start Guide · Nuwa Design Board

> 5 minutes from clone to your first pipeline run.

---

## Prerequisites

- **Reasonix** or **Claude Code** (any agent platform that reads Markdown skills)
- Git installed
- A product you want to design — or use our PetTime case study

---

## Step 1: Install

```bash
git clone https://github.com/YOUR_USERNAME/nuwa-design-board.git
cd nuwa-design-board

# One click
bash scripts/install.sh
# Windows: .\scripts\install.ps1
```

Restart your agent.

---

## Step 2: Write Your Product Brief

Create a `product-brief.md` with:

```markdown
# Product Brief

- **Product**: What is it?
- **Version / Goal**: What are you designing right now?
- **Hero Asset**: What is the most important thing on screen? (photo / content / data / task flow)
- **Theme Prominence**: 1-10 (1=minimal, 7=strong theme, 10=festival costume)
- **Platform**: HarmonyOS / iOS / Android / Web
- **Hard Constraints**: No network? No permissions? Local-first?
- **Known Issues**: What's wrong with current design?
```

Example: see `case-studies/pettime-witch/product-context-brief.md`

---

## Step 3: Run the Pipeline

### Option A: Full Board (recommended for new features/themes)

In a Reasonix or Claude Code session:

```
Load these skills: kenya-hara-design, paula-scher-design, susan-kare-design, yugo-nakamura-design, dieter-rams-design, refactoring-ui-design

Input: [paste your product brief here]

Run the pipeline from Kenya Hara to Refactoring UI, layer by layer.
For each layer, apply the designer's heuristics to the brief and the upstream output.
Output the conflict arbitration table when designers disagree.
Final output: A/B/C design direction variants with specific tactical parameters.
```

### Option B: Single Skill (for targeted issues)

```
Load: dieter-rams-design
Input: [your UI description + known problems]
Run Rams' subtraction protocol (H2) and honesty scan (H3).
Output: list of elements that should be removed, with deletion reasons.
```

---

## Step 4: Read the Output

Each layer outputs 10 fields. The final Refactoring UI output contains **executable design parameters**:
- Spacing scale values
- Type hierarchy specs
- Shadow elevation levels
- Color palette with hex values
- Border radius system
- Button hierarchy specs

Feed these directly to your UI code or to a visual prototyping tool like huashu-design.

---

## Step 5: Iterate

- Did a layer say something that doesn't make sense for your product? → The product brief always wins. Update the brief and re-run.
- Want to explore more aggressively? → Increase theme prominence, activate Sagmeister skill.
- Getting "too cold" feedback? → Check if Rams over-deleted — ask Scher/Kare for a second opinion.

---

## What to Expect

**Good pipeline runs produce:**
- Concrete, actionable feedback ("Delete 3 decorative divider lines, use increased spacing instead")
- Not hand-wavy critique ("Make it pop more")

**Good pipeline runs won't:**
- Generate visual mockups (that's huashu-design's job)
- Replace all human design judgment (the brief defines the goal; the pipeline constrains the path)
- Be appropriate for every project (game UI, brand art pieces → out of scope)

---

## Next

- Read `docs/pipeline-architecture.md` for the full arbitration system
- Read `docs/distillation-methodology.md` to add your own designers
- Check `case-studies/pettime-witch/` for a real product walkthrough
