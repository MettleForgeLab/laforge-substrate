# laforge-substrate

**Layer:** substrate  
**Scope:** Hardware bring-up + host OS configuration + Docker topology + CUDA/driver alignment for LaForge nodes.  
**Non-scope:** No governance logic, no control math, no domain content, no folding logic.

This repo defines how a LaForge node boots.  
It does not define how it behaves.

## Hard boundaries

laforge-substrate MUST NOT:

* implement routing logic
* implement gain/readiness logic
* define invariants
* embed policy in startup scripts
* mutate runtime control parameters

laforge-substrate MUST:

* pin container topology and versions
* document GPU/driver compatibility
* define secrets injection mechanisms (no secrets committed)
* define volume mount boundaries

Hardware boots. Containers run. Services wire. Everything else lives above.

