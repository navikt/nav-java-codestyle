[![Build Status](https://travis-ci.org/navikt/nav-java-codestyle.svg?branch=master)](https://travis-ci.org/navikt/nav-java-codestyle)
[![Published on Maven](https://img.shields.io/maven-metadata/v/http/central.maven.org/maven2/no/nav/java-codestyle/maven-metadata.xml.svg)](http://central.maven.org/maven2/no/nav/java-codestyle/)

# Java code style for NAV projects

This is a repository that contains code style definitions in XML format.

At NAV, we use Sonar for Java code quality analysis. The Sonar instance is not
exposed to the public, so we export XML code style definitions and publish them
through this library, to be reused in NAV projects.

#### Making changes to the code style

Tweak the configuration in Sonar. Then, run the script that is included in this
git repository:

```./fetch-codestyles.sh```

The script will download the style definitions as XML files and store them in
src/main/resources.

#### Snapshot versions

Every commit to the `master` branch (or merged pull request) will trigger a
release to the [Sonatype OSS snapshot repository](https://oss.sonatype.org/content/repositories/snapshots/no/nav/java-codestyle/).

#### Releases

In order to release a new version, clone this repository, and

```bash
# make sure we're up to date!
git checkout master && git pull

# This is the release command itself
mvn release:prepare

# This will clean up any local temporary files
# that were used during the release.
mvn release:clean
```

The `mvn release:prepare` command will ask for a version number to release,
as well as which version number to bump to. This command will also do
a `git push` on your behalf, which will update the remote git repository.
Then, Travis CI will trigger a build, and deploy the artifact.

First, it will appear in [Sonatype OSS releases](https://oss.sonatype.org/content/repositories/releases/no/nav/java-codestyle/),
before eventually (a couple of minutes later) if is synced to [Maven Central](http://central.maven.org/maven2/no/nav/java-codestyle/).

#### Contact

If you have any questions, please open an issue on the Github issue tracker.
