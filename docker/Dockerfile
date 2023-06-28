FROM bitnami/spark:3.4

USER root

ENV PYSPARK_MAJOR_PYTHON_VERSION=3

WORKDIR /opt/bitnami/spark/

COPY ./app/ /opt/bitnami/spark/app/


EXPOSE 4040

# RUN $SPARK_HOME/bin/spark-submit --conf spark.jars.ivy=/opt/bitnami/spark/ivy ./app/mmcount.py ./app/data/mnm_dataset.csv

# RUN $SPARK_HOME/bin/spark-submit --conf spark.jars.ivy=/opt/spark/ivy  ./app/test.py