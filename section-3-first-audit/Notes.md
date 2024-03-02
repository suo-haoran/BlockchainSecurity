# Notes

1. Don't rush to audit their code, make sure they are eligible for code audit first.
    - Do the [Rekt Test](https://blog.trailofbits.com/2023/08/14/can-you-pass-the-rekt-test/)
    - Only Etherscan link -> Red Flag
    - Ask them the [Minimal Onboarding Questions](https://github.com/Cyfrin/security-and-auditing-full-course-s23/blob/main/minimal-onboarding-questions.md)
2. Do scoping
    - Be sure which commit you are reviewing
    - Use [cloc](https://github.com/AlDanial/cloc) to fill in the `Stats` section in Minimal Onboarding Questions
3. Recon
    - Generate a report using [Solidity Metrics](https://github.com/Consensys/solidity-metrics) to get an overview
    - Understand how the protocol works
    - Setup a note.md to take notes
    - Start going line by line / Start from main functionalities within scope (Depends on preference)
        - This part usually mix with vulnerability identification
    - Run tests in our local env 
    - See how their coverage is (not deterministic)

4. Vulnerability Identification
    - Check Solidity Version (Some solidity versions are broken)
    - Find Vulnerabilities
        - Missing access control
        - Private variables actually are not private
        - etc..

5. Writing Report
    - Convey information to protocol to make them safer (as educators)
        - Write a findings report using the [template](https://github.com/Cyfrin/security-and-auditing-full-course-s23/blob/main/finding_layout.md) including
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
    - [Generate PDF audit report](https://github.com/Cyfrin/audit-report-templating)
        - [Install LaTex on Ubuntu](https://geekflare.com/how-to-install-latex-on-ubuntu/)
        - [Install eisvogel.latex](https://github.com/Wandmalfarbe/pandoc-latex-template)


As a private auditor, my goal is to do whatever I can to make the protocol more secure. 

This often means looking into and improving the protocol's tests and engineering best practices.

Also tests can give us insights into what **the protocol is/isn't testing for. Which might tell us where the bugs maye be**.

## How Tincho Do It
- [ ] Download codebase and read their documentation
- [ ] Create a foundry local test environment apart from their environment and test stuff there
- [ ] Use cloc (or better, [Solidity Metrics](https://github.com/Consensys/solidity-metrics) on their code base and save the result to a csv
- [ ] Rank based on complexity
- [ ] Create a kanban
- [ ] Start going through the code
- [ ] For code that is ok, comment `//e checked, ok`
- [ ] For code that requires further inspection, comment `//? what is this ?`
- [ ] For code that is vulnerable, comment `//! issue: ...`
- [ ] Take notes in **markdown** and record any issues encountered
- [ ] Do unit test in local testing env
- [ ] Do complex integration in their code base
- [ ] Take the time to write a very good report and hand it to them
- [ ] After they fix the issues you found, make sure to go over it one more time in case they missed any
- [ ] Make sure they did not introduce new bugs

> Don't go down a rabbit hole, you might lose the big picture.<br>
> Ask client questions when things are unclear, Communication is key <br>
> There's always one additional line that you can check. So TIME BOUND yourself, complete stuff before deadlines!<br>
> Read more code, read more reports, give yourself more exposure to this stuff. <br>
> 50% finding vulnerabilities, 50% writing report. <br>
> It's not solely the auditor's job to make sure the code is bug free, but that doesn't mean auditors should suck, people will notice. 
