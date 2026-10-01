FROM jupyter/datascience-notebook

USER root

ENV HOME=/home/rasyid \
    XDG_CACHE_HOME=/home/rasyid/.cache
WORKDIR /home/rasyid/work

RUN mkdir -p /home/rasyid && \
    rm -rf /home/jovyan /opt/conda/envs/HuggingFaceBook && \
    conda create -y -n HuggingFaceBook python=3.11 ipykernel && \
    /opt/conda/envs/HuggingFaceBook/bin/python -m ipykernel install --user --name HuggingFaceBook --display-name "HuggingFaceBook (Anaconda)" && \
    echo "source /opt/conda/etc/profile.d/conda.sh" >> /home/rasyid/.bashrc && \
    chown -R 1001:1001 /home/rasyid
