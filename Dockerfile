# see the original Dockerfile at https://github.com/rocker-org/rocker-versioned2/blob/master/dockerfiles/Dockerfile_binder_4.0.0
FROM docker.io/inseefrlab/utilitr:latest

ENV NB_USER=rstudio

RUN /rocker_scripts/install_python.sh
RUN /rocker_scripts/install_binder.sh

## Copy files into the Docker image
# Copy Rprofile to /home/rstudio/.Rprofile
COPY --chown=${NB_USER}:${NB_USER} Rprofile /home/${NB_USER}/.Rprofile
# Clone project
RUN git clone https://github.com/InseeFrLab/utilitR.git /home/${NB_USER}/utilitR

CMD jupyter notebook --ip 0.0.0.0

USER ${NB_USER}

WORKDIR /home/${NB_USER}
