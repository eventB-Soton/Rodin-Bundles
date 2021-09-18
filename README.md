# Rodin-Bundles

[![Build Status](https://app.travis-ci.com/github/eventB-Soton/Rodin-Bundles.svg?branch=master)](https://app.travis-ci.com/github/eventB-Soton/Rodin-Bundles)

Rodin Platform Bundles that includes features developed by our
group. Currently the folllowing bundles are included:

* *ac.soton.rodinp.releases*: Bundle including the released features
  from our group. This bundle is intended for users. Currently, the
  content of the bundle is as follows
  - Rodin Product 3.6.0.202105121522-77c344946
  - Rodin Handbook 2.5.0.201606291411
  - CamilleX 2.1.0.release
  - UML-B Statemachines 4.0.1.release
  - UML-B Statemachines Animation 3.0.0.release
  - UML-B Classdiagrams 3.0.0.release
  - Scenario Checker 1.0.0.release
  - Rose Editor 1.7.0.release
  - SMT Solvers 1.4.0.8c9a179
  - ProB 3.0.10.202106111432
  - RMF ProR 0.13.0.201509161042

* *ac.soton.rodinp.baseline*: Bundle including the released features
  including their source and tests (SDK) from our group. This bundle
  is intended for developers and to be used as the API baseline.
  Currently, the content of the bundle is as follows
  - Rodin Product 3.6.0.202105121522-77c344946
  - Rodin Handbook 2.5.0.201606291411
  - CamilleX SDK 2.1.0.release
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

* *ac.soton.rodinp.target*: Bundle including the released features
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
  - CamilleX SDK 2.1.0.release
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

Running *mvn clean verify* at the top level will build all
bundles. Individual bundle can be built by running *mvn clean verify*
within the corresponding folder.

We recommend that you install the Atelier-B provers (via Atelier-B Update
Site) and the Relevance Filter plug-in (from the Rodin Plug-ins update site) to
enhance your proof experience.
