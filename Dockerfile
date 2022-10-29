FROM python:3.11

WORKDIR /app

COPY requirements.txt requirements.txt

RUN apt update -y && apt upgrade -y

RUN pip3 install -r requirements.txt

RUN apt update -y && apt upgrade -y

COPY app.py app.py

CMD [ "python3", "-m" , "flask", "run", "--host=0.0.0.0"]
