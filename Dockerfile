FROM python:latest

WORKDIR /app

COPY requirements.txt /app
RUN pip install -r requirements.txt

COPY . /app


ENV POSTGRES_PASSWORD=hello0ow
ENV POSTGRES_USER=theNamesFrodo
ENV POSTGRES_DB=DatIsADB

#RUN wget https://raw.githubusercontent.com/vishnubob/wait-for-it/master/wait-for-it.sh -P /scripts
#RUN chmod +x /scripts/wait-for-it.sh
#ENTRYPOINT ["/scripts/wait-for-it.sh", "db:5432", "--"]