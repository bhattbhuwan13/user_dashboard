FROM python:3.6
# FROM python:3-windowsservercore


# Set environment varibles
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

COPY requirements.txt /code/
WORKDIR /code/
RUN pip install -r requirements.txt
COPY . /code/
EXPOSE 8000
EXPOSE 5432
STOPSIGNAL SIGINT
ENTRYPOINT ["python", "manage.py"]
CMD ["runserver", "0.0.0.0:8000"]