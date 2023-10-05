FROM python:3.11.4
WORKDIR /app
COPY . /app
EXPOSE 80
ENV NAME World
CMD ["python", "app.py"]