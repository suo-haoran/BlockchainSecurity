# What is a Security Review / Smart Contract Audit

- [High Level Overview](https://www.youtube.com/watch?v=aOqhQvWhUG0)
- People say "audit" but it's actually security review
- No silver bullet to auditing and they have limitations

## 3 Phases of Security Review

- Initial Review
    - a. Scoping
    - b. Reconnaissance
    - c. Vulnerability Identification
    - d. Reporting
- Protool Fixes
    - a. Fixes Issues
    - b. Retests and adds tests
- Migration Review
    - a. Reconnaissance
    - b. Vulnerability Identification
    - c. Reporting

In a private audit, we should aim to make the protocol as secure as possible.

In a competitive audit, we should aim to optimize time spent and find highly vulnerable bugs first.


## [Smart Contract Development Life Cycle](https://aws.amazon.com/what-is/sdlc/)

- Plan & Design
- Develop & Test
- Smart Contract Audit & Post Deployment Planning (Continuous Process)
- Deploy
- Monitor & Maintain

## Audit Readiness
- [Simple Security Toolkit](https://github.com/nascentxyz/simple-security-toolkit)
    - Test suite with code coverage
    - Fuzzing, Static Analysis
    - Natspec (especially for external/public functions)
- [Rekt Test](https://blog.trailofbits.com/2023/08/14/can-you-pass-the-rekt-test/)
    - "Code maturity" is important

## Tooling

- Static Analysis
    - Slither
    - Aderyn
- Fuzzing / Invariant Tests
    - Foundry
    - Echidna
    - Consensys
- Formal Verification
    - Certora
    - Solidity SMT Checker
    - Maat
    - Manticore
- AI
- [Tooling vs Humans](https://github.com/ZhangZhuoSJTU/Web3Bugs)


## What If You Did An Audit and The Protocol is Hacked?

Auditors have some degree of responsibility to find bugs, but shouldn't blame the auditor only.

The exploit is there because the developers, auditors missed it even after several rounds of testing.

The auditor and the company should work together as a team to resolve the issue.

> Always Be Learning!
