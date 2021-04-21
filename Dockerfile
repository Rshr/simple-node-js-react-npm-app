FROM node:14-alpine
USER root
RUN apt-get update && apt-get install -y --no-install-recommmeds
USER jenkins