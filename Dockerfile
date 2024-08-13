FROM python:3.8

WORKDIR /app

COPY requirements.txt .

RUN pip install -r requirements.txt

COPY . .

EXPOSE 5000

# Set environment variables, if necessary
# ENV MY_ENV_VAR=value

CMD ["python", "app.py"]