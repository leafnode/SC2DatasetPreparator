FROM python:3.10-alpine

RUN mkdir /sc2-dataset-preparator

WORKDIR /sc2-dataset-preparator
COPY requirements.txt .
RUN pip install -r requirements.txt

COPY . .
WORKDIR /sc2-dataset-preparator/src
CMD ["python3", "sc2_replaypack_processor.py"]
