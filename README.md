For further information on [Virtuoso](https://gitlab.com/tdcs_framework/documentation)

# Reference the Virtuoso Library in a pom.xml

The Virtuoso library can be downloaded by adding the following to the `pom.xml`

```
    <dependencies>
        <!-- Virtuoso dependencies -->
        <dependency>
            <groupId>uk.gov.homeoffice</groupId>
            <artifactId>virtuoso</artifactId>
            <version>1.4.2</version>
        </dependency>
        <dependency>
            <groupId>uk.gov.homeoffice</groupId>
            <artifactId>virtuoso</artifactId>
            <version>1.4.2</version>
            <classifier>javadoc</classifier>
        </dependency>
        <dependency>
            <groupId>uk.gov.homeoffice</groupId>
            <artifactId>virtuoso</artifactId>
            <version>1.4.2</version>
            <classifier>sources</classifier>
        </dependency>
    </dependencies>
    <!-- Maven Repository on GitLab for TDCS Framework -->
    <repositories>
        <repository>
            <id>tdcs_framework-repository</id>
            <url>https://gitlab.com/tdcs_framework/maven/raw/master/repository/</url>
        </repository>
    </repositories>
```

# Updating the Repository
When a new version of Virtuoso is released, the repository should be updated by following the instructions below

## Pre-requisites
1. Have a clone of the maven repository `git clone git@gitlab.com:tdcs_framework/maven.git`
2. Have built a local version of Virtuoso to [deploy](https://gitlab.com/tdcs_framework/documentation/blob/master/virtuoso/installation.md#build) `mvn clean install` 

## Build the local repository

This maven install will create the files and checksums required for the repository
```
mvn install:install-file -DgroupId=uk.gov.homeoffice -DartifactId=virtuoso -Dversion=<version> 
-Dfile=dist/virtuoso-<version>.jar -Djavadoc=dist/virtuoso-<version>-javadoc.jar 
-Dsources=dist/virtuoso-<version>-sources.jar -Dpackaging=jar -DpomFile=pom.xml 
-DlocalRepositoryPath=<path to tdcs_framework/maven.git>/repository -DcreateChecksum=true
```

|Parameters|Value|
| -------- | --- |
|-Dversion|Version of virtuoso|
|-Dfile|Path to the jar|
|-Djavadoc|Path to the javadoc.jar|
|-Dsources|Path to the sources.jar|
|-DlocalRepositoryPath|Output path|


For example, to build version 1.4.2 from within the virtuoso directory 
```
mvn install:install-file -DgroupId=uk.gov.homeoffice -DartifactId=virtuoso -Dversion=1.4.2 
-Dfile=dist/virtuoso-1.4.2.jar -Djavadoc=dist/virtuoso-1.4.2-javadoc.jar -Dsources=dist/virtuoso-1.4.2-sources.jar 
-Dpackaging=jar -DpomFile=pom.xml -DlocalRepositoryPath=/User/tdcs_framework/maven/repository -DcreateChecksum=true
```

## Push to this repository
Change to the local repository path i.e. `cd ~/tdcs_framework/maven`

Commit changes `git commit -am "Virtuoso v1.4.2"`

Push to master `git push`
*(There is currently no restriction on pushing to the master on this repository)*
