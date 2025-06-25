FROM python:3.12.3-alpine

COPY ./requirements.txt /tmp

RUN pip install -r /tmp/requirements.txt

COPY ./src /src

RUN chmod +x /src/app.py

CMD python /src/app.py
