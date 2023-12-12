# Getting started with IDLab's interoperability-bench
## Accessing the platform
* Sign into the client portal.

    *Your username will be communicated with you through email, use the password reset function to set a new password*

* Once logged in, a button to access the interoperability-bench will be displayed.

## Where to start?
The first thing is to familiarize yourself with the AATH module and run your first test. AATH is aimed at demonstrating features & protocols interoperability between frameworks/solutions.

For a first interactive experience, run a simple mobile test. You will need a mobile wallet, here is a list of tested wallets:

* NorthernBlock Orbit Edge

* Lissi

* BC Wallet

* Trinsic

## Setting up a local environment

### Clone the Frontend and Backend repositories

```
git clone https://github.com/IDLab-org/DTT-Service.git
git clone https://github.com/IDLab-org/DTT-Frontend.git
```

### Connect to IDLab's main VPN and ensure access to the dtt-dev k8s cluster

Look in 1password for the k8s configuration

### Connect to IDLab's main VPN and ensure access to the dtt-dev k8s cluster

## Configuring your first test
As a first test, you will get to issue/present a credential to/from a selected wallet. From the DTT landing page, click on the explore option for the Aries-agent-test-harness.

The configuration panel is divided into 3 sections, each to be configured individually:

### 1. Environment
Here you can capture information about a specific run. These parameters won't affect the test but will be added to the final report. Set as follows, replacing values with your own.

**Click on Set Environment**

### 2. Backchannels
There are 4 roles in the test-harness:
* Acme
* Alice/Bob
* Faber
* Mallory

For each role, you assign a framework/solution of your choice. Currently, choices are limited to 4 well-known Aries frameworks (aca-py, afj, afgo & .net)

The genesis/tails url should remain at default values.

The expose flag gives public access to your backchannels. More information in the (?) tab of the panel.

For our test, set the aca-py framework in all roles*.

*We will overwrite bob with the mobile backchannel later

**Click on Set Backchannels**

### 3. Test Tags
Test tags are what tells the harness which tests to run.
You can read more on tags in the official repository.
Work in progress tests are ignored by default

For our test, set the AIP profile to v1.0, the category tag to mobile and select the present proof feature.

**Click on Set Tags**

*Confirm your selection in the left panel with the image below and head over to the preview tab.*

## The test preview
This is where you get to see which tests will be executed given your selection. You can read and review a final time before you start the test-run. The test-harness is based on behavior driven development (BDD). Each feature to test will outline scenarios where you can read how your different roles will interact with each other. This is the "flow" of the test-run. Take a minute to go over both scenarios we selected.

## Run-time
TBD