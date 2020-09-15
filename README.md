# Rodin-Bundles
Rodin Platform Bundles that includes features developed by our
group. Currently the folllowing bundles are included:

* *ac.soton.rodinp.releases*: Bundle including the released features
  from our group. This bundle is intended for users. Currently, the
  content of the bundle is as follows
  - Rodin Product 3.5.0.202009111309-74e0e4188
  - CamilleX 2.0.0.release
  - UML-B Statemachines 4.0.1.release
  - UML-B Statemachines Animation 3.0.0.release
  - UML-B Classdiagrams 3.0.0.release
  - Scenario Checker 0.0.0.release
  - Rose Editor 1.7.0.release
  - SMT Solvers 1.4.0.8c9a179

* *ac.soton.rodinp.baseline*: Bundle including the released features
  including their source and tests (SDK) from our group. This bundle
  is intended for developers and to be used as the API baseline.
  Currently, the content of the bundle is as follows
  - Rodin Product 3.5.0.202009111309-74e0e4188
  - CamilleX SDK 2.0.0.release
  - UML-B Statemachines SDK 4.0.1.release
  - UML-B Statemachines Animation SDK 3.0.0.release
  - UML-B Classdiagrams SDK 3.0.0.release
  - Scenario Checker SDK 0.0.0.release
  - Rose Editor SDK 1.7.0.release
  - Event-B Utils SDK 0.2.4.release
  - Event-B EMF SDK 6.1.0.release
  - EMF Translator 3.0.1.release
  - Event-B EMF Extension 6.1.0.release
  - Event-B Translator Support 0.1.0.release
  - Event-B ProB Support 0.0.0.release
  - UML-B Diagrams 8.0.1.release
  - EMF Inclusion 2.0.0.release
  - EMF Records 0.1.0.release
  - EMF Containment 0.0.2.release


* *ac.soton.rodinp.target*: Bundle including the released features
  including their source and tests (SDK) from our group. Additionally,
  this bundle also include the SDK of Eclipse features that our
  features depend on. This bundle is intended for developers and to be
  used as the target platform. Currently, the content of the bundle is
  as follows
  - Rodin Product 3.5.0.202009111309-74e0e4188
  - CamilleX SDK 2.0.0.release
  - UML-B Statemachines SDK 4.0.1.release
  - UML-B Statemachines Animation SDK 3.0.0.release
  - UML-B Classdiagrams SDK 3.0.0.release
  - Scenario Checker SDK 0.0.0.release
  - Rose Editor SDK 1.7.0.release
  - SMT Solvers 1.4.0.8c9a179
  - Event-B Utils SDK 0.2.4.release
  - Event-B EMF SDK 6.1.0.release
  - EMF Translator 3.0.1.release
  - Event-B EMF Extension 6.1.0.release
  - Event-B Translator Support 0.1.0.release
  - Event-B ProB Support 0.0.0.release
  - UML-B Diagrams 8.0.1.release
  - EMF Inclusion 2.0.0.release
  - EMF Records 0.1.0.release
  - EMF Containment 0.0.2.release
  - XText SDK 2.22.0.v20200602-1533
  - Eclipse SDK 5.17.0.v20200604-0951
  - EMF SDK 2.22.0.v20200519-1135
  - GEF SDK 3.11.0.201606061308

Running *mvn clean verify* at the top level will build all bundles. If
Maven fails and complains about missing toolchain, update
*ac.soton.rodinp.releng/toolchains.xml* with the location of the
JavaHome and copy it to *$HOME/.m2/* folder. Do not commit changes to
*toolchains.xml* as this is the setup for Travis CI build.

Individual bundle can be built by running *mvn clean verify* within
the corresponding folder.

