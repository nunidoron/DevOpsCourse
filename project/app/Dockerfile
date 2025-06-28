FROM python:3.9-slim

WORKDIR /app
COPY *.py /app
COPY *.txt /app
RUN pip install -r requirements.txt
EXPOSE 5000

CMD ["python", "app.py"]
