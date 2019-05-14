FROM python:2.7.16-alpine3.9
MAINTAINER she xincaosu@qq.com
ENV FLASHAT=2019.1.16
RUN easy_install AnkiServer
RUN mkdir anki
WORKDIR anki
RUN cp /usr/local/lib/python2.7/site-packages/AnkiServer-2.0.6-py2.7.egg/examples/example.ini production.ini
RUN sed -i 's/127\.0\.0\.1/0\.0\.0\.0/g' production.ini
VOLUME ["/anki"]
EXPOSE 27701
CMD ["sh"]
