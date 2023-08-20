FROM python:3-alpine

WORKDIR /app

COPY requirements.txt ./

RUN python -m pip install --upgrade pip

RUN pip install --no-cache-dir -r requirements.txt

COPY . .

EXPOSE 8080

CMD [ "scrapyrt", "-i", "0.0.0.0", "-p", "8080" ]
