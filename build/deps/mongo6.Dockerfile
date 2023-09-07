FROM mongo:6.0.9

# see https://github.com/docker-library/mongo/issues/475
RUN echo 'topsecret' > /etc/mongod_keyfile.txt
RUN chmod 0400 /etc/mongod_keyfile.txt
RUN chown 999:999 /etc/mongod_keyfile.txt