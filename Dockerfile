FROM alpine:3.5
RUN apk add --no-cache curl

ARG habitus_host  
ARG habitus_port  
ARG habitus_password  
ARG habitus_user

RUN curl http://$habitus_host:$habitus_port/v1/secrets/env/my_env_secret