#FROM quay.io/jupyter/minimal-notebook:latest
FROM quay.io/jupyter/base-notebook:latest

COPY ./requirements.txt /tmp/requirements.txt
RUN pip install -r /tmp/requirements.txt && \
    conda install -c conda-forge nodejs -y && \
    npm install -g sql-language-server && \
    jupyter lab build