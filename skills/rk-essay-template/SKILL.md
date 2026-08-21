---
name: rk-essay-template
description: "Generates replaceable exam writing templates from Advanced System Architect essay prompts and the user's real project facts."
---

# 软考论文模板生成器

根据题目和项目事实生成考场写作模板，不承诺直接产出合格定稿。

## 工作流

1. 先确认题目、选题方向、项目事实和要套用的格式。
2. 区分用户项目事实、历年真题和范文素材；范文只提取分类、论点和段落结构。
3. 先用历年真题模式拆出题干义务，再判断项目主题是否匹配；缺少事实时先补访谈问题。
4. 按摘要、背景、理论、项目应用、总结输出可替换模板。
5. 检查题干覆盖、事实一致、近三年项目约束、角色一致和成果不空泛。

## 何时读取参考资料

- 需要固定输出格式、段落长度和替换规则时，读取 [template-format.md](references/template-format.md)。
- 需要把题目要求转成模板流程时，读取 [template-workflow.md](references/template-workflow.md)。
- 需要判断某个项目是否能支撑某个题目时，读取 [topic-fit.md](references/topic-fit.md)。
- 需要根据论文范文分类或历年真题选择论点模块时，读取 [exam-topic-catalog.md](references/exam-topic-catalog.md)。
- 需要把论文题干转成必须回应的写作义务时，读取 [prompt-obligation-patterns.md](references/prompt-obligation-patterns.md)。
- 需要借鉴范文或模板资料时，读取 [essay-sample-patterns.md](references/essay-sample-patterns.md)，只吸收结构，不复写原文。
- 需要参考近年论文真题的命题分布和替换方向时，读取 [past-paper-map.md](references/past-paper-map.md)。
- 用户提供范文、必背材料或模板资料时，读取 [source-material-boundaries.md](references/source-material-boundaries.md)。

## 输出要求

### 1. 题目拆解

先输出：

- `题目关键词`
- `必须回应的义务`
- `建议选题方向与知识点模块`
- `不适合硬套的部分`

### 2. 项目事实补强

生成模板前必须先判断输入是否过门槛。缺少关键事实时，先给最多 5 个补充问题，不直接写完整模板。问题只问生成模板真正需要的内容，例如：

- 项目时间、背景、目标、角色；用户要求近三年项目时必须校验时间
- 关键技术点和架构决策
- 真实成果、约束和权衡
- 与题目关键词直接相关的场景

### 3. 主题适配

每次生成模板前都输出 `项目-主题覆盖矩阵`。矩阵至少包含 3 个题目模块、对应项目事实、风险和处理结论。结论只能是：

- `可生成`
- `勉强生成，需标风险`
- `不建议生成，先补事实`

### 4. 模板生成

按用户给定格式输出模板，正文必须保留这些层次：

- 摘要
- 背景介绍
- 理论展开
- 项目应用
- 总结

模板要求：

- 只保留用户事实，缺失处写 `[待本人确认]`
- 把可替换位写成明确占位符
- 题目相关理论至少拆成 3 个可展开模块，每个模块都给出项目落点
- 不写空泛口号，不把教材定义当论文正文
- 题目不匹配时，直接提示不建议套用

### 5. 考场替换卡

模板结尾必须给出简短替换卡，说明考场上哪些位置要按题目替换，哪些内容只能保留用户真实项目事实，哪些段落不能照搬。

### 6. 质量检查

输出前检查：

- 事实是否前后一致
- 角色是否被写实
- 成果是否可辩护
- 每段是否回应了题干义务
- 是否还有明显的空泛段落

## Completion Criteria

只有在题目拆解、事实补强、主题适配、模板主体和质量检查都完成后结束；如果题目和项目事实不够支撑模板，必须先给补充问题或拒绝硬套。
