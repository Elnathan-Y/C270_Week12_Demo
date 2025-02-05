#!/bin/bash

mkdir tempdir
mkdir tempdir/templates
mkdir tempdir/static

cp jenkins.py tempdir/.
cp -r templates/* tempdir/templates/.
cp -r static/* tempdir/static/.

echo "FROM python" >> tempdir/Dockerfile
echo "RUN pip install flask" >> tempdir/Dockerfile
echo "COPY  ./static /home/myapp/static/" >> tempdir/Dockerfile
echo "COPY  ./templates /home/myapp/templates/" >> tempdir/Dockerfile
echo "COPY  jenkins.py /home/myapp/" >> tempdir/Dockerfile
echo "EXPOSE 5050" >> tempdir/Dockerfile
echo "CMD python3 /home/myapp/jenkins.py" >> tempdir/Dockerfile

cd tempdir
docker build -t jenkins .
docker run -t -d -p 5050:5050 --name samplerunning jenkins.py
docker ps -a 
