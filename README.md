# atlas-algo-search-lab

`atlas-algo-search-lab` is a OCaml project in algorithms. Its focus is to package an OCaml local lab for search analysis with safe and unsafe fixtures, remediation hints, and documented operating limits.

## Purpose

The point is to make a small domain rule concrete enough that a reader can change it and immediately see what broke.

## Atlas Algo Search Lab Review Notes

Start with `complexity` and `input width`. Those cases create the widest score spread in this repo, so they are the best quick check when the model changes.

## What Is Covered

- `fixtures/domain_review.csv` adds cases for input width and search depth.
- `metadata/domain-review.json` records the same cases in structured form.
- `config/review-profile.json` captures the read order and the two review questions.
- `examples/atlas-algo-search-walkthrough.md` walks through the case spread.
- The OCaml code includes a review path for `complexity` and `input width`.
- `docs/field-notes.md` explains the strongest and weakest cases.

## Implementation Notes

The fixture data drives the tests. The code stays thin, while `metadata/domain-review.json` and `config/review-profile.json` explain what each case is meant to protect.

The OCaml code keeps the review rule close to the tests.

## Command

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File scripts/verify.ps1
```

## Audit Path

The verifier is intentionally local. It should fail if the fixture score math, lane assignment, or language-specific test drifts.

## Limits

The fixture set is small enough to audit by hand. The next useful expansion is malformed input coverage, not extra surface area.
