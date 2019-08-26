FROM python:3.6


# Set environment varibles
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

COPY requirements.txt /code/
WORKDIR /code/
RUN pip install -r requirements.txt

COPY . /code/
CMD [ "./docker/app/startup.sh" ]
