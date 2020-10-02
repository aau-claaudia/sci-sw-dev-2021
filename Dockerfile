FROM rocker/r-ver:4.0.2

#install system dependencies and python using APT
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update && \
  apt-get -y install --no-install-recommends --no-install-suggests \
    python ca-certificates software-properties-common \
    libcurl4-openssl-dev libssl-dev libxml2-dev wget

#install R packages prebuilt from source for this exact rocker image using the littler helper script
RUN install2.r tidyverse

#copy scripts into container image
COPY print_kpthesaurus.py analyse_and_visualize.r script.bash /sci-sw-dev-2020/

WORKDIR /home/pwd

#BASH script as entrypoint
ENTRYPOINT [ "bash", "/sci-sw-dev-2020/script.bash" ]
CMD ["-h"]