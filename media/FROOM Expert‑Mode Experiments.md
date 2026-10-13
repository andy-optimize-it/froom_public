# FROOM Expert‑Mode Experiments

This film presents four FROOM experiments executed in expert mode. Each experiment shows the input, the runtime execution, and the resulting outputs. Metrics, full detail reports, and explanatory overlays help illustrate the key observations. The film also explains how a semantically formulated intention — an *intent* — is translated into operator language and executed.

---

## 1. Recovery After a Reset

The system first processes a `workspace_heartbeat`. The workspace is then reset, followed by another heartbeat.  
This experiment compares the system state before the reset with the state after recovery.

**Key question:**  
Do the defined state characteristics match again after recovery?  
Variable timestamps are not considered deviations.

---

## 2. Isolated Processing of Two Intent Sequences

Two intent sequences are executed alternately on a shared event loop, while each retains its own context.

The experiment verifies:

- whether both contexts remain consistent  
- whether they avoid influencing each other  
- the actual execution order (shown in the detail report)

This is **interleaved processing on a single thread**, not parallel execution across multiple threads.

---

## 3. From Intent to Artefact

The intent `workspace_heartbeat` is visibly entered and passed to the running runtime.  
Afterwards, the current system state and the most recently produced artefact are queried.

The result display shows:

- which intent was processed  
- whether an artefact is present  
- how input, processing, and visible output relate to each other

---

## 4. Comparison of Equivalent Operator Paths

Several operator paths defined as equivalent are compared against a shared reference result.  
A deliberately non‑equivalent control path is executed as well.

The experiment checks:

- whether the equivalent paths produce the same result  
- whether the control path deviates  
- how defined equivalence and intentional non‑equivalence manifest in execution

---

## Interpretation Layer

After each experiment, the full detail report remains visible.  
Only then does a pop‑up explain the measured results and their significance.

The film therefore shows not only the outcomes, but also the **conditions under which they must be interpreted**.
