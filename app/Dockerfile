FROM python:3.9-slim
WORKDIR /app
COPY wizexercise.txt .
COPY app.py .
RUN pip install flask pymongo
EXPOSE 80
CMD ["python", "app.py"]
