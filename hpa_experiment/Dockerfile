FROM python:3.9

WORKDIR /app

COPY ./app/requirements.txt /app/
RUN pip install --no-cache-dir --upgrade -r /app/requirements.txt

COPY ./app/main.py /app/

EXPOSE 8000

CMD ["uvicorn", "main:app", "--host", "0.0.0.0"]
