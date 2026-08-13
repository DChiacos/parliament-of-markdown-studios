---
title: "Decision Dockets"
version: "1.1.0"
status: "PUBLIC REFERENCE PATTERN"
---

# Decision Dockets

A decision docket is a bounded surface for consequential ambiguity that cannot be resolved inside the current production lane. It prevents agents from inventing authority and prevents the accountable human from reconstructing the problem from a long transcript.

A docket is not a general backlog. Ordinary implementation choices remain with the authorized operator.

## Terms used here

- **HOLD:** A route state that stops affected and dependent work while a material blocker remains unresolved. HOLD is not a review verdict.
- **Three-way verdict:** The separate review outcome: Pass, Send Back, or Escalate.

## Entry threshold

Create a docket when one or more conditions apply:

- several unresolved questions are materially connected;
- one decision controls multiple routes, sources, or authority boundaries;
- available evidence does not determine a choice reserved for human judgment; or
- dependent work must remain on HOLD until the ambiguity closes.

## Required anatomy

Every item names:

- the exact decision and why it matters now;
- the governing source and evidence;
- viable options, tradeoffs, and a recommendation;
- the human decision owner;
- affected routes and current HOLD state;
- propagation targets; and
- the condition that proves closure.

## State model

| State | Meaning |
| --- | --- |
| Proposed | The item has been assembled but not yet accepted into the decision route |
| Open | Human judgment is required |
| Answered - pending verification | A human answer exists but has not yet been made executable across affected sources |
| Send Back | The answer or evidence package is incomplete or internally inconsistent |
| Reopened | New evidence invalidated an earlier closure |
| Verified Closed | Human judgment and operational propagation are both complete |
| Cancelled / Superseded | The item no longer controls after explicit reconciliation |

Proposed, Open, Answered - pending verification, Send Back, and Reopened all keep affected routes on HOLD. Only Verified Closed, or explicitly reconciled Cancelled / Superseded, removes that item's block.

HOLD is a route state, not a verdict. Each docket review returns one separate three-way verdict: Pass, Send Back, or Escalate. An item in Send Back remains a blocking item state until the named defect and re-entry test are resolved.

## Two-key closure

A human answer is necessary but not sufficient. Closure requires two complementary keys:

1. **Human key:** the accountable person decides meaning, taste, priority, risk, or authority.
2. **Operational key:** the production lane verifies that the answer is complete, executable, and propagated to every affected source and dependency.

Bots do not vote on human taste. Humans do not need to perform file reconciliation. Each side closes the part it uniquely owns.

## Authority boundary

Closing a docket removes the named ambiguity. It does not automatically authorize production, publication, spending, deletion, identity use, or deployment. Those actions remain governed by their own commissions and approval gates.

Use the [Decision Docket and Candidate Intake Template](../04_TEMPLATES/04_DECISION_DOCKET_AND_CANDIDATE_INTAKE.md), then return to [Start Here](../00_START_HERE.md).
