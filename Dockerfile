FROM flink:1.17.1


# install python3 and pip3
RUN apt-get update -y \
&& apt-get install -y python3 python3-pip python3-dev && rm -rf /var/lib/apt/lists/* \
&& ln -s /usr/bin/python3 /usr/bin/python \
&& pip3 install apache-flink==1.17.1

CMD ./bin/flink run \
    --python /job/python/${PYTHON_ENTRY_FILE} \
    --jobmanager${JOB_MANAGER}
