---
sidebar_position: 1
---

# Introduction to W3C DID

## What are DIDs? {#what-are-dids}

Decentralized identifiers (DIDs) are unique and persistent identifiers that do not rely on any single centralized authority. They can refer to any subject (person, organization, thing, etc.).

## What is their role / how are they being used? {#what-is-their-role-how-are-they-being-used}

From the [W3C DID Core Recommendation](https://www.w3.org/TR/did-core/):
DIDs are *URIs* that associate a *DID subject* with a *DID document* allowing trustable interactions associated with that subject. Each DID document can express cryptographic material, *verification methods*, or *services*, which provide a set of mechanisms enabling a *DID controller* to prove control of the DID. Services **enable trusted interactions** associated with the DID subject.

## DID URL syntax overview {#did_url_syntax_overview}

A DID is a simple text string consisting of three parts:

1. the DID URI scheme identifier
2. the identifier for the DID method
3. the DID method-specific identifier.

![decentralized identifier example](../images/did-format-example.png)
