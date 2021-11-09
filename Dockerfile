FROM prefecthq/prefect:latest

WORKDIR /app
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

ADD . .

CMD python top_dex.py