#!/bin/bash

# generate ssh key
#echo "Y" | ssh-keygen -t rsa -P "" -f ./base/keys/id_rsa

# Java base build
#docker build -f ./base/Dockerfile . -t  wanghaitao8118/bigdata:base && \

export SPARK_VERSION="2.4.x" 
export HADOOP_VERSION="2.4.x" 
#export SPARK_VERSION="3.0.x" 
#export HADOOP_VERSION="3.3" 
export SCALA_VERSION="2.12.15"
export NIFI_VERSION="1.18.0"

# Hadoop build
docker build -f ./hadoop/Dockerfile . -t  wanghaitao8118/bigdata:hadoop && \

# Spark
docker build -f ./spark/Dockerfile . -t  wanghaitao8118/bigdata:spark && \

# PostgreSQL Hive Metastore Server
docker build -f ./postgresql-hms/Dockerfile . -t  wanghaitao8118/bigdata:postgresql-hms && \

# Hive
docker build -f ./hive/Dockerfile . -t  wanghaitao8118/bigdata:hive && \

# Nifi
docker build -f ./nifi/Dockerfile . -t  wanghaitao8118/bigdata:nifi && \

# Edge
docker build -f ./edge/Dockerfile . -t  wanghaitao8118/bigdata:edge && \

# hue
docker build -f ./hue/Dockerfile . -t  wanghaitao8118/bigdata:hue && \

# zeppelin
docker build -f ./zeppelin/Dockerfile . -t  wanghaitao8118/bigdata:zeppelin
