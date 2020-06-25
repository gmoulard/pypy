FROM python:2

WORKDIR /usr/src/app

COPY helloworld/requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

CMD [ "python", "./hw.py" ]
