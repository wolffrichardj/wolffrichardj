# Richard Wolff

![AI and platform engineering: AI-assisted delivery. Verifiable systems. Independent engineering by Richard Wolff.](assets/engineering-header.svg)

**Technology Leader · Platform & AI Engineering**

[![Portfolio and leadership case studies](assets/website.svg)](https://richardwolff.me/) [![LinkedIn profile](assets/linkedin.svg)](https://www.linkedin.com/in/wolffrichardj) [![Email Richard](assets/email.svg)](mailto:wolffrichardj@gmail.com)

[Engineering samples](#user-content-independent-engineering) · [Agentic delivery model](#user-content-how-i-approach-agentic-delivery) · [Application work](#user-content-application-work-and-engineering-judgment) · [Credentials](#user-content-selected-google-cloud-skill-badges)

I build and adapt systems that make the results of AI-assisted work inspectable: what was requested, which bytes arrived, what was verified, and what a person is approving.

My independent projects connect that platform work to agent-assisted development, React/TypeScript applications and engineering judgment. Start with the two Python samples below: each isolates a concrete failure boundary from my personal tooling.

<a id="independent-engineering"></a>

## Selected engineering: arrival and delivery

| Project | Engineering decision | Inspect the evidence |
| --- | --- | --- |
| [**Verified Artifact Collection**](https://github.com/wolffrichardj/verified-artifact-collection) · Python | Verify request identity and stored bytes; retain changed content instead of overwriting. Model post-publication uncertainty explicitly. | [Code and failure cases](https://github.com/wolffrichardj/verified-artifact-collection#ownership-boundaries) · [80-second walkthrough](https://github.com/wolffrichardj/verified-artifact-collection#80-second-walkthrough) |
| [**Exact Artifact Demo**](https://github.com/wolffrichardj/exact-artifact-demo) · Python | Package immutable Git source; reject changed payloads even after the outer archive hash is re-pinned. | [Validation boundaries](https://github.com/wolffrichardj/exact-artifact-demo#what-is-checked) · [80-second walkthrough](https://github.com/wolffrichardj/exact-artifact-demo#80-second-walkthrough) |

These separate samples extract and harden selected boundaries from my personal tooling, with AI assistance in adaptation and review. Collection uses offline synthetic records and an in-process MCP-shaped mock; Exact Artifact demonstrates packaging and validation against independently trusted expectations. They demonstrate local controls, with no live provider session, authenticated CI attestation or release activation. Commit identity does not establish per-line human authorship.

## Selected Google Cloud skill badges

| AI agent development | Cloud security | Platform infrastructure |
| --- | --- | --- |
| <a href="https://www.credly.com/badges/d40e406d-d517-4f05-bf7f-6e0312cc8c72"><img src="assets/credentials/adk.png" width="180" alt="Engineer AI Agents with Agent Development Kit (ADK) issued to Richard Wolff by Google Cloud"></a> | <a href="https://www.credly.com/badges/4eca7d7d-e2e3-49ef-9ad8-d8ce3b9f333a"><img src="assets/credentials/cloud-security.png" width="180" alt="Implement Cloud Security Fundamentals on Google Cloud Skill Badge issued to Richard Wolff by Google Cloud"></a> | <a href="https://www.credly.com/badges/3440ac32-b090-4f0a-a748-d40e15dd80c4"><img src="assets/credentials/load-balancing.png" width="180" alt="Implement Load Balancing on Compute Engine Skill Badge issued to Richard Wolff by Google Cloud"></a> |
| [Engineer AI Agents with Agent Development Kit (ADK)](https://www.credly.com/badges/d40e406d-d517-4f05-bf7f-6e0312cc8c72) | [Implement Cloud Security Fundamentals on Google Cloud Skill Badge](https://www.credly.com/badges/4eca7d7d-e2e3-49ef-9ad8-d8ce3b9f333a) | [Implement Load Balancing on Compute Engine Skill Badge](https://www.credly.com/badges/3440ac32-b090-4f0a-a748-d40e15dd80c4) |
| Apr 14, 2026 | Jul 11, 2026 | Jul 11, 2026 |

These Google Cloud skill badges recognize completion of hands-on challenge labs. [View my Credly badge wallet](https://www.credly.com/users/wolffrichardj).

## Application work and engineering judgment

[**Databricks Associate Study App**](https://github.com/wolffrichardj/databricks-associate-study-guide#engineering-proof-duplicate-question-selection) is a personal React and TypeScript project with browser-local study progress and focused quizzes.

Its engineering summary connects a real March 2026 change to public [selection code](https://github.com/wolffrichardj/databricks-associate-study-guide/blob/53a35a9d89da5755d94d1d2880f6023c4d6f90b0/src/lib/quiz.ts), [regression tests](https://github.com/wolffrichardj/databricks-associate-study-guide/blob/53a35a9d89da5755d94d1d2880f6023c4d6f90b0/src/test/quiz.test.ts), screenshots, and a dated validation record with its limits. The [development lessons](https://github.com/wolffrichardj/databricks-associate-study-guide/blob/53a35a9d89da5755d94d1d2880f6023c4d6f90b0/LESSONS_LEARNED.md) describe the agent-assisted workflow.

[**When an AI coach should stay silent**](https://richardwolff.me/resources/agentcoach/preview.html) is a source-reviewed engineering case study from the private AgentCoach project. It examines evidence, tentative inference and abstention using newly authored fictional illustrations. The alpha gate remains closed; product tests and coaching efficacy are not established by the case study.

[Shared agent workflows](https://github.com/wolffrichardj/shared-agent-workflows) collects workflows and skills gathered or adapted during personal projects. [Reinforce](https://github.com/wolffrichardj/shared-agent-workflows/tree/main/generic/skills/reinforce) is a published skill for routing reusable lessons to memory, workflow instructions, helpers, or canonical sources. [Install Reinforce 0.1.0](https://github.com/wolffrichardj/shared-agent-workflows/releases/tag/reinforce-v0.1.0).

## How I approach agentic delivery

For my personal projects, I use agents to explore ambiguous intent and implementation, then move stable requirements into deterministic tests, interfaces and delivery controls. Evaluation checks whether the intended outcome happened. Explicit policy governs whether to fix, rerun, fall back, stop or ask for review.

My delivery model moves from a request through AI-assisted implementation, container build, automated tests and development-site evaluation. A **human review gate** brings together the requirement, implementation, test evidence, risks and visible behavior. Approval controls merge and promotion of the **same reviewed artifact** through UAT and production, followed by live verification. Useful lessons become maintained tests, controls and repository guidance.

<details>
<summary>View my personal delivery-loop model</summary>

![Personal delivery loop: text request, AI coding and refinement, container build, automated tests, development site, human review, and live verification. Failures return to fixes and reruns; verification and learning inform the next request.](assets/agentic-delivery-loop.png)

This is the operating model I am developing for my personal projects. The correction loop runs during an active agent task; unattended resumption remains a pilot target. The two samples above demonstrate individual verification boundaries within that broader model.

</details>

## Community contribution

My [DerbyNet fork](https://github.com/wolffrichardj/derbynet) builds on the upstream race-management project. My work there centers on deployment and documentation; the underlying application is upstream work.

## Professional context and contact

- [Leadership case studies and background](https://richardwolff.me/)
- [LinkedIn](https://www.linkedin.com/in/wolffrichardj)
- [Email](mailto:wolffrichardj@gmail.com)

I’m interested in speaking engagements on AI and scalable solutions.

These are personal projects and practices, not employer policy or endorsement.
