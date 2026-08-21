# 从项目事实到论文草稿

Use this reference when the user needs to build essay material, repair thin project evidence, check contradictions, or decide the next practice task.

## Flow

1. `项目事实访谈`：ask only for facts needed by the prompt or the chosen topic module.
2. `事实卡`：normalize supplied facts into defensible claims, marking gaps as `[待本人确认]`.
3. `主题素材库`：map each fact to one primary topic module, one architecture decision, one implementation detail, one trade-off, and one validation result.
4. `草稿生成或修订`：draft only from facts in the card and the material bank.
5. `下一次练什么`：turn the weakest missing link into one concrete practice task.

Completion means every draft claim can be traced to the fact card, every topic paragraph has a decision-action-result chain, and the next practice task has a clear acceptance check.

## Interview

Ask in small batches. Prefer missing high-value facts over broad questionnaires.

| Need | Ask for |
|---|---|
| 项目可信度 | 项目行业、业务目标、用户或系统规模、时间阶段、团队角色 |
| 本人职责 | 亲自负责的架构活动、评审、设计、治理或落地动作 |
| 题干贴合 | 与题目关键词直接相关的场景、约束、冲突和决策 |
| 技术细节 | 架构组件、数据流、接口、部署、治理、监控或安全措施 |
| 权衡取舍 | 备选方案、放弃理由、风险、代价、失败或调整 |
| 成效验证 | 指标、观察结果、验收反馈、问题收敛或后续改进 |

If the user cannot provide exact numbers, accept ranges, before-after direction, qualitative evidence, or observable outcomes. Keep uncertainty visible.

## Fact Card

Represent facts with this compact structure:

```text
项目事实卡
- 背景：...
- 本人角色：...
- 题目相关场景：...
- 架构决策：...
- 实施动作：...
- 权衡与风险：...
- 验证结果：...
- 可复用素材：...
- 待确认：...
```

Reject or mark claims that are not grounded in the user's input. Watch for contradictions in timeline, role scope, scale, architecture style, quality attribute, and result metric.

## Topic Material Bank

For each selected topic, create 3-5 reusable material blocks:

```text
素材块
- 适用主题：
- 可回答的题干义务：
- 项目事实：
- 决策：
- 实施：
- 权衡：
- 结果：
- 可展开段落：
```

A strong block can answer at least one prompt obligation without turning into textbook exposition. A weak block is missing decision, implementation, trade-off, or result.

## Draft Checks

Flag these issues before writing a full draft:

- `事实断链`：段落里的结论无法追溯到事实卡。
- `题干断链`：段落没有回应明确题干义务。
- `角色漂移`：把团队、公司或第三方动作写成本人亲自完成。
- `成果空泛`：只写“提升效率、保障稳定、效果良好”，没有可辩护的观察或指标。
- `技术堆砌`：连续罗列名词，缺少约束、选择理由和落地动作。

## Next Practice

End coaching with 1-3 next tasks. Pick the smallest task that fixes the most pass-relevant weakness.

```text
下一次练什么
- 任务：
- 目标：
- 输入：
- 限时：
- 验收：
```

Choose from this priority order:

1. `题干覆盖`：有明确题干义务缺失时，先练补齐该义务。
2. `项目事实可信度`：项目时间、角色、决策、动作或结果断链时，先练事实卡。
3. `主题决策链`：理论段只有概念时，练“约束 -> 决策 -> 实施 -> 权衡 -> 结果”。
4. `成果证据`：只写效果良好时，练结果证据和可辩护表述。
5. `段落结构`：事实足够但表达散时，练摘要、理论段或总结的限时改写。
6. `考场速度`：内容质量基本可用时，练 45-60 分钟限时成稿。

## Minimal Acceptance Cases

| 草稿情况 | 下一次练什么 |
| --- | --- |
| 题目要求 3 点，只覆盖 1 点 | 练题干覆盖表，补齐缺失义务 |
| 段落里有很多技术词，但没有本人决策 | 练项目事实卡和主题决策链 |
| 结构完整但成果空泛 | 练结果证据改写，给可观察变化或验收反馈 |
