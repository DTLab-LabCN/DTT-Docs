# DTT-Docs How-To

If you are searching for the production DTT documentation, go to [https://dtt.docs.dtlab-labcn.app]

## Updating the documentation

The [docs](./docs) directory is most probably where you want to do modifications, unless you want to modify docusaurus site-generation behavior itself ([docusaurus reference here](https://docusaurus.io/docs)).

Updating the documentation then consists in updating or adding an md file in the relevant directory. If no directory exists, then add it as well, of course.
If you are using a [serious editor](https://code.visualstudio.com/) you can have immediate feedback on your modification by using the preview feature.

Now, if you really want to get a preview of the end product insted of a single page preview, they are two ways:

### 1 - Running locally on you workstation

(Inspired from [https://tutorial.docusaurus.io/docs/intro]), should run on linux, WSL, and MacOS X.

**Note**: running locally has the advantage of having your modification appear in near-real-time in the navigator
instance that automatically opened by `start-local.sh`, or any modern navigator pointed to your [local instance http://localhost:3000/DTT-Docs-staging/](http://localhost:3000/DTT-Docs-staging/).

You need access to a local command-line, with an recent installation of [Node.js](https://nodejs.org/en/download/), i.e. [something more recent that Node.js 18.0](https://docusaurus.io/docs/installation)

Then, go to the root directory of your DTT-Docs git clone, and run the following command:

```bash
./start-local.sh
```

If everything goes well, your terminal should display:

```bash
(...)
[SUCCESS] Docusaurus website is running at: http://localhost:3000/DTT-Docs-staging/
(...)
```

And if everything goes even better, your favorite web browser should open the rendered version of you modifications, updated in near-real time as explained above.


### 2 - Testing this directly on the documentation staging web site

The staging documentation is available here (https://dtlab-labcn.github.io/DTT-Docs-staging/)

#### a The _I want to be a team player_ way

1. You need to clone [this documentation staging repository](https://github.com/DTLab-LabCN/DTT-Docs-staging)
2. You then need to create a branch, preferably directly from the [jira issue](https://dtlab-labcn.atlassian.net/jira/software/projects/DTT/boards/16) itself, to have a consistent naming convention.
3. Do the required work, and create a pull request  (PR) from your branch to this repository main branch, which will at least trigger a test build for your branch each time you push a new commit to your working branch/PR.  
   **WARNING**  
   Depending on how you create your pull request,  
   github will present you the main branch of the production docs repository:  
   ➡ Avoid this pitfall and check your target repository.
4. Merge the pull request to the **`main`** branch **NOT** ~~`gh-pages`~~.  
   ➡ This is going to automatically update the github pages if the automatic action is successful

#### b The _YOLO_ way

1. You need to clone this repository
2. Checkout the `main` branch, and directly push commits to it.  
   It's just the staging site, after all 🤷🏽.
3. Be prepared to deal with possible team players complaints, merge, etc.

## Updating the production documentation

Like mentionned in passing before, the [DTT-Docs-staging](https://github.com/DTLab-LabCN/DTT-Docs-staging) repository is actually a fork of the production repository [DTT-Docs](https://github.com/DTLab-LabCN/DTT-Docs).

Unless special circumstances are required, not work should happen directly in the production docs repository.

Now, the gist of putting the documentation in production is:

1. Creating a Pull request from the Staging repository main branch to the Production repository main branch.
2. Making sure the PR passes all the test (check build, approval)
3. Merging this PR in production, which will trigger a production documentation rebuild

Once the `main` branch is OK in this staging repository, create a pull request going directly to the `DTT-Docs` repository.

### 1- Creating a Pull Request from the Staging repository to the Production repository

- Go to [the main branch of the staging repository](https://github.com/DTLab-LabCN/DTT-Docs-staging)
- If you did everything right, under the branches pull-down list, there should be box saying:  
  This branch is N commits ahead (...) of `DTLab-LabCN/DTT-Docs:main`  
- At the right of this box, there should be a `Contribute` button
- Press it, and it should display a green button to `Open pull request`
- Update or not the title and description, and you can press the `Create pull request` button

### 2- Making sure the Pull Request passes all the test

Once the PR is created, the github GUI switched to the DTT-Docs production repository to show your PR main page.
In the middle of the page, a few checks are displayed. At the time of writing this readme, they are:

- `Review required`: it means that you shoud have someone else review and accept your work before this warning disappears.  
  Start by adding a reviewer using the top right widget.
- `All checks have passed`: here, the github framework reports on the automatic tests built into the documentation repository.  
  There is currently only one, which checks if docusaurus can build the documentation.  
  - If this check is not passing, use the `Show all checks` links to go to the details of the failed action.
  - To correct the problem, and re-run the check to make it pass. If correcting the problem involves pushing another commit to staging main branch, the re-run will happen automatically
- Once all the check are passing you can merge your PR to deploy the new documentation in production

**CAUTION**  

If you are an administrator, you can check the `Merge without waiting for requirements to be met (bypass branch protections)` box, but needless to say: **you better know what you are doing in this case (!)**

### 3- Merging the documentation Pull Request in production

---

**IMPORTANT**  

There is a configuration variable, accessing through [the Settings -> Secrets and variables -> Action](https://github.com/DTLab-LabCN/DTT-Docs/settings/variables/actions)

This variable is named `DTT_DOCS_EXCLUDED_PATH`.

➡ its purpose is to designate a list of files or directories that **won't be included** in the production documentation.

It is structured as a `:`-separated list of files and directory that are going to be suppressed from the documentation source code before building the production site.

Let's use an example: `DTT_DOCS_EXCLUDED_PATH=titi:toto:tata/thing.md`

The exclusion code does not care about the type of what it suppresses, and always starts from the `docs/` directory:

In our example, it is going to attempt and suppress:
- `docs/titi`
- `docs/toto`
- `docs/tata/thing.md`

With the effects:
- The two first examples could be directory suppression for documentation features
- the third one just eliminates a single file into a given feature

**NOTES**  
- Of course, if the variable is empty, then the Production documentation becomes an exact copy of the staging one.
- a single entry `DTT_DOCS_EXCLUDED_PATH=titi` works
- If an excluded entry is not present, this is not going to trigger any warning or error

---

Now, to publish the changes to [the production documentation url](https://dtt.docs.dtlab-labcn.app/), there is only one button to press: `Merge pull request`

You can wait for the action to publish the result, or [go to the Actions tab](https://github.com/DTLab-LabCN/DTT-Docs/actions): the latest workflow run is displayed on top, and clicking on it should give you a nice progress indicator.

If everything goes well, a round ✅ mark should be displayed, otherwise a ❌ cross means troubleshooting is in order.
