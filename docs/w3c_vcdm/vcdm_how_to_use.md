---
sidebar_position: 3
---

# How to use this test suite

The purpose of this test suite is to test an issued Verifiable Credential for conformance with the VC data model 1.1 or 2.0 specifications.
Simply paste a valid JSON payload and click on **Validate JSON**. This will bring you to a **Credential Summary** screen with a visual representation of the parsed and validated payload. Click on **See Test Results** to get access to the full conformance test results.

## Verifiable Presentations {#verifiable_presentations}
A Verifiable Presentation (VP) is derived from one or more Verifiable Credentials (VC) issued by one or more issuers. For example, a VP may contain assertions proofing the holder’s identity, address and proof of income, derived from 3 different VCs from different issuers. Try it out with the VP sample provided!

## Testing for conformity with v1.1 versus v2.0 of the specification {#testing_v1.1_vs_v2.0}
DTT relies on the context provided in a Verifiable Credential payload to determine which version of the specification to test against. Specically:
| W3C VCDM version number | Expected context |
| ---------- | ------------- |
| v1.1 | `"https://www.w3.org/2018/credentials/v1"` |
| v2.0 | `"https://www.w3.org/ns/credentials/v2"` | 
