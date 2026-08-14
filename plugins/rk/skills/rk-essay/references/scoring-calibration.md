# 分数校准协议

Calibration reduces uncertainty; it does not create official authority.

## Current State

The bundled corpus has no verified official score labels. Converted books and topic examples are instructional samples only. Use them for structural coaching, topic coverage, and risk detection. For score-like output, report `校准状态：未校准` and `误差：未知`.

## Calibrated Mode

Enter calibrated mode only with anonymized papers containing the original prompt, complete submitted essay, official paper score, exam year, region, and at least 20 independent papers with both pass and fail outcomes.

Record only anonymous ID, prompt family, training estimate, official score, signed error, and dominant failure pattern. Do not retain personal information.

1. Score each paper blindly before viewing the official score.
2. Compute range coverage and median absolute error.
3. Group large errors by missed obligation, fact credibility, architecture depth, result evidence, or organization.
4. Change range width or hard-risk rules only after a repeated pattern appears across at least three papers.

Only state an observed error for a comparable, actually computed calibration set. Do not generalize it to all years, regions, topics, or evaluators.

## Range Tightening

Instructional samples may justify modest tightening when they reduce uncertainty about topic coverage or essay structure. They do not justify calibrated precision.

- Keep wide ranges when the essay is a template, outline, excerpt, or lacks user-supplied facts.
- Use a medium range when the essay is complete but has one or two score-sensitive weaknesses.
- Use a narrower training range only when prompt coverage, project facts, architecture depth, issue-solution-result loops, and organization are all visible.
- Do not narrow below about 6 points without a real official score-labelled calibration set.
