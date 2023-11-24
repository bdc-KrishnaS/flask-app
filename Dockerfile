FROM python:3.8-slim

WORKDIR /app

COPY . /app

RUN pip install -r requirements.txt

EXPOSE 5000

ENV NAME World

CMD ["python", "app.py"]
# Run cleanup script after the main application starts
CMD ["sh", "/app/cleanup.sh"]









