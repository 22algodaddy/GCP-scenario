FROM python:3.12
WORKDIR /usr/src/app
COPY ./python/* .
RUN pip install -r requirements.txt
CMD ["python", "app.py"]