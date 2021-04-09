FROM python:3.8-slim-buster
MAINTAINER Marcin Sztolcman <marcin@urzenia.net>

RUN useradd --create-home sendria
WORKDIR /home/sendria
USER sendria
RUN python3 -m pip install --user sendria==2.2.1

EXPOSE 1025 1080

CMD ["/home/sendria/.local/bin/sendria", "--foreground", "--db=./mails.sqlite", "--smtp-ip=0.0.0.0", "--http-ip=0.0.0.0"]

