FROM pandoc/core

RUN apk add --no-cache \
    fontconfig \
    python3 \
    python3-dev \
    py3-pip \
    build-base \
    py3-cffi \
    cairo \
    pango \
    gdk-pixbuf-dev \
    libffi \
    shared-mime-info \
    libjpeg-turbo-dev

RUN pip3 install WeasyPrint

ADD fetch-fira.sh /usr/local/bin/
RUN fetch-fira.sh

RUN mkdir -p /.pandoc/templates
COPY template/* /.pandoc/templates/

ENTRYPOINT ["docker-entrypoint.sh"]