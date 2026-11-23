---
title: "SOP Packages and Runtime Skills"
version: "1.0.0"
status: "PUBLIC REFERENCE PATTERN"
---

# SOP Packages and Runtime Skills

Parliament separates two layers that are easy to blur:

- **The runtime skill** is the compact, executable instruction file an agent actually loads to do a job (a `SKILL.md`).
- **The SOP package** is that skill's governed home: its authority, full procedure, field evidence, supporting material, version history and retired versions.

The skill is what runs. The package is why it can be trusted, corrected and versioned. A skill without a package drifts; a package without a runtime skill is documentation nobody executes.

## Terms used here

- **SOP package:** the folder that governs one repeatable job, from authority to history.
- **Runtime skill:** the short executable file an agent loads at work time.
- **Field evidence:** a dated record of what happened in a real job, including human corrections.
- **Evolve pass:** the step after a job where lessons are written back into the package.
- **Reserved shell:** an empty, non-authoritative package template waiting for the next subject.

## Package anatomy

Every package uses the same shell, so a cold reader always knows where to look:

```text
<NN.NN> <Skill Name> SOP/
├── <SkillName>_README_vX.Y.Z.md   # entry point; its version is the skill's version, plus a change log
├── 00. SOT Declaration/            # who has authority, which files are canonical, what version is live
├── 01. Procedure/                  # the full procedure, with drafts separated from locked versions
├── 02. Runtime Skill/              # the executable SKILL.md and any scripts it calls
├── 03. Field Evidence/             # dated cases from real jobs, corrections and teaching ledgers
├── 04. Supporting Material/        # references, examples, checklists
└── 99. SOP Graveyard/              # superseded versions, preserved and never authoritative
```

Each folder keeps a small inventory table: file, why it is there, how an agent uses it, date added. When two documents disagree, the SOT Declaration names the winner.

## Departments

Packages are grouped into numbered departments by kind of work. The private system currently holds roughly seventy packages across departments for institutional administration, day-to-day operations, creative production, data and evaluation work, personal workflow automation, and career operations. Numbering is stable: a retired package keeps its history in the graveyard and its number is not silently reused. Each department keeps one reserved shell ready for the next distinct subject.

## Lifecycle of a skill

1. **Intake.** A repeated job, or an explicit human request, becomes a candidate. Not every note becomes a skill.
2. **Package.** The shell is copied, the SOT Declaration is written, and a first runtime skill is drafted from the procedure.
3. **First job.** The skill runs on real work under human review. The first job doubles as a verification pass.
4. **Evolve.** After the job, human corrections and verified lessons become field evidence, then procedure changes, then a new skill version. A correction explained once is written into the package in the same turn, so it is not explained twice.
5. **Audit.** A separate audit pass can read a finished conversation for corrections, send-backs and approvals the evolve pass missed, and propose upgrades.
6. **Release.** The version follows semantic versioning: patch for fixes, minor for new capability, major for changed authority or behavior. Superseded files move to the graveyard.

Packaging does not ratify. A skill bundled into a release keeps its draft, beta or field-test status until evidence and a human decision change it, and no skill is described as transfer-proven without evidence from a cold re-entry.

## Why this matters

The same correction should never have to be given twice. Field evidence turns each job into training material for the next one, and the package structure lets any agent, or any engineer, see exactly what a skill is allowed to do, where its rules came from, and which version is live.
