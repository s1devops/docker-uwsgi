FROM debian:wheezy
RUN apt-get update && \
    apt-get update && \
    apt-get install -y python3 python3-pip && \
    pip-3.2 install uwsgi==2.0.10 && \
    rm -rf /var/lib/apt/lists/*


VOLUME [/var/run/uwsgi]
WORKDIR /srv/app
CMD [uwsgi --ini /srv/app/uwsgi.ini]