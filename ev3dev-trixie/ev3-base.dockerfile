# Minimal base image for ev3dev on LEGO MINDSTORMS EV3 hardware

FROM debian:trixie
COPY layers/debian/ /
COPY layers/base/ /
RUN chmod g-w,o-w /usr/local/bin /usr/local/sbin /usr/bin /usr/sbin /bin /sbin
RUN /brickstrap/base/run
COPY layers/ev3/ /
RUN /brickstrap/ev3/run
