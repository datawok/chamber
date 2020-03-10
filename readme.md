# Datawok Chamber Docker Image

## Usage

```Dockerfile
FROM datawok/chamber as chamber

COPY --from=chamber /go/bin/chamber /usr/local/bin/

# other code

ENTRYPOINT ["chamber", "exec", "{env}/{service-name}", "--", "startMyAppScript" ]
```
