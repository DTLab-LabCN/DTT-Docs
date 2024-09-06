---
sidebar_position: 4
---

# Test results

## How to inspect and understand your test results {#how-to-inspect-and-understand-your-test-results}

**_TO-DO_**: plain English overview of results, maybe in the form of a simple checklist?

## Common errors and their meaning {#common-errors-and-their-meaning}

| Error code | Description | What it might mean |
| ---------- | ----------- | ------------------ |
| 400 | _DID Syntax Invalid: DID must start with [did:]_ | Check your input and the provided examples to ensure it's a DID. |
| 404 | _DID or DID URL not found_ | For did:web specifically, this usually suggests that the `/.well-known/did.json` file is not available. |
| 501 | _DID method not supported_ | DTT is not currently configured to have access to a driver for this DID method, or a driver hasn’t been implemented yet. |

## How to save and share your test results {#how-to-save-and-share-your-test-results}

**_FUTURE_**: intro to Allure report framework
