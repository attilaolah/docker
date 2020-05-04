FROM continuumio/anaconda3
LABEL maintainer="Attila Oláh (atl@google.com)"

# Update system and install missing dependencies.
RUN apt-get update && \
    apt-get --yes upgrade && \
    apt-get --yes install unzip && \
    conda update --yes --prefix /opt/conda anaconda

# Grab a shallow clone of NeRF from GitHub.
RUN git clone --depth 1 https://github.com/bmild/nerf /tmp/nerf
WORKDIR /tmp/nerf

# Set up the environment.
RUN conda env create -f environment.yml
# Download weights and example data.
RUN bash download_example_data.sh
