## Security and Auditing Course

[Yet Another Patrick's Great Course](https://www.youtube.com/watch?v=pUWmJ86X_do)

[Current Timestamp](https://youtu.be/pUWmJ86X_do?t=2387)

## Prereqs

- [Foundry](https://github.com/foundry-rs/foundry)
- [Cyfrin Updraft](https://updraft.cyfrin.io/)

## How to Do Competitive Audits

- Submit findings
    - Don't include the severity in title
    - Choose the severity
    - Relevant Github links: Go to the line where you found a bug and hover over the line number, click on the three
    dots and select `copy permalink`
    - Copy and paste findings into the textarea (MUST HAVE PoC!!)
    - Submit

## General Auditing Procedure

1. Don't rush to audit their code, make sure they are eligible for code audit first.
    - Do the [Rekt Test](https://blog.trailofbits.com/2023/08/14/can-you-pass-the-rekt-test/)
    - Only Etherscan link -> Red Flag
    - Ask them the [Minimal Onboarding Questions](https://github.com/Cyfrin/security-and-auditing-full-course-s23/blob/main/minimal-onboarding-questions.md)
2. Do scoping
    - Be sure which commit you are reviewing
    - Use [cloc](https://github.com/AlDanial/cloc) to fill in the `Stats` section in Minimal Onboarding Questions
    - (Team) Setup a repo on your github account using [Audit Repo Cloner](https://github.com/Cyfrin/audit-repo-cloner)

3. Recon
    - Generate a report using [Solidity Metrics](https://github.com/Consensys/solidity-metrics) to get an overview
    - Run static analysis tools like **slither/aderyn** on the repo
    - Understand how the protocol works
    - Setup a `note.md` to take notes
    - Start going line by line / Start from main functionalities within scope (Depends on preference)
        - This part usually mix with vulnerability identification
    - Run tests in our local env 
    - See how their coverage is (not deterministic)

4. Vulnerability Identification
    - Check Solidity Version (Some solidity versions are broken)
    - Find Vulnerabilities
        - [SC-Exploits-Minimized](https://github.com/Cyfrin/sc-exploits-minimized)
    - Find Library Vulnerabilities (in private audits)
    - Record findings in a markdown file

5. Writing Report
    - Convey information to protocol to make them safer (as educators)
        - Write a findings report using the [template](https://github.com/Cyfrin/security-and-auditing-full-course-s23/blob/main/finding_layout.md) including
            - [Slither Detectors](https://github.com/crytic/slither/wiki/Detector-Documentation)  
            - Convince the protocol this is issue
            - How bad the issue is
            - How to fix the issue
    - Clarify with ChatGPT

        ```
        Example Prompt:

        The following is a markdown write up of a finding in a smart contract codebase, can you help make sure it's grammatically correct, and formatted nicely?

        // Put 4 backticks
        // Put the finding here
        // Put 4 backticks
        ```
    - Determine [Severity Rating](https://docs.codehawks.com/hawks-auditors/how-to-evaluate-a-finding-severity)
    - Generate report using [Report Generator Template](https://github.com/Cyfrin/report-generator-template)

## Report Generation

1. Generate from single markdown (solo)
    - [Audit Report Templating](https://github.com/Cyfrin/audit-report-templating/)

2. Generate from Github issues (team)
    - [Audit Repo Cloner](https://github.com/Cyfrin/audit-repo-cloner): Prepares audit repo in our Github
    - [Report Generator Template](https://github.com/Cyfrin/report-generator-template): Generate report from audit repo



## Tools & Resources

- [Solidity Metrics](#solidity-metrics)
- [Slither](#slither)
- [Aderyn](#aderyn)
- [Phind](https://www.phind.com/search?home=true): AI Copilot (Searches the web)
- [vscodium](https://vscodium.com/): Vscode but no Microsoft telemetry and stuff
- [peeranha](https://peeranha.io/): Q&A Forum
- [Remix IDE](https://remix.ethereum.org/)
- [Solidity By Example](https://solidity-by-example.org/)
- [Solidity Documentation](https://docs.soliditylang.org/)
- [Foundry Course](https://github.com/Cyfrin/foundry-full-course-f23)
- [Headers](https://github.com/transmissions11/headers)
- [SC-Exploits-Minimized](https://github.com/Cyfrin/sc-exploits-minimized)
- [UpgradeHub](https://upgradehub.xyz/): See how contracts upgraded overtime

## Solidity Metrics

https://github.com/Consensys/solidity-metrics

Generate markdown for the whole folder:

```sh
solidity-code-metrics <project name>/src/*/**.sol > audit-data/metrics.md
```

Generate HTML:

```sh
solidity-code-metrics <project name>/src/*/**.sol --html > audit-data/metrics.html
```

## Slither

To run it:
```sh
conda activate audit # the env u installed slither
slither <project name> --config-file slither.config.json --checklist > audit-data/slither.md
```

Sample `slither.config.json` (put in project root if it doesn't exist):
```json
{
    "detectors_to_exclude": "conformance-to-solidity-naming-conventions,incorrect-versions-of-solidity",
    "exclude_informational": false,
    "exclude_low": false,
    "exclude_medium": false,
    "exclude_high": false,
    "disable_color": false,
    "filter_paths": "(mocks/|test/|script/|upgradedProtocol/)",
    "legacy_ast": false,
    "exclude_dependencies": true
}
```

Checkout their git [wiki](https://github.com/crytic/slither/wiki/Detector-Documentation) for the detectors.

## Aderyn

To run it:

```sh
aderyn .; mv report.md ../audit-data/report.md
```

