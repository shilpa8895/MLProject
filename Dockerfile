FROM python:3.11-slim-buster
COPY . /app
WORKDIR /app

# Install system dependencies, including git
RUN apt update -y && apt install -y awscli

RUN pip install -r requirements.txt
CMD ["python3", "app.py"]