# Nuwa Design Board · 女娲设计董事会

> **七位设计大师。一条判断流水线。AI 驱动的设计决策。**

女娲设计董事会是一套从七位传奇设计师的方法论中蒸馏出来的**设计判断框架**。它不是组件库——它是**决策系统**：七个 AI 可消费的 Skill 文件，按仲裁顺序依次审查、约束、引导任何 UI 设计走向清晰、难忘、诚实。

每个 Skill 捕获的是**一位大师如何思考**，而非他做了什么。产物是一连串可执行的设计决策——不是风格指南，不是情绪板，不是"做更好看一点"。

---

## 董事会架构

```
product-context brief（你的产品/hero asset/目标/硬边界）
  ↓
原研哉 Kenya Hara — 留白质量 / 物性 / 反廉价
  ↓
Paula Scher — 品牌记忆点 / 视觉冲击 / 主题显性度
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

**特殊角色**：Stefan Sagmeister — 节日装扮/营销场景的情绪冲击（轻量 4 条启发式）

---

## 为什么存在

**AI 能写 UI 代码。但输出通常丑得没法看。**

2026 年，AI 编程工具在逻辑和结构上表现不错。但视觉输出仍默认产出紫渐变、emoji 图标、一模一样的 slate-50 卡片。问题不在工具能力——在于缺少**设计判断**。

女娲设计董事会填补这个空白。它给 AI agent（和人类）一套**设计决策框架**：
- 七个视角互相制衡
- 冲突裁决规则（"当 Scher 说'大声'而 Rams 说'安静'，谁赢？"）
- 每条启发式可执行，不是空话

---

## 快速开始

### 安装（Reasonix / Claude Code）

```bash
# 克隆仓库
git clone https://github.com/YOUR_USERNAME/nuwa-design-board.git
cd nuwa-design-board

# 一键安装（复制全部 7 个 Skill 到当前 agent 的 skill 目录）
bash scripts/install.sh

# Windows PowerShell
.\scripts\install.ps1
```

### 使用

在 Reasonix 或 Claude Code 对话中：

```
加载 nuwa-design-board/skills/ 下全部 7 个设计 Skill
输入 case-studies/pettime-witch/ 下的产品 brief
跑流水线：原研哉 → Paula Scher → Susan Kare → Yugo Nakamura → Dieter Rams → Refactoring UI
输出 A/B/C 三版设计方向 brief
```

也可以单独使用：每个 Skill 独立工作，不需要每次都跑完整董事会。

---

## 目录结构

```
skills/
├── kenya-hara-design/SKILL.md          # 留白质量、物性、反廉价（5 模型 + 8 启发式）
├── paula-scher-design/SKILL.md         # 品牌记忆、视觉冲击（5 模型 + 8 启发式）
├── susan-kare-design/SKILL.md          # 图标语言、微情绪（5 模型 + 8 启发式）
├── yugo-nakamura-design/SKILL.md       # 动效质感、交互节奏（5 模型 + 8 启发式）
├── dieter-rams-design/SKILL.md         # 减法、诚实、耐久（5 模型 + 8 启发式）
├── refactoring-ui-design/SKILL.md      # 间距、字体、阴影、色彩系统（5 模型 + 8 启发式）
└── stefan-sagmeister-design/SKILL.md   # 节日情绪冲击（4 启发式，轻量）

case-studies/pettime-witch/             # 真实产品验证案例（萌宠时光册·小女巫春日花园）
standards/                               # 公共质量护栏、设计审查清单
docs/                                    # 流水线架构、蒸馏方法论
scripts/install.sh / install.ps1         # 一键安装脚本
```

每个 SKILL.md 结构严格同构：**5 心智模型 + 8 启发式 + 8 反模式 + 10 字段输出契约 + 流水线集成 + 跨场景迁移 + 诚实边界**。

---

## 蒸馏方法论

我们不教 AI "扮演 Dieter Rams"。我们**蒸馏**每位设计师的方法论为：

1. **心智模型** — 他们如何看待设计问题
2. **决策启发式** — 可执行的 if-then 判断规则（含触发条件）
3. **反模式** — 他们永不做的事，以及为什么
4. **输出契约** — 标准化的 10 字段格式，被下一层消费
5. **冲突裁决** — 大师意见分歧时，不同场景谁优先

五阶段流程：六维调研 → 框架提炼 → SKILL.md 构建 → 质量验证 → 双 Agent 精炼。

想自己蒸馏新设计师？见 `docs/distillation-methodology.md`。

---

## 验证案例：萌宠时光册 · 小女巫春日花园

*萌宠时光册*是 HarmonyOS 桌面萌宠陪伴相册。v1.5 "小女巫春日花园"主题存在"主题显性度不足"问题——用户感受不到和默认皮肤的区别。

完整七人董事会流水线在小女巫首页 brief 上运行，产出：
- 留白诊断（原研哉）："被动残留空白，照片没有舞台"
- 品牌记忆检查（Scher）："主题存在但不被记住"
- 图标温度审计（Kare）："图标太冷——加 2px 眼睛 + 1px 微笑弧度"
- 动效策略（Nakamura）："取消持续飘落粒子，改用一次性 300ms 淡入 + 按压反馈"
- 减法闸门（Rams）："3 个装饰元素无功能理由——删除"
- 落地战术（Refactoring UI）："4px 间距 scale + slate 冷灰 + 5 层阴影体系"

完整流水线运行记录见 `case-studies/pettime-witch/pipeline-run/`。

---

## 成本对比（Reasonix vs Claude Code）

| 指标 | Reasonix (DeepSeek V4 Pro) | Claude Code (Anthropic) |
|------|---------------------------|------------------------|
| 单设计师 Phase 1-3 | **¥2** | ~¥10 |
| 单设计师耗时 | 1 对话 | 2-3 对话 |
| 缓存命中率 | 98%+ | ~90% |
| 上下文窗口 | 1M tokens | 200K tokens |

---

## 路线图

- [x] 7 人董事会蒸馏完成（6 完整 + 1 轻量）
- [x] 流水线架构与冲突裁决体系
- [ ] Phase 4 质量验证（双 Agent 交叉审查）
- [ ] Phase 5 双 Agent 精炼
- [ ] 小女巫全量上下文基准实验（完整流水线验证）
- [ ] 压缩版 Pipeline Run Pack（50-80K tokens）
- [ ] 英文版 Skill 变体
- [ ] MCP Server 封装（一条命令跑完整流水线）
- [ ] 知识星球 · 精炼版 + 验证报告 + 使用指南

---

## 贡献

你可以：
- 用蒸馏框架向董事会添加新设计师
- 改进现有启发式
- 在你自己的产品上跑流水线并分享结果

完整五阶段流程见 `docs/distillation-methodology.md`。

---

## 许可证

MIT © 2026 鹏飞 & Reasonix

---

## Star 历史

如果你觉得这个项目有价值，请点 ⭐

[![Star History Chart](https://api.star-history.com/svg?repos=YOUR_USERNAME/nuwa-design-board&type=Date)](https://star-history.com/#YOUR_USERNAME/nuwa-design-board&Date)

---

*"好设计不是靠天赋，是靠系统和约束。" — 但更重要的是，知道该问哪位大师。*
