# 主题模块选择

Choose one primary module and at most one supporting module. Tie each item to the prompt and the user's project facts.

| Topic family | Include | Typical trade-off or risk |
|---|---|---|
| 架构风格、分层、SOA、微服务 | boundary, interfaces, deployment, governance, data ownership | coupling vs. distributed complexity |
| 云原生、高可用、可靠性 | failure domains, redundancy, recovery, observability, capacity | cost and complexity vs. resilience |
| 数据架构、湖仓、集成、事务 | data flow, ownership, consistency, lineage, recovery | timeliness vs. consistency; governance vs. agility |
| 安全架构 | assets, threats, identity, authorization, encryption, audit | usability/performance vs. protection |
| 架构评估、质量属性 | scenarios, stakeholders, sensitivity points, trade-off points, risks | competing quality attributes |
| 设计方法、DDD、ABSD、MDA | requirements traceability, modeling artifacts, iteration, governance | upfront rigor vs. delivery speed |
| 运维、AIOps、自动化测试 | metrics, logs, traces, automation loop, incident response | false positives, data quality, operational cost |
| AI/大模型系统 | data boundaries, evaluation, safety, fallback, human review | capability vs. hallucination, privacy, cost |

For each module, insist on one concrete decision, one implementation detail, one problem or trade-off, and one validation result.
