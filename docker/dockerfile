FROM ubuntu:latest
RUN apt-get update && apt-get install sqlite3 git nmap python-pip  -y
RUN pip install --upgrade pip
RUN pip install lxml
RUN pip install Django
RUN git clone https://github.com/cldrn/rainmap-lite
WORKDIR /rainmap-lite/rainmap-lite/
ADD  run.sh /rainmap-lite/rainmap-lite/run.sh
RUN chmod 777 /rainmap-lite/rainmap-lite/run.sh
CMD ./run.sh
