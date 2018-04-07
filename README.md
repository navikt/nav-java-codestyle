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

#### Contact

If you have any questions, please open an issue on the Github issue tracker.
