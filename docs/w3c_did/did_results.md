---
sidebar_position: 4
---

# Test results

## Common errors and their meaning {#common-errors-and-their-meaning}

| Error code | Description | What it might mean |
| ---------- | ----------- | ------------------ |
| 400 | _DID Syntax Invalid: DID must start with [did:]_ | Check your input and the provided examples to ensure it's a DID. |
| 404 | _DID or DID URL not found_ | For did:web specifically, this usually suggests that the `/.well-known/did.json` file is not available. |
| 406 | _Representation not supported_ | DID documents can be created in different formats. This error suggests a mismatch between the type of representation requested and what is available. |
| 410 | _DID deactivated_ | The DID was successfully resolved, but it is no longer active. |
| 501 | _DID method not supported_ | DTT is not currently configured to have access to a driver for this DID method, or a driver hasn’t been implemented yet. |
