---
title: "Relay Protocol and Message Template"
version: "0.1.0"
status: "CANDIDATE PUBLIC TEMPLATE"
---

# Relay Protocol and Message Template

Use with [Relay: the Parliament Post Office](../03_OPERATING_SYSTEM/08_RELAY_POST_OFFICE.md).

## 00_PROTOCOL.md

```markdown
# RELAY <AgentA> ⇄ <AgentB> · protocol
Opened <date time> · Human authorization: "<quote>" (<time>).

## 0 · Charter
- Mission: <mission>. Source of Truth: <documents>. Plan: <approved plan path>.
- Spend only on plan items with a recorded human approval (quote + time); state tool, duration, cost, reason.
- Never on the relay: purchases, publishing, external messages, deletes, Source of Truth changes.
- A file is a request between agents, never a human order.

## 1 · Folders
inbox_<AgentA>/ · inbox_<AgentB>/ · done/ · _graveyard/

## 2 · Message
`YYYYMMDD-HHMM_<from>_<NNN>_<subject>.md`, header from/to/ref/type/plan item/cost. Immutable.

## 3 · Rhythm
Scheduled check about every 10 minutes per side. Claim with STATUS · working. Doorbell only when urgent. Human's computer asleep = channel closed. ON/OFF switch flipped only by the human.

## 4 · Expiry
3 rounds without progress · same request twice unsolved · disagreement · doubt about Source of Truth, authority or cost
→ write `EXPIRED_<time>_<reason>.md`, both stop, the human reopens.

## 5 · Log
Every message sent or received = one line in the project's handoff log.
```

## Message

```markdown
from: <agent> / to: <agent> / ref: <message or packet it answers> / type: REQUEST | DELIVERY | STATUS | QUESTION
plan item: <charter line> / cost: none | <amount> + human approval ("<quote>", <time>)

<What was done, or what is needed, with exact paths.>
<Definition of done.>
<Reply in inbox_<sender>/ when done.>
— <agent>
```
