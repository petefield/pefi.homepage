# pefi.homepage

A single-page Blazor WebAssembly app with a dark, futuristic design.

## Run locally

```bash
dotnet run
```

## Run with Docker

```bash
docker build -t pefi-homepage .
docker run --rm -p 8080:8080 pefi-homepage
```

Then browse to <http://localhost:8080>.

## Docker Hub publish workflow

GitHub Actions workflow: `.github/workflows/docker-publish.yml`

Published image repository: `petefield/pefi.home`

Required repository secrets:

- `DOCKERHUB_USERNAME`
- `DOCKERHUB_TOKEN`
