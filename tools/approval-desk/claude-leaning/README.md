# Claude-leaning Approval Desk

## Platform-native route
Use approval-desk.html in a supported Claude Artifact environment with the database adapter window.claude.use("db"). Replace the project placeholder and seed fictional data first. The HTML is not a standalone persistent website.

Cards provide Approve / Change / No, Ask/Reply, open-thread ordering, Commander-only resolution and reopening. Decided cards remain visible. Officers must explicitly read and answer; no autonomous reply or scheduler is bundled.

## Shared handoff
After reading decisions, write a project-local Markdown mirror using ../shared/APPROVALS_TEMPLATE.md. Include update time, card ID, proposal revision, exact decision source, discussion state and result evidence. A mirror is not automatic synchronization. Each officer owns its own file.

## Test before real use
Ask a fictional question, reply as the officer, resolve as the human, approve, reload, verify database persistence, then reopen. If this account cannot use the adapter, use the shared Markdown/chat route. Revision tracking and Working/Verified UI remain future implementation work; enforce revised-proposal approval explicitly in the officer workflow meanwhile.
