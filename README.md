# flutter-firebase-ci

Image Docker de CI pour builder des projets Flutter utilisant Firebase.

Publiée automatiquement sur [GitHub Container Registry](https://ghcr.io) à chaque push sur `main`/`master`.

## Contenu

| Outil | Version |
|---|---|
| Flutter | 3.44.0 |
| Dart | (inclus avec Flutter) |
| Firebase CLI | 15.29.0 |
| FlutterFire CLI | latest (`dart pub global`) |

**Image de base :** [`ghcr.io/cirruslabs/flutter:3.44.0`](https://github.com/cirruslabs/flutter-dockerfiles)
**Platforms :** `linux/amd64`, `linux/arm64`

### Mettre à jour une version

Les versions sont centralisées dans le workflow (`build-args`) et dans le [`Dockerfile`](./Dockerfile) (`ARG`). Il suffit de modifier les deux valeurs correspondantes.
