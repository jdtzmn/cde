# Set the container image base using an argument
ARG BASE=node:latest
ARG PORT=3000

FROM $BASE
WORKDIR /usr/src/

# Install fish
RUN apt-get update && \
  apt-get install software-properties-common openssh-client git --yes && \
  add-apt-repository ppa:fish-shell/release-3 && \ 
  apt-get install fish --yes
RUN chsh -s /usr/local/bin/fish

# Expose ports
EXPOSE $PORT

# Start fish shell by default
CMD fish