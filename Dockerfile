FROM tiangolo/uwsgi-nginx-flask:python3.6

# COPY requirements.txt /
ADD . /flask-app

WORKDIR /flask-app

RUN pip install -r ./requirements.txt --no-cache-dir

ENV MOVIE_API_KEY=64e64c02cf7d5bb56d77fa7ae6c515cc
ENV SECRET_KEY=I\love\me
ENV MAIL_USERNAME='jonnymutavi@gmail.com'
ENV MAIL_PASSWORD='Hakunapassword'
CMD python3.6 manage.py db upgrade && python3.6 manage.py runserver -h 0.0.0.0 -p 5000


