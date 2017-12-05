FROM alpine:3.5
RUN apk add --no-cache wget

ARG habitus_host  
ARG habitus_port  
ARG habitus_password  
ARG habitus_user
RUN wget --http-user=$habitus_user --http-password=$habitus_password -qO- http://$habitus_host:$habitus_port/v1/secrets/env/my_env_secret | less