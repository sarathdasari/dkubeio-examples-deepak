FROM jupyter/base-notebook:latest

ENV DKUBE_NB_ARGS ""
USER root
RUN echo "$NB_USER ALL=(ALL) NOPASSWD:ALL" > /etc/sudoers.d/notebook
USER jovyan
CMD ["sh", "-c", "jupyter lab --ip=0.0.0.0 --port=8888 --allow-root $DKUBE_NB_ARGS"]
