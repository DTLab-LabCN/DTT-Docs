---
sidebar_position: 2
---

# Standards and specifications for DID methods

## Understanding the Decentralized Identifier ecosystem {#understanding-the-decentralized-identifier-ecosystem}

See [universal-resolver/docs/driver-development.md at main](https://github.com/decentralized-identity/universal-resolver/blob/main/docs/driver-development.md#driver-rules) 

[DID Specification Registries](https://www.w3.org/TR/did-spec-registries/)

 

## W3C DID core specification {#w3c-did-core-specification}

[Decentralized Identifiers (DIDs) v1.0](https://www.w3.org/TR/did-core/)


## Method-specific specifications and best practices {#method-specific-specifications-and-best-practices}

**_TO-DO_**: We need to explain the role of those specs in relation to the CORE spec, which we can get from the primer sections of those specs hopefully, but also what exactly we are testing for here (which may require explaining that it depends on what validation the driver for this specific method has implemented)

| DID method | Specification | Status |
| ---------- | ------------- | ------ |
| did:indy | https://github.com/hyperledger/indy-did-method |    |
| did:key | https://w3c-ccg.github.io/did-method-key | The did:key Method v0.7 |
| did:peer | https://identity.foundation/peer-did-method-spec | Peer DID Method Specification |
| did:tdw | https://bcgov.github.io/trustdidweb | Trust DID Web - The did:tdw DID Method |
| did:web | https://w3c-ccg.github.io/did-method-web | Unofficial draft authored by the [W3C Credentials Community Group](https://www.w3.org/community/credentials/). |
| did:x509 | https://github.com/microsoft/did-x509 | DRAFT: did:x509 Decentralized Identifier Method Specification |