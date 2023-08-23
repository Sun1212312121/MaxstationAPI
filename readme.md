# Project detail
## Requirement
- Open JDK 11

## Run Command

Windows
```
$> mvn test "-Dkarate.env=dev" "-Dkarate.options=--tags ~@ignore"
```

Linux
```
$> mvn test -Dkarate.env=dev -Dkarate.options=--tags ~@ignore
```