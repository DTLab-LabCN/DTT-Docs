# DTT-Docs How-To

If you are searching for the production DTT documentation, go to [https://dtt.docs.dtlab-labcn.app]

## Updating the documentation

The [docs](./docs) directory is most probably where you want to do modifications, unless you want to modify docusaurus site-generation behavior itself ([docusaurus reference here](https://docusaurus.io/docs)).

Updating the documentation then consists in updating or adding an md file in the relevant directory.
If you are using a [serious editor](https://code.visualstudio.com/) you can have immediate feedback on your modification by using the preview feature.

Now, if you really want to get a preview of the end product, they are two ways:

### 1 - Running locally on you workstation

(Inspired from [https://tutorial.docusaurus.io/docs/intro])

You need access to a local command-line, with an recent installation of [Node.js](https://nodejs.org/en/download/), i.e. [something more recent that Node.js 18.0](https://docusaurus.io/docs/installation)

Then, go to the root directory of your DTT-Docs git clone, and run the following commands:

```bash
### >>> First time only <<< ###
npm install
# Variables in .env.sample file could be customised
# but this is not necessary for local-only testing
# Note that the `build` step below will fail if the relevant
# environment variables are not set
source .env.sample
# Linux, WSL or MacOS command-line example
npm run build && npm run start
```

If everything goes well, your terminal should display:

```bash
(...)
[SUCCESS] Serving "build" directory at: http://localhost:3000/
```

And if everything goes even better, your favorite web browser should open the rendered version of you modifications.

### 2 - Testing this directly on the documentation staging web site

_\<TODO\>_