Rodin-Bundles
=============

[![Build Status](https://app.travis-ci.com/eventB-Soton/Rodin-Bundles.svg?branch=master)](https://app.travis-ci.com/github/eventB-Soton/Rodin-Bundles)

Rodin Platform Bundles that includes features developed by our
group. Currently the following December 2021 (2112) bundles are:

* *ac.soton.rodinp.releases*: RL2112 bundle includes the released features
  from our group. This bundle is intended for users. Currently, the
  content of the bundle is as follows
  - Rodin Product 3.6.0.202105121522-77c344946
  - Rodin Handbook 2.5.0.201606291411
  - CamilleX 2.1.1.release
  - UML-B Statemachines 4.0.1.release
  - UML-B Statemachines Animation 3.0.0.release
  - UML-B Classdiagrams 3.0.0.release
  - Scenario Checker 1.0.0.release
  - Rose Editor 1.7.0.release
  - SMT Solvers 1.4.0.8c9a179
  - ProB 3.0.10.202106111432
  - RMF ProR 0.13.0.201509161042
  - Git Integration for Eclipse 5.10.0.202012080955-r

* *ac.soton.rodinp.baseline*: BL2112 bundle includes the released features
  including their source and tests (SDK) from our group. This bundle
  is intended for developers and to be used as the API baseline.
  Currently, the content of the bundle is as follows
  - Rodin Product 3.6.0.202105121522-77c344946
  - Rodin Handbook 2.5.0.201606291411
  - CamilleX SDK 2.1.1.release
  - UML-B Statemachines SDK 4.0.1.release
  - UML-B Statemachines Animation SDK 3.0.0.release
  - UML-B Classdiagrams SDK 3.0.0.release
  - Scenario Checker SDK 1.0.0.release
  - Rose Editor SDK 1.7.0.release
  - Event-B Utils SDK 0.2.6.release
  - Event-B EMF SDK 6.1.0.release
  - EMF Translator SDK 3.0.1.release
  - Event-B EMF Extension SDK 6.1.0.release
  - Event-B Translator Support SDK 0.1.0.release
  - Event-B ProB Support SDK 0.0.1.release
  - UML-B Diagrams SDK 8.0.1.release
  - EMF Inclusion SDK 2.0.2.release
  - EMF Records SDK 0.1.2.release
  - EMF Containment SDK 0.0.2.release

* *ac.soton.rodinp.target*: TG2112 bundle includes the released features
  including their source and tests (SDK) from our group. Additionally,
  this bundle also include the SDK of Eclipse features that our
  features depend on. This bundle is intended for developers and to be
  used as the target platform. Currently, the content of the bundle is
  as follows
  - Rodin Product 3.6.0.202105121522-77c344946
  - Rodin Handbook 2.5.0.201606291411
  - Event-B IDE Source 3.6.0.202105121522-77c344946
  - Rodin Platform Source 3.6.0.202105121522-77c344946
  - Rodin Platform Tests Source 3.6.0.202105121522-77c344946
  - CamilleX SDK 2.1.1.release
  - UML-B Statemachines SDK 4.0.1.release
  - UML-B Statemachines Animation SDK 3.0.0.release
  - UML-B Classdiagrams SDK 3.0.0.release
  - Scenario Checker SDK 1.0.0.release
  - Rose Editor SDK 1.7.0.release
  - SMT Solvers 1.4.0.8c9a179
  - ProB 3.0.10.202106111432
  - Event-B Utils SDK 0.2.6.release
  - Event-B EMF SDK 6.1.0.release
  - EMF Translator SDK 3.0.1.release
  - Event-B EMF Extension SDK 6.1.0.release
  - Event-B Translator Support SDK 0.1.0.release
  - Event-B ProB Support SDK 0.0.1.release
  - UML-B Diagrams SDK 8.0.1.release
  - EMF Inclusion SDK 2.0.2.release
  - EMF Records SDK 0.1.2.release
  - EMF Containment SDK 0.0.2.release
  - XText SDK 2.24.0.v20201130-1016
  - Eclipse SDK 4.18.0.I20201202-1800
  - EMF SDK 2.24.0.v20200917-1439
  - GMF Tooling SDK 3.2.1.201409171321
  - RMF ProR SDK 0.13.0.201509161042
  - Sphinx SDK 0.11.0.201706140911
  - Git Integration for Eclipse 5.10.0.202012080955-r

Requirements
------------
To run the Rodin bundles, you will need Java (version 11 or above). It can
be from either
[Oracle](http://www.oracle.com/technetwork/java/javase/downloads/index.html),
[OpenJDK](https://openjdk.java.net/projects/jdk/), or
[Amazon Corretto](https://aws.amazon.com/corretto/).

To build from source, you will need [Apache Maven](https://maven.apache.org/download.cgi) (version 3.0.0 or above).

Installation
------------

You can download the
[latest release binaries](https://github.com/eventB-Soton/Rodin-Bundles/releases/latest)
directly for your operating systems. Currently the binaries are for 64-bits
Windows, Linux, and Mac OSX. To run the binaries, you will need Java
(version 11 or above).

You can extract the bundle from the downloaded archived and run the
binary from there.

Source Build
------------

In case that you want to rebuild the bundle for your platform, you can
clone this repository. Running *mvn clean verify* at the top level
folder will build all bundles. Individual bundle (resp. Baseline, Releases,
or Target) can be built by running *mvn clean verify* within the
corresponding folder (resp. *ac.soton.rodinp.baseline*,
*ac.soton.rodinp.releases*, *ac.soton.rodinp.target*.

Usage
-----

We recommend that you install the Atelier-B provers (via the Atelier-B
Update Site) and the Relevance Filter plug-in (from the Rodin Plug-ins
update site) to enhance your proof experience.

- **For Rodin users**: The release bundle can be used for Event-B and
UML-B modelling.

- **For Rodin developers**: The baseline and target bundles can be used as
API baseline and Target platform accordingly.
    1. *To set the API baseline*:
        1. Start your Eclipse
        1. Open Eclipse Preferences
	    1. In the left panel, browse to *Plug-in Development* > *API
    Baselines*
	    1. In the right pane, click *Add Baselines* to open up the *New API
    Baseline* dialog
	    1. In the *New API Baseline* dialog, select *An existing
    Eclipse installation directory* and click *Next*
	    1. Set the name of the API baseline, e.g., *Rodin BL2107*, click
    *Browse* and navigate to the (unpacked) baseline bundle
	        * for Mac OSX, you need to browse to the *Contents/Eclipse* folder inside
      the application.
        1. Click *Refresh* to get the plug-ins/bundles.
	    1. Click *Finish* to complete.
	    1. (If not selected already) Select the newly created baseline as
       the default.
        1. Click *Apply and Close*

    1. *To set the Target Platform*:
        1. Start your Eclipse
        1. Open Eclipse Preferences
	    1. In the left panel, browse to *Plug-in Development* >
           *Target Platform*
	    1. In the right pane, click *Add* to open up the *New
    Target Definition* dialog
	    1. In the *New Target Definition* dialog, select *Noting:
           Start with an empty target definition* and click *Next*
	    1. Set the name of the new target, e.g., *Rodin TG2107*, click
		*Add* and to open the *Add Content* dialog
        1. In the *Add Content* dialog, select *Installation* and
           click *Next*
        1. Click *Browse* and and navigate to the (unpacked) target
           bundle and click *Next*
	        * for Mac OSX, you need to browse to the *Contents/Eclipse* folder inside
      the application.
	    1. Click *Finish* to complete.
	    1. (If not selected already) Select the newly created target definition as
       the active target platform.
        1. Click *Apply and Close* (A full rebuild of the workspace
           will be triggered).

Bug Reports/Improvements
------------------------
If you notice a bug or have a good idea on improvement, please add it to the [Issues page](https://github.com/eventB-Soton/Rodin-Bundles/issues).
