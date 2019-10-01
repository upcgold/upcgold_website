FROM bitnami/wordpress:5

RUN rm -rf /bitnami
COPY ./bitnami.tar.gz.bz2 /
RUN apt update && apt install -y bzip2
RUN bunzip2 bitnami.tar.gz.bz2
RUN tar -xvf bitnami.tar.gz
