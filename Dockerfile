FROM python:3.8

# upgrade pip
RUN pip install --upgrade pip

RUN apt-get update && apt-get upgrade -y
RUN apt-get install -y npm
RUN npm i react-scripts

# install dependencies
RUN pip install requests
RUN pip install pandas
RUN pip install Django

EXPOSE 8000

CMD python slr_app/manage.py runserver 0.0.0.0:8000

# Build-Command:  $ docker build -t <name den das Image bekommen soll> <path zum Ordner, wo das Dockerfile liegt>
# z.B. docker build -t django_react .
# Run-Command:    $ docker run -it -p <Port auf dem die Appe laufen soll> -w <ordner-im-container> -v <ordner-des-Projekts>:<ordner-im-container> <name>
# z.B. docker run -it -p 8010:8000 -w /usr/workspace -v $(pwd):/usr/workspace django_react:latest
# wenn der container läuft http://localhost:8010/ im browser aufrufen
