FROM ubuntu:14.04

RUN echo foobar >> /tmp/foobar

CMD ["cat", "/tmp/foobar"]
