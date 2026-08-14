# 教材与论文样本库使用说明

Use this corpus to improve essay diagnosis stability, not to produce official scoring accuracy.

## Corpus files

These files are optional local materials. They are not bundled in the public repository because they may be converted from copyrighted books or private notes.

- `references/instructional-corpus/redbook-all-in-one.md`: Broad system architect foundation material. Use for checking architecture concepts, quality attributes, reliability, security, styles, methods, and whether an essay misses important topic coverage.
- `references/instructional-corpus/essay-writing-guide.md`: Essay writing guidance and sample structure. Use for abstract, project background, section rhythm, word allocation, and common writing risks.
- `references/instructional-corpus/essay-topic-predictions.md`: Topic-oriented examples and recent-style themes. Use for topic relevance, module selection, and checking whether examples are too generic.

If these files are missing, continue with the built-in rubric, scoring protocol, topic modules, and any documents the user provides in the current task. Do not claim corpus-backed tightening unless relevant local files were actually read.

## Metadata

```yaml
source_type: instructional_corpus
score_label: none
calibration_eligible: false
usage:
  - prompt coverage
  - essay structure
  - architecture reasoning
  - risk detection
```

## How to use

1. Check whether the optional corpus files exist before referencing them.
2. Search these files only after parsing the user's prompt obligations and draft evidence.
3. Prefer targeted keyword search over reading the whole corpus into context.
4. Use matches to strengthen coverage, terminology, architecture reasoning, and hard-risk detection.
5. Do not copy sample project facts, metrics, timelines, or conclusions into the user's essay.
6. If the retrieved text contains OCR artifacts, repeated headers, or table-of-contents noise, ignore the noisy fragment and verify with another nearby passage.

## Scoring impact

The corpus can usually narrow uncertainty caused by weak topic recognition or unstable structure. It cannot by itself turn `校准状态：未校准` into calibrated mode.

When using these samples, prefer modest range tightening only when the draft already includes:

- a complete prompt-aligned essay,
- concrete user-supplied project facts,
- visible architecture decisions and tradeoffs,
- issue -> solution -> result loops,
- no hard risk such as missing mandatory subquestions or fixed-template resemblance.

Do not narrow a training range below about 6 points unless official score-labelled calibration samples were processed under `scoring-calibration.md`.
