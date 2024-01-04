# Digital-Trust-Test-Bench
# DTT Documentation

## Understanding MkDocs

DTT makes use of the MkDocs engine to format and present documentation to the user.

Visit https://www.mkdocs.org/ to understand how MKDocs works and the details of the Markdown language.



Upon github commits in this repo,  the DTT-Docs image gets rebuilt and re-deployed to the DEV environment and can be accessed at: http://dtt-dev.internal.idlab.org:8080

The DTT-Docs image gets deployed into the dtt-app K8s namespace, along with DTT-Frontend and DTT-Backend executable modules.

## Folder Structure

Actual documentation content consists of:

* mkdocs.yaml: This is the mkdocs configuration file. It mainly contains the navigation tree for our documentation.
When adding a documentation page, the page must be added in here under the appropriate right section.

* docs/index.md: This is the HOME page for the documentation

* docs/userguide/: All markdown files related to the User Guide

* docs/developerguide/: All markdown files related to the Developer Guide

* docs/images/: All images used in the documentation

## Adding a Documentation Page
 

* Create a new markdown file in the appropriate /docs subfolder

* Add a reference to it in the mkdocs.yaml nav section

* Test you changes locally (see how below)

* If needed, add a link to the new page in the Frontend application (see how below)

 

### Deleting a Documentation Page

Simply delete the markdown file and remove the reference to that page in the mkdocs.yaml nav section.

 

## Testing Changes Locally

1- Make sure you have a virtual environment setup under your DTT-Docs folder
```
	python3 -m venv venv
	. venv/bin/activate
```
2- Install dependencies

```
    pip install --upgrade pip
    pip install -r requirements.txt
```

3- Run MKDocs locally:

```
    mkdocs serve
```
4 - Check your changes in your browser at http://localhost:8080

 

### Environment variable: DTT_DOCS_URL

If you are running DTT-Frontend locally, and want to test local documentation changes, make sure that mkdocs serve is running and set the DTT_DOCS_URL to http://localhost:8080 in your .env file.

In file .env (in DTT-Frontend)
```
    DTT_DOCS_URL=http://localhost:8080
```
 

