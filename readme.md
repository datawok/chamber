# Datawok Chamber Docker Image

## Configuration

```sh
CHAMBER_KMS_KEY_ALIAS=datawok/{env}/ssm chamber import {env}/{service-name} {env}/{service-name}.json
```

## Dcokerfile

```Dockerfile
FROM datawok/chamber as chamber

COPY --from=chamber /go/bin/chamber /usr/local/bin/

# other code

ENTRYPOINT ["chamber", "exec", "{env}/{service-name}", "--", "startMyAppScript" ]
```
