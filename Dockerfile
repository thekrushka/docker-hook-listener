FROM python:3.5-onbuild

# install dependencies
RUN apt-get update
RUN apt-get install -y python-pip
RUN pip install flask

# update working directories
ADD ./app /app

CMD chmod +x app/deploy.sh
CMD python app/app.py