FROM python:alpine3.7
COPY hw.py ./hw.py 
#WORKDIR /app
#RUN pip install -r requirements.txt
#EXPOSE 5000
CMD python ./hw.py
. ./hw.py
