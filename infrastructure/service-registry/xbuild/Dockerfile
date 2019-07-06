FROM xcompany/xbuild:latest

ARG XBUILD_VERSION="0.1.0"
ARG XBUILD_IMAGE_NAME="xcompany/service-registry"
ARG XBUILD_IMAGE_DESCRIPTION="A Service Registry for the Microservice Infrastructure"
ARG XBUILD_VENDOR="IT Solutions Roland Breitschaft"
ARG XBUILD_VENDOR_URL="https://www.x-company.de"
ARG XBUILD_VENDOR_MAIL="info@x-company.de"

LABEL  de.x-company.name=$XBUILD_IMAGE_NAME \
       de.x-company.description=$XBUILD_IMAGE_DESCRIPTION \
       de.x-company.url=$XBUILD_VENDOR_URL \
       de.x-company.vendor=$XBUILD_VENDOR \
       de.x-company.version=$XBUILD_VERSION \
       de.x-company.schema-version="1.0" \
       de.x-company.license="de.x-company" \
       maintainer=$XBUILD_VENDOR_MAIL \
       vendor=$XBUILD_VENDOR \
       description=$XBUILD_IMAGE_DESCRIPTION \
       version=$XBUILD_VERSION

COPY   ./build/ /build/

COPY   ./rootfs/ /

RUN    xb-build

WORKDIR /

ENTRYPOINT ["/init"]
