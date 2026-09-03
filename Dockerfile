FROM ghcr.io/cirruslabs/flutter:3.44.0

RUN curl -Lo /usr/local/bin/firebase https://firebase.tools/bin/linux/v15.29.0
RUN chmod +x /usr/local/bin/firebase

RUN echo 'export PATH=$PATH:/usr/local/bin' >> ~/.bashrc
RUN firebase --version

RUN dart pub global activate flutterfire_cli
RUN echo 'export PATH=$PATH:$HOME/.pub-cache/bin' >> ~/.bashrc
