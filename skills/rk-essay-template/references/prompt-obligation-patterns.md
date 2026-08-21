# 论文题干义务模式

Use this reference before generating an essay template from a real or recalled prompt.

This file records reusable prompt obligations inferred from public System Architect paper collections such as the 2009-2025 paper folders and the essay material folders in `xiaomabenten/system_architect`. Treat those sources as training structure only, not official wording or reusable essay text.

## 拆题顺序

1. Identify the prompt family.
2. Extract explicit verbs: `论述`、`说明`、`分析`、`结合项目`、`应用`、`效果`.
3. Convert each verb into one required paragraph obligation.
4. Reject obligations that cannot be tied to user-supplied project facts.

## 常见题干家族

| 题干家族 | 必须回应的义务 | 项目事实最低要求 | 常见跑偏 |
| --- | --- | --- | --- |
| 论某架构或架构风格 | 架构目标、风格选择、关键结构、质量属性、效果 | 系统边界、模块关系、至少 1 个架构取舍 | 只介绍技术栈，不说明架构原因 |
| 论某开发方法 | 方法定义、适用原因、过程组织、交付物、风险控制 | 迭代过程、角色分工、需求或设计产物 | 写成项目管理流水账 |
| 论某质量属性 | 指标目标、架构策略、验证方法、结果、代价 | 性能/可靠性/安全等可观察目标和验证结果 | 只有“高可用/高性能”口号 |
| 论某数据或集成主题 | 数据源、流向、模型/口径、转换校验、治理结果 | 多源数据、接口、同步链路或口径冲突 | 只有数据库表，没有集成问题 |
| 论某服务化主题 | 服务识别、接口契约、治理机制、部署演进、效果 | 服务边界、接口、注册治理或独立部署事实 | 把普通分层系统硬写成微服务 |
| 论某测试或维护主题 | 目标、策略、执行过程、缺陷闭环、改进结果 | 测试/维护活动、缺陷或变更记录、效果证据 | 写成开发自测或上线总结 |

## 输出约束

- `必须回应的义务` 至少列 3 条，最多 5 条。
- 每条义务后必须标注会落到模板哪一段。
- 任何没有项目事实支撑的义务，先变成补充问题，不生成完整正文。
- 如果题目来自回忆版或范文标题，标注 `训练推断`，不要说成官方真题原文。
