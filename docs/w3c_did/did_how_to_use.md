---
sidebar_position: 3
---

# How to use this test suite

Please complete the access request form on the [DTT landing page](https://dtt.dtlab-labcn.app/) or contact [support@dtlab-labcn.org](mailto:support@dtlab-labcn.org) if you don't have a user account for DTT.

To get started, enter the URL representing a DID, and click on **Resolve DID URL**.

## Need examples to try it out? {#DID_examples}

[https://dev.uniresolver.io/](https://dev.uniresolver.io/) and [https://godiddy.com/app/resolve](https://godiddy.com/app/resolve) provide a number of examples for a variety of DID methods.
Here are a few to get you started!

>`did:cheqd:mainnet:Ps1ysXP2Ae6GBfxNhNQNKN`\
>`did:ebsi:zxE9ucTwx5V7Aean5Kj6Lz3`\
>`did:ethr:0x1:0x3b0BC51Ab9De1e5B7B6E34E5b960285805C41736`\
>`did:kscirc:k2xxMB9tYCPwg3pmCtGwHjEjwiRimVFhY8EevKMNu7mN9igGvYC`

## Using the optional validation options {#using_the_options}

The DID resolver supports various advanced resolution features. They are defined in the [did-spec-extensions](https://github.com/decentralized-identity/did-spec-extensions?tab=readme-ov-file#extension-resolution-options). If you do not want to see those potential warnings in your test report, simply change the relevant option(s) from `true` to `false` and click on **Set test profile** to save your choices before clicking on **Resolve DID URL**.

| Option name                    | DTT DID test                      | Explanation                                                                                                                                                                |
| ------------------------------ | --------------------------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `checkValidDidDocument`        | \#1 Valid DID Document Check      | Checks if the DID document **conforms with the W3C DID v1.0 specification**.                                                                                              |
| `checkMethod`                  | \#2 Allowed DID Method Check      | Checks if the DID method is not allowed, based on an allowlist and denylist.                                                                                               |
| `checkVerificationMethodType`  | \#3 Allowed Verification Method Type Check | Checks if the DID document contains a verification method with a type that is not allowed, based on an allowlist and denylist.                                               |
| `checkCertificate`             | \#4 Certificate Chain Validation Check | Checks if a DID document contains a key that cannot be traced back to a trusted certificate authority, based on an allowlist and denylist.                                     |
| `checkDns`                     | \#5 DNS Validation Check          | Checks if a DID document contains a domain name that cannot be verified via DNS, based on an allowlist and denylist.                                                         |
| `checkKeyType`                 | \#6 Allowed Key Type Check        | Checks if the DID document contains a key type that is not allowed, based on an allowlist and denylist.                                                                     |
| `checkLocalDerivedKey`         | \#7 Local Derived Key Check       | Checks if derived keys have been detected in the DID document, e.g., an X25519 key derived from an Ed25519 key.                                                              |
| `checkLocalDuplicateKey`       | \#8 Duplicate Key Check           | Checks if duplicate keys have been detected in the DID document.                                                                                                           |
| `checkGlobalDuplicateKey`      | \#9 Global Duplicate Key Check    | Checks if duplicate keys have been detected between the DID document and other globally known DID documents.                                                                |
