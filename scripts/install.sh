#!/usr/bin/env bash
# Nuwa Design Board · One-click install
# Copies all 7 designer skills to the active agent's skill directory
# Supports: Reasonix, Claude Code, Cursor, Codex
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
SKILLS_SRC="$SCRIPT_DIR/../skills"

echo "🎨 Nuwa Design Board · Installer"
echo "================================"
echo ""

# Detect platform
detect_platform() {
    if [ -d "$HOME/.reasonix/skills" ]; then
        echo "reasonix"
    elif [ -d "$HOME/.claude/skills" ]; then
        echo "claude"
    elif [ -d "$HOME/.cursor/skills" ]; then
        echo "cursor"
    elif [ -d "$HOME/.codex/skills" ]; then
        echo "codex"
    else
        echo ""
    fi
}

PLATFORM=$(detect_platform)

if [ -z "$PLATFORM" ]; then
    echo "⚠️  No supported agent platform detected."
    echo "   Supported: Reasonix, Claude Code, Cursor, Codex"
    echo ""
    echo "Manual install: copy skills/* to your agent's skill directory"
    exit 1
fi

case $PLATFORM in
    reasonix)
        TARGET="$HOME/.reasonix/skills"
        ;;
    claude)
        TARGET="$HOME/.claude/skills"
        ;;
    cursor)
        TARGET="$HOME/.cursor/skills"
        ;;
    codex)
        TARGET="$HOME/.codex/skills"
        ;;
esac

echo "📦 Platform detected: $PLATFORM"
echo "📂 Target directory: $TARGET"
echo ""

# Create target if needed
mkdir -p "$TARGET"

# Copy skills (preserving structure)
echo "📋 Installing skills..."
echo ""

SKILLS=(
    "kenya-hara-design"
    "paula-scher-design"
    "susan-kare-design"
    "yugo-nakamura-design"
    "dieter-rams-design"
    "refactoring-ui-design"
    "stefan-sagmeister-design"
)

INSTALLED=0
for skill in "${SKILLS[@]}"; do
    SRC="$SKILLS_SRC/$skill"
    DST="$TARGET/$skill"

    if [ ! -d "$SRC" ]; then
        echo "   ⚠️  $skill: source not found, skipping"
        continue
    fi

    # Remove old version if exists
    rm -rf "$DST"

    # Copy only SKILL.md + references (no research raw data)
    mkdir -p "$DST"
    cp "$SRC/SKILL.md" "$DST/SKILL.md"

    if [ -d "$SRC/references" ]; then
        mkdir -p "$DST/references"
        # Only copy phase2-synthesis.md, skip raw research files
        if [ -f "$SRC/references/phase2-synthesis.md" ]; then
            cp "$SRC/references/phase2-synthesis.md" "$DST/references/"
        fi
    fi

    echo "   ✅ $skill"
    INSTALLED=$((INSTALLED + 1))
done

echo ""
echo "🎉 Done! $INSTALLED/7 skills installed to $TARGET"
echo ""
echo "Next steps:"
echo "   1. Restart your agent (Reasonix / Claude Code)"
echo "   2. In a session, try: 'Load kenya-hara-design skill'"
echo "   3. Run the full pipeline: load all 7, input a product brief"
echo ""
echo "   Quick start guide: docs/quick-start.md"
