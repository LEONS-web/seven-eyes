# seven-eyes

> 七位设计师的决策框架，给 AI 编码代理人用设计判断力。
> / A design judgment pipeline for AI coding agents. Seven perspectives, one output.

---

## 这是什么

让 AI 写 UI 代码不难，让它写出**不丑**的 UI 很难。问题不在模型能力，在它缺设计判断力。

seven-eyes 把七位设计师的工作方法提炼成可执行的规则：不是泛泛的"简洁大气"，而是具体的 if-then 约束——用多少间距、删什么元素、冲突时谁让谁。AI agent 拿到规则就能出能看的界面，人也能用它做设计审查。

---

## 流水线

```
产品简报（你的产品、核心视觉资产、目标、限制条件）
  ↓
原研哉 — 空的品质、材质诚实、反廉价（美学底线）
  ↓
Paula Scher — 品牌记忆、视觉冲击、主题辨识度（一眼记住）
  ↓
Susan Kare — 图标语言、像素级温度、微情感（符号系统）
  ↓
Yugo Nakamura — 动效质感、交互节奏、idle 不是静止
  ↓
Dieter Rams — 减法闸门、诚实审计、耐久性检查
  ↓
Refactoring UI — 间距系统、字重层级、阴影深度、色彩体系（落地战术）
  ↓
可执行的设计参数 → 代码
```

每层出 10 个字段的结构化输出，最后一层收口成 design-to-code brief。Scher 说大、Rams 说小——冲突仲裁规则写死了，不会卡在原地。

**额外角色**：Stefan Sagmeister — 节日/主题活动的情感冲击力（4 条启发式，轻量版）

---

## 安装

```bash
git clone https://github.com/LEONS-web/seven-eyes.git
cd seven-eyes
bash scripts/install.sh        # macOS / Linux
.\scripts\install.ps1          # Windows
```

把 7 个 Skill 复制到你的 agent 技能目录，Claude Code、Codex、Cursor 都能直接用。每个 Skill 也可以独立调用，不需要每次都跑完整流水线。

---

## 目录结构

```
skills/
├── kenya-hara-design/        → 空与物性、材质诚实
├── paula-scher-design/       → 品牌记忆、视觉冲击
├── susan-kare-design/        → 像素符号、微情感
├── yugo-nakamura-design/     → 动效节奏、交互质感
├── dieter-rams-design/       → 减法、诚实、耐久
├── refactoring-ui-design/    → 间距/字重/阴影/色彩 token 系统
└── stefan-sagmeister-design/ → 节日/营销情感冲击

case-studies/                 → 真实产品验证案例
standards/                    → 共享质量门禁、审查清单
docs/                         → 流水线架构、方法论说明
scripts/                      → 一键安装
```

每个 `SKILL.md` 标准结构：5 个心智模型 + 8 条启发式 + 8 个反模式 + 10 字段输出契约。

---

## 验证案例：萌宠时光册 · 小女巫春季花园

萌宠时光册是 HarmonyOS 桌面宠物陪伴相册。其"小女巫春季花园"主题存在辨识度弱的问题——用户分不出它和默认主题的区别。

跑完整流水线后：

- **原研哉**：留白是被动的，没有给照片制造舞台感
- **Scher**：主题是存在的，但不会被记住
- **Kare**：图标太冷，加 2px 眼睛 + 上弧微笑
- **Nakamura**：飘落粒子改成单入口 300ms 淡入
- **Rams**：删掉 3 个纯装饰元素，没有功能理由
- **Refactoring UI**：4px 间距刻度、slate-gray 色板、5 级阴影系统

完整过程见 `case-studies/pettime-witch/pipeline-run/`。

---

## 制作方法

不靠 AI roleplay。每个设计师走五阶段提炼流程：

1. **心智模型** — 他们怎么看待设计问题
2. **决策启发式** — 可执行的 if-then 规则
3. **反模式** — 他们绝不会做的事
4. **输出契约** — 标准化 10 字段格式
5. **冲突仲裁** — 大师之间不一致时谁让谁

详见 `docs/distillation-methodology.md`。

---

## 路线图

- [x] 7 个设计师 Skill（6 完整 + 1 轻量）
- [x] 冲突仲裁的流水线架构
- [ ] 双 agent 交叉审查质量验证
- [ ] 萌宠时光册完整流水线验证输出
- [ ] 流水线压缩包（50-80K token，适配长上下文）
- [ ] MCP server 封装，一条命令跑完整流水线

---

## 贡献

- 用提炼框架添加新设计师
- 改进现有启发式
- 分享你在自己产品上的流水线结果

---

## 许可

MIT © 2026 Pengfei
