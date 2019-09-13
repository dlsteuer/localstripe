FROM quay.io/sendwithus/python:3.6.8-alpine-3
WORKDIR /usr/app
ENV PATH="/root/.local/bin:${PATH}"
COPY . /usr/app
RUN python setup.py sdist && \
    pip install --user --upgrade dist/localstripe-*.tar.gz
CMD [ "localstripe" ]