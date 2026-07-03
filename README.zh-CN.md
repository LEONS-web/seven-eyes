# seven-eyes · 七眼

> **七双设计大师的眼睛，盯着你的 UI。**

seven-eyes 是一套从七位设计大师的方法论中蒸馏出来的**设计判断流水线**。不是组件库，不是风格指南，是七个互相制衡的视角——每个视角只问一个问题：

你的设计经得起这七双眼睛看吗？

---

## 董事会

```
product-context brief（你的产品/hero asset/目标/硬边界）
  ↓
原研哉 — 留白质量 / 物性 / 反廉价
  ↓
Paula Scher — 品牌记忆 / 视觉冲击 / 主题显性度
  ↓
Susan Kare — 图标语言 / 微情绪 / 像素级亲和力
  ↓
Yugo Nakamura — 动效质感 / 交互节奏 / idle=ambient
  ↓
Dieter Rams — 减法闸门 / 诚实性审查 / 耐久性判断
  ↓
Refactoring UI — 间距系统 / 字体层级 / 阴影深度 / 色彩系统
  ↓
可执行设计参数 → 代码
```

**特殊角色**：Stefan Sagmeister — 节日装扮/营销场景的情绪冲击（4 条启发式）

---

## 为什么存在

AI 能写 UI 代码，但视觉输出通常没法看——紫渐变、emoji 图标、一模一样的 slate-50 卡片。问题不在工具，在缺少**设计判断**。

seven-eyes 给 AI（和人）一套**设计决策框架**：
- 七个视角互相制衡
- 冲突裁决规则（"当 Scher 说大声、Rams 说安静，谁赢？"）
- 每条启发式可执行，不是空话

---

## 快速开始

### 安装

```bash
git clone https://github.com/LEONS-web/seven-eyes.git
cd seven-eyes
bash scripts/install.sh
# Windows: .\scripts\install.ps1
```

一键复制 7 个 Skill 到你的 agent 目录。任何能读 Markdown skill 文件的平台都能用。

### 使用

加载全部 Skill → 输入产品 brief → 按层跑：

```
原研哉 → Paula Scher → Susan Kare → Yugo Nakamura → Dieter Rams → Refactoring UI
```

也可以单独用——每个 Skill 独立工作，不需要每次都跑完整董事会。

---

## 目录结构

```
skills/
├── kenya-hara-design/       → 留白、物性、反廉价
├── paula-scher-design/      → 品牌记忆、视觉冲击
├── susan-kare-design/       → 图标语言、微情绪
├── yugo-nakamura-design/    → 动效质感、交互节奏
├── dieter-rams-design/      → 减法、诚实、耐久
├── refactoring-ui-design/   → 间距、字体、阴影、色彩
└── stefan-sagmeister-design/ → 节日情绪冲击

case-studies/                 → 真实产品验证案例
standards/                    → 审查清单、设计质量护栏
docs/                         → 流水线架构、蒸馏方法论
scripts/                      → 一键安装
```

每个 SKILL.md 同构：**5 心智模型 + 8 启发式 + 8 反模式 + 10 字段输出契约**。

---

## 验证案例：萌宠时光册 · 小女巫春日花园

萌宠时光册是 HarmonyOS 桌面萌宠陪伴相册。"小女巫春日花园"主题存在"主题太淡、缺乏记忆点"的问题。

完整流水线产出：
- **原研哉**："被动残留空白——照片没有舞台"
- **Paula Scher**："主题存在但不被记住"
- **Susan Kare**："图标太冷——加 2px 眼睛 + 微笑弧度"
- **Yugo Nakamura**："取消持续飘落粒子，改用一次性 300ms 淡入"
- **Dieter Rams**："3 个装饰元素无功能理由——删除"
- **Refactoring UI**："4px 间距 scale + slate 冷灰 + 5 层阴影"

完整记录见 `case-studies/pettime-witch/pipeline-run/`。

---

## 怎么做出来的

每位设计师走五阶段蒸馏流程。不是让 AI "扮演大师"——而是提取他们真正做决策的方法：

1. **心智模型** — 他们怎么看待设计问题
2. **决策启发式** — 可执行的 if-then 规则
3. **反模式** — 他们永不做的事
4. **输出契约** — 标准化 10 字段格式
5. **冲突裁决** — 大师意见打架时谁赢

见 `docs/distillation-methodology.md`。

---

## 路线图

- [x] 7 个 Skill（6 完整 + 1 轻量）
- [x] 流水线架构与冲突裁决
- [ ] 质量验证（双 Agent 交叉审查）
- [ ] 萌宠时光册全量流水线验证
- [ ] 压缩版 Pipeline Run Pack（50-80K tokens）
- [ ] MCP Server 封装（一条命令跑完整流水线）

---

## 贡献

- 用蒸馏框架添加新设计师
- 改进现有启发式
- 分享你产品上的流水线运行结果

---

## 许可证

MIT © 2026 Pengfei
