# 软考系统架构设计师 Skills

`ruankao-sa-skills` 是一组面向软考高级系统架构设计师备考的 AI Skills。它把基础知识、案例分析和论文训练拆成三个独立命令，适合在复习、刷题、改答案和打磨论文时按需调用。

仓库同时支持两种安装方式：可以用 `npx skills` 直接安装 Skill，也可以用 Codex / Claude Code 的 plugin 形式安装。每个 Skill 都有自己的工作流、参考资料和输出边界。

## Skills

| Skill | 适合什么时候用 | 它会做什么 |
| --- | --- | --- |
| `/rk-basic` | 补基础、复盘选择题、梳理易混点 | 解释综合知识考点，拆计算题步骤，整理知识框架和考前速记 |
| `/rk-case` | 练案例分析、拆题干、检查答案 | 提取题干线索，定位考点和采分点，指出答案缺口并给出训练建议 |
| `/rk-essay` | 准备论文、修改草稿、迁移项目素材 | 诊断题目覆盖度，检查项目事实，给出训练估分和优先修改项 |

这三个命令可以分开用，也可以按备考节奏串起来：先用 `rk-basic` 补知识点，再用 `rk-case` 训练分问作答，最后用 `rk-essay` 把项目经验整理成论文素材。

## Install

### npx skills

适合想把这三个 Skill 安装到 Codex、Claude Code、Cursor 等支持 `SKILL.md` 的 Agent：

```bash
npx skills@latest add YinJax/ruankao-sa-skills -a codex -g --skill rk-basic --skill rk-case --skill rk-essay -y
```

如果你的 `skills` CLI 会自动发现仓库根目录下的 `skills/`，也可以使用更短的安装命令：

```bash
npx skills@latest add YinJax/ruankao-sa-skills -a codex -g -y
```

安装后新开一个任务，让客户端重新加载 Skill。

### Codex plugin

Codex:

```bash
codex plugin marketplace add YinJax/ruankao-sa-skills
codex plugin add rk@rk
```

### Claude Code plugin

Claude Code:

```text
/plugin marketplace add YinJax/ruankao-sa-skills
/plugin install rk@rk
```

安装后新开一个任务，让客户端重新加载插件。

## Distribution

根目录 [`skills/`](skills) 是 `npx skills` 的公开 Skill 源；[`plugins/rk/skills`](plugins/rk/skills) 是 plugin 安装所需的镜像副本。发布前运行同步检查，避免两套内容漂移：

```powershell
powershell -NoProfile -File scripts/sync-plugin-skills.ps1 -Check
```

如果修改了根目录 Skill，再同步到 plugin：

```powershell
powershell -NoProfile -File scripts/sync-plugin-skills.ps1
```

## Examples

补基础知识：

```text
/rk-basic 帮我解释流水线吞吐率怎么计算，并给一道练习题。
```

拆案例题：

```text
/rk-case 拆解下面这道案例题，指出我的答案漏了哪些采分点。
```

改论文草稿：

```text
/rk-essay 根据题目和项目事实诊断这篇论文，给出训练估分和优先修改项。
```

## Boundaries

训练估分只用于复习判断，不等同于官方阅卷结果，也不承诺通过考试。

Skill 不会虚构题干、项目数据、技术栈、评分细则或官方政策。报名时间、考试安排、大纲和地区政策等信息，请以当次官方通知为准。

生成内容适合用来复习、诊断和改写，不建议直接背诵或照搬到考场。

## Structure

```text
ruankao-sa-skills/
├── .agents/plugins/marketplace.json
├── .claude-plugin/marketplace.json
├── skills/
│   ├── rk-basic/
│   ├── rk-case/
│   └── rk-essay/
├── plugins/rk/
│   ├── .codex-plugin/plugin.json
│   ├── .claude-plugin/plugin.json
│   └── skills/
│       ├── rk-basic/
│       ├── rk-case/
│       └── rk-essay/
├── scripts/sync-plugin-skills.ps1
├── LICENSE
└── README.md
```

## License

MIT
