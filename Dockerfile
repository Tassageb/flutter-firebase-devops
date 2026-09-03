# syntax=docker/dockerfile:1

ARG FLUTTER_VERSION=3.44.0
ARG FIREBASE_CLI_VERSION=15.29.0

FROM ghcr.io/cirruslabs/flutter:${FLUTTER_VERSION}

ARG FLUTTER_VERSION
ARG FIREBASE_CLI_VERSION

# OCI standard labels (static)
LABEL org.opencontainers.image.authors="tassageb" \
      org.opencontainers.image.title="flutter-firebase-ci" \
      org.opencontainers.image.description="CI image for Flutter projects using Firebase (Firebase CLI + FlutterFire CLI)" \
      org.opencontainers.image.licenses="MIT" \
      flutter.version="${FLUTTER_VERSION}" \
      firebase.cli.version="${FIREBASE_CLI_VERSION}"

# Install Firebase CLI and FlutterFire CLI
RUN curl -fsSLo /usr/local/bin/firebase \
        "https://firebase.tools/bin/linux/v${FIREBASE_CLI_VERSION}" \
    && chmod +x /usr/local/bin/firebase

RUN dart pub global activate flutterfire_cli \
    && echo 'export PATH=$PATH:$HOME/.pub-cache/bin' >> ~/.bashrc
