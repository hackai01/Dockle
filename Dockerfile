FROM python:3.11

WORKDIR /app

COPY requirements.txt requirements.txt

RUN apt-get update -y && apt-get install -y \
&& rm -rf /var/lib/apt/lists*

RUN pip3 install -r requirements.txt

COPY app.py app.py

CMD [ "python3", "-m" , "flask", "run", "--host=0.0.0.0"]

HEALTHCHECK --interval=5m --timeout=3s \

CMD curl -f http://localhost/ || exit 1
