FROM repository.jouleworks.space/p/universal/prebuilts/fastasset-prebuilt:latest

ADD . /app
WORKDIR /app

ENV VIRTUAL_ENV /env
ENV PATH /env/bin:$PATH
ENV FASTASSET_MODE "asgi"
ENV FASTASSET_STARTUP "false"

EXPOSE 8080

CMD ["sh", "entrypoint.sh"]