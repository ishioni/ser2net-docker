FROM debian:bullseye-slim
RUN apt update && \
    apt -yqq --no-install-recommends install ser2net gettext-base
ENV PORT=20108 DEVICE=/dev/ttyACM0 CONNOPTIONS=115200n81,local
ADD files/* /
ENTRYPOINT /entrypoint.sh