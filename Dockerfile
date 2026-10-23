FROM fedora:44

LABEL org.opencontainers.image.authors="venter109@gmail.com"
LABEL org.opencontainers.image.source="https://github.com/Caaarrrlll/debian-slim-baseimage"
LABEL org.opencontainers.image.licenses="MIT"

RUN  dnf -y --setopt=install_weak_deps=False upgrade && \
	dnf -y --setopt=install_weak_deps=False install wget glibc-langpack-en procps-ng ca-certificates && \
	localedef -i en_US -f UTF-8 en_US.UTF-8 && \
	dnf -y reinstall ca-certificates && \
	dnf clean all && \
	rm -rf /var/cache/dnf

ENV LANG=en_US.UTF-8
ENV LANGUAGE=en_US:en
ENV LC_ALL=en_US.UTF-8
