# 软考系统架构设计师 Skills

`ruankao-sa-skills` 是一套面向软考高级系统架构设计师的 AI 备考 Skills，覆盖基础知识、案例分析和论文训练。三个 Skill 各自维护工作流和参考资料，调用时只读取当前任务需要的内容。

## 三个命令

| 功能 | Claude Code | Codex | 适合处理 |
| --- | --- | --- | --- |
| 基础知识 | `/rk:basic` | `$rk:basic` | 综合知识、计算题、易混点、选择题复盘和考前速记 |
| 案例分析 | `/rk:case` | `$rk:case` | 题干拆解、采分点、答案诊断、专题训练和非官方训练估分 |
| 论文训练 | `/rk:essay` | `$rk:essay` | 项目事实卡、论文诊断、主题迁移、修改建议和非官方训练估分 |

## 安装

### Codex

```bash
codex plugin marketplace add YinJax/ruankao-sa-skills
codex plugin add rk@rk
```

安装后新建一个任务，让 Codex 重新加载插件。

### Claude Code

```text
/plugin marketplace add YinJax/ruankao-sa-skills
/plugin install rk@rk
```

### 其他 Agent

把 [`plugins/rk/skills`](plugins/rk/skills) 下需要的 Skill 目录复制到目标 Agent 的 Skills 目录。每个 Skill 都由 `SKILL.md + references/ + agents/openai.yaml` 组成，不依赖专有运行时。

## 使用示例

解释基础考点：

```text
/rk:basic 帮我解释流水线吞吐率怎么计算，并给一道练习题。
```

诊断案例答案：

```text
/rk:case 拆解下面这道案例题，指出我的答案漏了哪些采分点。
```

修改论文：

```text
/rk:essay 根据题目和项目事实诊断这篇论文，给出训练估分和优先修改项。
```

三个 Skill 可以按复习进度手动串联：先用 `basic` 补知识点，再用 `case` 训练分问作答，最后用 `essay` 整理项目经验。每一步独立结束，由使用者决定是否进入下一步。

## 内容边界

- 训练估分不等于官方阅卷结果，也不承诺通过考试。
- 不虚构题干、项目数据、技术栈、评分细则或官方政策。
- 报名时间、考试安排、大纲和地区政策等时效性信息，需要核对当次官方通知。
- 生成内容用于复习和训练，不建议直接背诵或照搬。

## 仓库结构

```text
ruankao-sa-skills/
├─ .agents/plugins/marketplace.json
├─ .claude-plugin/marketplace.json
├─ plugins/rk/
│  ├─ .codex-plugin/plugin.json
│  ├─ .claude-plugin/plugin.json
│  └─ skills/
│     ├─ basic/
│     ├─ case/
│     └─ essay/
├─ LICENSE
└─ README.md
```

## 内容来源

本仓库整合并继续维护以下三个项目：

- [ruankao-sa-basics](https://github.com/YinJax/ruankao-sa-basics)
- [ruankao-sa-case-analysis](https://github.com/YinJax/ruankao-sa-case-analysis)
- [ruankao-sa-essay](https://github.com/YinJax/ruankao-sa-essay)

## License

MIT
