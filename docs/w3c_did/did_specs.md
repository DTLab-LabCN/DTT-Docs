---
sidebar_position: 2
---

# Standards and specifications for DID methods

Several working groups are collaborating towards the standardisation and adoption of DIDs, to enable the creation, resolution, and discovery of decentralized identifiers and names across decentralized digital credentials and identity ecosystems. They are anchoring their work on the W3C DID Core recommendation ("Standard"), augmenting it with more implementation focused guidelines and recommendations to use DIDs, and with additional requirements that are DID-method specific.

## W3C DID core specification {#w3c-did-core-specification}

[Decentralized Identifiers (DIDs) v1.0](https://www.w3.org/TR/did-core/). This document specifies the DID syntax, a common data model, core properties, serialized representations, DID operations, and an explanation of the process of resolving DIDs to the resources that they represent.

## Resolution of Decentralized identifiers (DIDs) {#resolution-of-decntralized-identifiers}

The [DID resolution draft report](https://w3c.github.io/did-resolution/) augments the DID core specification by defining common requirements, algorithms including their inputs and results, architectural options, and various considerations for the DID resolution and DID URL dereferencing processes.

Each DID method that gets defined should be registered in the [DID Method Registry](https://w3c.github.io/did-spec-registries/#did-methods) of the W3C DID working group.
Each DID method requires the implementation of a *driver* to enable implementations of the universal resolvers to support this DID method. See [universal-resolver/docs/driver-development.md](https://github.com/decentralized-identity/universal-resolver/blob/main/docs/driver-development.md#driver-rules) for more information.

## Method-specific specifications and best practices {#method-specific-specifications-and-best-practices}

While all DID methods must conform to the W3C DID Core specification, different use cases and requirements have led to the creating of different and complementary DID methods. Some are fairly well defined and are used in production, whereas others are more experimental and not as completely defined yet.
Defining how a DID and DID document are created, resolved, and managed on a specific blockchain or “target system” is the role of a DID method specification.

Here are some of the DID methods most actively used and discussed by the community. For more information, please consult the [DID Method Registry](https://w3c.github.io/did-spec-registries/#did-methods).

| DID method | Specification | Status |
| ---------- | ------------- | ------ |
| did:indy | [https://github.com/hyperledger/indy-did-method](https://github.com/hyperledger/indy-did-method) |    |
| did:key | [https://w3c-ccg.github.io/did-method-key](https://w3c-ccg.github.io/did-method-key) | The did:key Method v0.7 |
| did:peer | [https://identity.foundation/peer-did-method-spec](https://identity.foundation/peer-did-method-spec) | Peer DID Method Specification |
| did:tdw | [https://identity.foundation/trustdidweb/](https://identity.foundation/trustdidweb/) | Trust DID Web - The did:tdw DID Method |
| did:web | [https://w3c-ccg.github.io/did-method-web](https://w3c-ccg.github.io/did-method-web) | Unofficial draft authored by the [W3C Credentials Community Group](https://www.w3.org/community/credentials/). |
| did:x509 | [https://github.com/microsoft/did-x509](https://github.com/microsoft/did-x509) | DRAFT: did:x509 Decentralized Identifier Method Specification |
