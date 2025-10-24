# Constitution  
## Purpose  
This repository serves as a language agnostic Spec‑Kit template for spec‑driven development. It provides a foundational structure that can be adapted for any technology stack.  
## Principles  
### 1. Specification‑Driven Development  
All development begins with clear specifications. Code implements specifications, not vice versa.  
### 2. Language Agnostic  
This template maintains neutrality regarding programming languages, frameworks, and tooling. Teams can adopt any technology stack that suits their needs.  
### 3. Incremental Planning  
Work is broken down into discrete, manageable tasks that can be tracked and validated independently.  
### 4. Automation First  
Repetitive processes are automated through workflows and scripts, reducing manual effort and human error.  
### 5. Documentation as Code  
Documentation lives alongside code, versioned and reviewed through the same processes.  
## Structure  
### /.specify  
Core directory containing:  
- `constitution.md` – This file, defining project principles  
- `spec.md` – Technical specifications and requirements  
- `plan.md` – High‑level implementation plan  
- `/tasks/` – Directory for individual task specifications  
### /.github/workflows  
Automation workflows for linting, validation, and task management.  
## Governance  
Changes to the constitution require explicit review and approval. The constitution serves as the foundational agreement for how the project operates.  
## Adaptability  
While this template is language‟agnostic, teams should:  
1. Add their chosen technology stack without removing template structure  
2. Extend automation workflows as needed for their specific tools  
3. Maintain the spec‑driven approach regardless of implementation details  
## Provisioning Protocol  
The initial bootstrapping of a new repository derived from this template requires special handling to allow automation to complete without human intervention while preserving security. The provisioning protocol is as follows:  
1. **Detection of initial provisioning** – The workflow inspects the `main` branch for the absence of user commits or the `bootstrap‑complete` tag to determine if this is the first initialization.  
2. **Temporary relaxation of branch protection** – Using GitHub's API, branch protection settings on the default branch are temporarily relaxed, permitting automated merging of Copilot‑generated bootstrap pull requests. This is the only time branch protections are bypassed.  
3. **Automated merge of bootstrap pull requests** – All draft pull requests created during template provisioning are marked as ready for review and merged automatically by the workflow. Each merge is logged for transparency.  
4. **Restoration of branch protection** – Immediately after the bootstrap PRs are merged, the workflow re‑enables the original branch protection rules, ensuring the repository returns to its protected state.  
5. **Bootstrap completion tag** – The workflow tags the repository with `bootstrap‑complete` (or annotates a commit message) to signal that the initial provisioning has concluded. Subsequent merges and PR chains follow normal CI/CD automation and respect branch protections.  
6. **Manual fallback** – If automation encounters API errors or rate limits, a human can perform the initial merge manually. This section documents that the first merge should either be verified by a maintainer or automated by the provisioning workflow.
