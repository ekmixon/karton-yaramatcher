FROM python:3.10.14

WORKDIR /app/service
COPY ./requirements.txt ./requirements.txt
RUN pip install --no-cache-dir -r requirements.txt
COPY ./karton ./karton
COPY ./setup.py ./setup.py
RUN pip install .
CMD karton-yaramatcher
