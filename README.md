For further information on [Virtuoso](https://gitlab.com/tdcs_framework/documentation)

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
