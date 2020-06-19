FROM debian:buster-slim

WORKDIR /install

RUN apt-get update && apt-get install curl unzip -y

RUN curl -fsSL https://deno.land/x/install/install.sh | sh -s v1.1.0

ENV DENO_INSTALL="/root/.deno"
ENV PATH="$DENO_INSTALL/bin:$PATH"

WORKDIR /app

COPY src ./src

CMD ["deno", "run", "--allow-net", "src/index.ts"]
