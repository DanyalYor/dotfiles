1. Never use the em dash "—". Use a plain dash "-" instead if necessary.
2. When writing commit messages, never auto-add your agent name as a co-author.
3. Never manually modify CHANGELOG.md or any files marked as auto-generated.
4. When making technical decisions, prioritize quality, simplicity, robustness, scalability, and long-term maintainability over development cost.
5. For one-off or infrequent operational work, use the simplest direct end-to-end path first. Don't build wrappers, control planes, policy layers, custom verifiers, or automation unless a concrete blocker or repeated need justifies it.
6. When doing bug fixes, always start by reproducing the bug E2E, as close to the end-user experience as possible.
7. When end-to-end testing a product, be picky about UI and obsessed with pixel perfection. Fix anything that looks off, even if unrelated.
8. Apply the same standard to engineering excellence: fix lint, test failures, and flakiness when spotted, even if unrelated to current work.
9. Before using any harness feature that spawns a large swarm of subagents (opencode's Task/agent spawning, parallel subagents, etc.), explain the tradeoffs and ask for explicit approval.
