# US-122 — Test report (iteration 1)
**Verdict:** ❌ Changes requested · **Tester:** Rudolf · **Date:** 2026-10-15 · simulated evidence

## Summary
| Check | Result | Evidence |
|---|---|---|
| AC 1: Spare parts stock is checked in real time against | ✅ Works | screenshot 1 |
| AC 2: Failure handling | ❌ Broken | screenshot 2 |

## Checks
### AC 1: Spare parts stock is checked in real time against — ✅ Works
**Steps:**
1. Log in as the test user with the story's permission set.
2. Create or open an AI-TEST record for US-122.
3. Perform the action described in AC 1 and check the outcome.

**Found:** Verified in the delivered source: the behaviour required by AC 1 is implemented and covered by the test class.

![✅ AC 1: Spare parts stock is checked in real time against](evidence/ac-1-spare-parts-stock-is-checked-in-rea-i1.svg)

### AC 2: Failure handling — ❌ Broken
**Steps:**
1. Log in as the test user with the story's permission set.
2. Create or open an AI-TEST record for US-122.
3. Perform the action described in AC 2 and check the outcome.

**Found:** AC 2 — the callout sets no timeout and never retries; when ServiceMax is slow the user waits for the default 120 s and nothing is queued for retry.

![❌ AC 2: Failure handling](evidence/ac-2-failure-handling-i1.svg)

## What to do
- **AC 2** — the callout sets no timeout and never retries; when ServiceMax is slow the user waits for the default 120 s and nothing is queued for retry.
  Fix it and add a test that proves the behaviour; I will re-test this check first.
