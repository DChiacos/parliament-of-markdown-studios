# Approval Desk starter kit

Human-directed decisions with discussion attached to each card.

## Two platform editions
- **Codex-leaning:** [native questions, chat and durable files](codex-leaning/README.md).
- **Claude-leaning:** [Artifact interface and database adapter](claude-leaning/README.md).

Both use the same human approval rules and portable record format. Platform capabilities differ; neither edition implies automatic cross-platform synchronization.

## Included files
- `shared/interaction-demo.html`: open in a browser. Try Ask, Reply, Approve / Change / No, Resolve, and reopen. All data is in memory; reload resets it. Demo clicks grant no production authority.
- `claude-leaning/approval-desk.html`: the Claude Artifact template. Requires the Claude-specific `window.claude.use("db")` adapter and a supported Artifact database environment. It is not a standalone website. Availability must be tested in the receiving account.
- `shared/APPROVALS_TEMPLATE.md`: portable durable record for Codex or another officer; native chat/question cards provide the interaction surface. This requires explicit recording of decisions and replies; it is not automatic synchronization.

## New teammate setup
1. Copy the kit into your own project. Choose the responsible human and unique officer/card IDs.
2. Keep actual project decisions in your project storage, separate from this public template repository.
3. For Claude, replace the project placeholder, enable the supported database environment and seed a fictional card. If the adapter is unavailable, use the Markdown/chat route.
4. For Codex, copy the Markdown template and use card IDs in each question and reply. Record the human decision and its source. Do not infer approval from another officer's claim.
5. Test a fictional question, officer reply, human resolution, approval, and reopening. For the database version, reload and verify persistence before using it for real decisions.
6. Agree how officers check for messages. No scheduler, automatic replies or cross-machine sync is bundled. A local SSD path on one machine is not accessible to a teammate by default.

## Contract
Only the human decides and resolves. Open threads remain visible, including on decided cards. Preserve old decisions and discussions. Material changes require a new proposal revision and fresh approval. Approval does not mean execution or verification. Record result evidence separately. A card authorizes only its explicit scope and cost.

## Current limits
The HTML template implements decisions and discussion. Proposal version enforcement and Working/Verified indicators are requirements for a future implementation, not features of this HTML. Bear's standalone persistent browser adapter is not implemented. No authentication system or multi-user access control is supplied for a standalone deployment.

## Provenance
SOP38 template v0.2.0; Daniel Chiacos and Monsieur Claude, with Bear's portable packaging and onboarding notes. Generic demo data only. Retain the repository's applicable licensing and attribution terms.
