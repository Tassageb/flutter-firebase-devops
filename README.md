# Flutter Firebase CI Image

Image Docker de CI pour builder des projets Flutter utilisant Firebase.

Publiée automatiquement sur [GitHub Container Registry](https://ghcr.io) à chaque push sur `main`/`master`.

## Contenu

| Outil | Version |
|---|---|
| Flutter | 3.44.0 |
| Firebase CLI | 15.29.0 |
| FlutterFire CLI | latest (pub global) |

**Image de base :** [`ghcr.io/cirruslabs/flutter:3.44.0`](https://github.com/cirruslabs/flutter-dockerfiles)

## Utilisation

```yaml
# Exemple dans une CI GitHub Actions
jobs:
  build:
    runs-on: ubuntu-latest
    container:
      image: ghcr.io/<owner>/<repo>:latest

    steps:
      - uses: actions/checkout@v4
      - run: flutter pub get
      - run: flutter build apk
```

## Publication

Le workflow [`.github/workflows/publish.yml`](.github/workflows/publish.yml) publie l'image automatiquement :

- **sur push** vers `main` ou `master` → tag `latest` + tag du nom de branche
- **manuellement** via `workflow_dispatch`

L'image est buildée en multi-plateforme (`linux/amd64` et `linux/arm64`).
