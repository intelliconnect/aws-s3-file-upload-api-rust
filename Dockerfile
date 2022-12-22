# Build Stage
FROM rust:1.64.0 as builder

RUN USER=root cargo new --bin aws_image_upload 
WORKDIR /aws_image_upload
COPY ./Cargo.toml ./Cargo.toml
# Build empty app with downloaded dependencies to produce a stable image layer for next build
RUN cargo build --release

# Build web app with own code
RUN rm src/*.rs
ADD . ./
RUN cargo build --release


FROM debian:bullseye-slim
ARG APP=/usr/src/app

EXPOSE 3000

RUN apt-get update \
  # && apt-get install -y libssl-dev \
  && apt-get install -y ca-certificates tzdata \
  && rm -rf /var/lib/apt/lists/*

ENV TZ=Etc/UTC \ 
  APP_USER=appuser

RUN groupadd $APP_USER \
  && useradd -g $APP_USER $APP_USER \
  && mkdir -p ${APP}

COPY --from=builder /aws_image_upload/target/release/aws_image_upload  ${APP}/aws_image_upload 

RUN chown -R $APP_USER:$APP_USER ${APP}

USER $APP_USER
WORKDIR ${APP}

CMD ["./aws_image_upload"]
