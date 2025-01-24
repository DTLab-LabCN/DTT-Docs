---
sidebar_position: 3
---

# How to use this test suite

The purpose of this test suite is to test an issued Verifiable Credential for conformance with the VC data model [1.1](https://www.w3.org/TR/vc-data-model/) or [2.0](https://www.w3.org/TR/vc-data-model-2.0/) specifications.
Simply paste a valid JSON payload and click on **Validate JSON**. This will bring you to a **Credential Summary** screen with a visual representation of the parsed and validated payload. Click on **See Test Results** to get access to the full conformance test results.

## Verifiable Presentations {#verifiable_presentations}

A Verifiable Presentation (VP) is derived from one or more Verifiable Credentials (VC) issued by one or more issuers. For example, a VP may contain assertions proofing the holder’s identity, address and proof of income, derived from 3 different VCs from different issuers. Try it out with the VP sample provided!

## Testing for conformity with v1.1 versus v2.0 of the specification {#testing_v1.1_vs_v2.0}

DTT relies on the context provided in a Verifiable Credential payload to determine which version of the specification to test against. Specically:

| W3C VCDM version number | Expected context |
| ---------- | ------------- |
| v1.1 | `"https://www.w3.org/2018/credentials/v1"` |
| v2.0 | `"https://www.w3.org/ns/credentials/v2"` |

## Using the optional validation options {#using_the_options}

**Background:** There are a number of properties defined in the W3C Verifiable Credential Data Model specification that are not defined as required in order to support a wide variety of use cases and levels of assurance requirements. For example, the date defining when a credential becomes valid is optional. While this might enable the bulk creation of temporary/preliminary VC that don't yet have a validy period defined at that time, for a number of ecosystems this is a key required fields.

**Selecting your options:**
By default, DTT will treat these properties as if they were required, which will impact the conformance test results. If you want a property to be validated as optional, as per the specification, simply change 'true' to 'false' before clicking on **Validate JSON**.

| Option name | Data model reference | Explanation |
| ----------- | -------------------- | ----------- |
| `require_proof` | [VCDM 2.0 ch. 4.12](https://www.w3.org/TR/vc-data-model-2.0/#securing-mechanisms)| The specication recognizes two classes of securing mechanismes, including *enveloping proofs*, making this *embedded proof* property optional |
| `require_expiration_date` | [VCDM 1.1 ch. 4.8](https://www.w3.org/TR/vc-data-model/#expiration) | Note that this has been replaced by the `valid_until` property in v2.0 |
| `require_credential_status` | [VCDM 2.0 ch. 4.10](https://www.w3.org/TR/vc-data-model-2.0/#status) | The `credentialStatus` property can define one ore more status associated with the credential, including a *revocation* status, but it is optional. |
| `require_holder` | [VCDM 2.0 ch. 4.13](https://www.w3.org/TR/vc-data-model-2.0/#verifiable-presentations) | A *verifiable presentation* can define a `holder`, which can be a key part of the validation process for a *Verifier*, but is an optional property. |
| `require_valid_from` and `require_valid_until` | [VCDM 2.0 ch. 4.9](https://www.w3.org/TR/vc-data-model-2.0/#validity-period) | If a validity period is not defined, the VC is assumed to be valid indefinitely from the time it was created. |
| `require_dereferencing` | [VCDM 2.0 ch. 4.2](https://www.w3.org/TR/vc-data-model/#identifiers) | It is recommended that the URI used for identifiers be one that can be dereferenced into a document containing machine-readable information about the *id*. When set to `true`, this will for example attempt to resolve the **DID** used to define the *Issuer* of a VC. Note that a bit of extra time is required to perform this additional validation. |
