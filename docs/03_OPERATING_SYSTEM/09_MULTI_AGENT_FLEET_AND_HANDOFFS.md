---
title: "Multi-Agent Fleet and Hand-offs"
version: "1.0.0"
status: "PUBLIC REFERENCE PATTERN"
---

# Multi-Agent Fleet and Hand-offs

Parliament runs work across several AI agents from different providers, under one human director. The fleet is useful only if each agent knows its role, its limits and where the work goes next, and if nothing depends on one chat remembering another.

## Terms used here

- **Officer:** a named role in the fleet with a written commission, required behaviors and its own skill set.
- **Runtime:** the model, app or tool environment an officer currently runs in.
- **Commission:** the officer's executable brief: remit, authority, standing orders, deliverables and gates.
- **Mission packet:** the durable hand-off that carries a piece of work between players.

## Officer identity is not runtime

An officer is a role; the model or tool it runs on is its environment. The two are recorded separately. A title never implies a tool connection, file access or permission: capabilities and hand-off routes are verified in use. One officer may work only in the cloud with no access to local files; another may run local file and tool work and verification. No agent may claim another agent has read a file simply because the file's path appears in a brief.

## Every officer has a home

Each officer has a commission, required behaviors and a skill-set index. Real work and human corrections feed versioned, scoped skills into that index through the [SOP package lifecycle](08_SOP_PACKAGES_AND_RUNTIME_SKILLS.md). An empty index honestly means no skill has been registered yet; it does not mean the officer lacks general ability.

## Division of labor

The pattern in current use:

- **The human** sets direction, taste and final authority, and approves anything consequential, public or irreversible.
- **A strategy and design officer** works in the cloud on briefs, reasoning and art direction.
- **A production officer** receives authorized assignments and performs local file and tool work and verification.
- **A specialist officer** performs commissioned craft work with whatever access is actually available to it.

Roles are added, paused or retired by the human. An available account is not an active assignment, and an untested integration is not a working one.

## Hand-offs

Work moves between officers in a durable mission packet, never by assuming shared memory. The packet names sender, recipient, objective, context, constraints, destination, completion condition, evidence and return route. Supporting procedures cover rolling a long conversation over into a fresh one, packaging continuity for a new session, relaying files between local and cloud environments, and logging approvals so they can be traced.

## Boot and recovery

A new session starts from a short entry point that routes the officer to its commission, its skill index and the current initiative brief, loading only what the task needs. The entry point is navigation, not a substitute for the officer's required reads, and an officer never claims a loaded skill or current project state without retrieving it.
