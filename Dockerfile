FROM python:3.13

WORKDIR /usr/src

ARG REQ_TXT
COPY ${REQ_TXT} ./
RUN pip install --upgrade pip && \
    pip install --no-cache-dir -r ${REQ_TXT}
