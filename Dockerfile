FROM python:3.12
WORKDIR /usr/src/app
COPY python/requirements.txt .
COPY python/main.py .
RUN pip install -r requirements.txt
CMD ["python", "main.py"]