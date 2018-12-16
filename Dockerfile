FROM trzeci/emscripten

RUN echo \
  && node \
  && git clone https://github.com/juj/emsdk.git \
  && ( \
    cd emsdk \
    && ./emsdk install --build=Release sdk-incoming-64bit binaryen-master-64bit \
    && ./emsdk activate --build=Release sdk-incoming-64bit binaryen-master-64bit \
  )


# docker build . -t libsodium-builder
# docker run -it libsodium-builder bash