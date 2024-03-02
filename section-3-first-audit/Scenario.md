# Scenario

## Scoping
The PasswordStore team has just given you their codebase and asked for a security review.

They give you an [Etherscan link](https://sepolia.etherscan.io/address/0x2ecf6ad327776bf966893c96efb24c9747f6694b)......

You did exercise 1 and you ask them whether they have a testing framework. They give you a [Github link](https://github.com/Cyfrin/3-passwordstore-audit).

> If they do not give you a link or say "no shut up and just audit it", it's a waste of our time to continue. That's proff they don't actually want to be safer.

Before the audit, you send them the [Minimal Onboarding Questions](https://github.com/Cyfrin/security-and-auditing-full-course-s23/blob/main/minimal-onboarding-questions.md) and 
ask them to fill it out. They realized that they didn't have documentations and stuff, so they went back and did the documentations, and sent you this 
[new link](https://github.com/Cyfrin/3-passwordstore-audit/tree/onboarded).

We can checkout the README page and clone the code base to local for testing. After cloning the code, we checkout the commit hash they provided.

## Recon & Vulnerability Identification

Refer to Notes and the code base cloned

## Writing Report

Checkout `audit-data` folder for the findings report and stuff.


> In this course, the `audit-data` branch is the answer key

## Exercise

1. When a protocol gives you only an Etherscan link, what do you think should be your next step?

    Answer: do the audit readiness test in the [previous section](../section-2-audit-overview/Notes.md#Audit-Readiness). 
    In the Rekt test, everything fails. It isn't even worth an audit. Only AFTER they pass (most of) the Rekt test can we do a security review.
   
    > If they insist on not having a test suite, just ask for extra money and we can do the test suite for them.

