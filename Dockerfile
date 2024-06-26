FROM python:slim

RUN pip install mkdocs

COPY ./docs ./docs
COPY ./mkdocs.yaml ./

CMD ["mkdocs", "serve", "-a", "0.0.0.0:8080"]