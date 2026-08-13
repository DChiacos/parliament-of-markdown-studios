---
title: "Parliament of MarkDown Studios"
version: "1.1.0"
status: "PUBLIC PORTFOLIO PROJECT"
author: "Daniel Chiacos"
---

# Parliament of MarkDown Studios

**One Truth, Infinite Expressions.**

Parliament is a documentation-first operating system for human-directed, multi-agent work. It gives people and AI agents a shared constitution, explicit authority boundaries, one Source of Truth per governed scope, progressive approval states, and a recovery path when context is lost.

**Public release v1.1.0 | Sanitized point-in-time derivative | The private Parliament remains the living institutional Source of Truth.**

This repository is a sanitized public derivative of the private system I designed and use inside **MarkDown Studios**, the internal AI production studio of **Serendipity Inc.** It demonstrates how I translate creative and business intent into inspectable agent workflows without surrendering final human judgment.

## The problem

Multi-agent work becomes unreliable when instructions live only in chat, every model receives a different fragment of context, polished output is mistaken for correct output, and nobody can identify which document is authoritative.

Parliament addresses that failure with six controls:

1. **Human authority remains explicit.** Agents may research, draft, inspect, and route work; the human retains consequential judgment and final approval.
2. **One governed scope has one Source of Truth.** Derivatives follow it and drift is repaired at the source.
3. **Work advances through approval states.** Rough Cut, Fine Cut, Locked Cut, and Online reduce different kinds of uncertainty.
4. **The Human-AI Sandwich defines production.** A complete starting state and an inspectable end state must exist before middle production begins.
5. **Every completed task compounds the institution.** Decisions, methods, failures, and safeguards become durable Markdown assets.
6. **Ambiguity becomes inspectable operating intelligence.** Connected human decisions move into a docket; verified field evidence may become a candidate method, but only explicit human ratification grants institutional force.

## System map

```mermaid
flowchart LR
    H["Human intent and judgment"] --> E["Executable commission"]
    E --> S["Source of Truth"]
    S --> A["Agent production pass"]
    A --> Q["Quality gate"]
    Q -->|Send back| A
    Q -->|Pass| R["Human final review"]
    R -->|Approved| D["Delivery"]
    D --> C["Durable institutional knowledge"]
    C --> E
```

## What changed in v1.1

- Added decision dockets for consequential ambiguity that cannot be resolved inside the production lane.
- Added the incident-to-SOP lifecycle, including candidate status, human ratification, and reserved-shell continuity.
- Added cold-reader terminology as a context-compression control, plus reusable docket and SOP-shell templates.

See the [changelog](CHANGELOG.md) and [public snapshot declaration](PUBLIC_SNAPSHOT.md) for release provenance and scope.

## What this project demonstrates

- information architecture for cold-start agent recovery;
- prompt and commission design;
- human-in-the-loop approval boundaries;
- multi-agent routing and quality control;
- hallucination and drift control through explicit SOT declarations;
- semantic versioning and preserved history;
- Obsidian-compatible knowledge-graph design;
- reusable templates for future workflows.

## Start here

1. [Project overview](docs/00_START_HERE.md)
2. [Architecture](docs/01_ARCHITECTURE.md)
3. [Constitution](docs/02_GOVERNANCE/01_CONSTITUTION.md)
4. [Operational Rights](docs/02_GOVERNANCE/02_OPERATIONAL_RIGHTS.md)
5. [Single Source of Truth](docs/03_OPERATING_SYSTEM/01_SINGLE_SOURCE_OF_TRUTH.md)
6. [Human-AI Sandwich](docs/03_OPERATING_SYSTEM/02_HUMAN_AI_SANDWICH.md)
7. [Production Wheel](docs/03_OPERATING_SYSTEM/03_PRODUCTION_WHEEL.md)
8. [Four-Pass Approval Workflow](docs/03_OPERATING_SYSTEM/04_FOUR_PASS_APPROVAL.md)
9. [Decision Dockets](docs/02_GOVERNANCE/03_DECISION_DOCKETS.md)
10. [Institutional Compounding](docs/03_OPERATING_SYSTEM/05_INSTITUTIONAL_COMPOUNDING.md)
11. [Incident-to-SOP Lifecycle](docs/03_OPERATING_SYSTEM/06_INCIDENT_TO_SOP_LIFECYCLE.md)
12. [Cold-Reader Context Compression](docs/03_OPERATING_SYSTEM/07_COLD_READER_CONTEXT_COMPRESSION.md)
13. [Obsidian vault guide](docs/05_OBSIDIAN_VAULT.md)

## Repository anatomy

```text
parliament-of-markdown-studios/
├── README.md
├── CHANGELOG.md
├── PUBLIC_SNAPSHOT.md
├── docs/
│   ├── 00_START_HERE.md
│   ├── 01_ARCHITECTURE.md
│   ├── 02_GOVERNANCE/
│   ├── 03_OPERATING_SYSTEM/
│   ├── 04_TEMPLATES/
│   └── 05_OBSIDIAN_VAULT.md
├── .obsidian/
└── scripts/validate_public_repo.sh
```

## Public-scope boundary

This repository explains the architecture and reusable operating methods. It intentionally excludes client material, private agent commissions, internal command registers, credentials, personal filesystem paths, live production records, and institutional history that is not required to understand the system.

The private Parliament remains the institutional Source of Truth. GitHub is a portfolio expression, not the governing chamber.

Each GitHub release is a versioned public snapshot. The private Parliament may continue evolving after publication; that does not make the snapshot a competing Source of Truth. When the two differ, return to the private institution and produce a new governed public derivative rather than reverse-syncing GitHub into private law.

This release is a public documentation snapshot, not yet a claim of turnkey deployment or external adoption.

## Authorship

Designed and directed by **Daniel Chiacos**, Founder and Creative Director of Serendipity Inc. and creator of MarkDown Studios.

## License

MIT. See [LICENSE](LICENSE).
