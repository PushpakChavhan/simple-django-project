#Base image
FROM python:3.7

#working dir
WORKDIR /app

#copy
COPY . .

#Run

RUN pip install -r requirements.txt

#migrations

RUN python cool_counters/manage.py migrate

#run app
CMD ["python","cool_counters/manage.py","runserver","0.0.0.0.8000"]
