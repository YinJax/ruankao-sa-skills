# 分数校准协议

Calibration reduces uncertainty; it does not create official authority.

## Current State

The 59-paper corpus has no verified official score labels. Use it for structural coaching only. For score-like output, report `校准状态：未校准` and `误差：未知`.

## Calibrated Mode

Enter calibrated mode only with anonymized papers containing the original prompt, complete submitted essay, official paper score, exam year, region, and at least 20 independent papers with both pass and fail outcomes.

Record only anonymous ID, prompt family, training estimate, official score, signed error, and dominant failure pattern. Do not retain personal information.

1. Score each paper blindly before viewing the official score.
2. Compute range coverage and median absolute error.
3. Group large errors by missed obligation, fact credibility, architecture depth, result evidence, or organization.
4. Change range width or hard-risk rules only after a repeated pattern appears across at least three papers.

Only state an observed error for a comparable, actually computed calibration set. Do not generalize it to all years, regions, topics, or evaluators.
