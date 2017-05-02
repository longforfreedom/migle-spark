FROM expertsystems/oracle-jdk8
MAINTAINER migle <longforfreedom@gmail.com>


#todo:download from spark website
COPY ./spark-1.6.3-bin-hadoop2.6.tgz /opt

WORKDIR /opt
RUN tar xfvz /opt/spark-1.6.3-bin-hadoop2.6.tgz
RUN rm -r /opt/spark-1.6.3-bin-hadoop2.6.tgz

# Set home
ENV SPARK_HOME=/opt/spark-1.6.3-bin-hadoop2.6

#set spark/bin
ENV PATH=$PATH:$SPARK_HOME/bin:$SPARK_HOME/sbin

# Ports
EXPOSE 6066 7077 8080 8081


