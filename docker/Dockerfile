FROM bitnami/spark:3.3

ENV PYSPARK_MAJOR_PYTHON_VERSION=3

WORKDIR /opt/application

COPY ./app/ /opt/application/app/


# RUN $SPARK_HOME/bin/spark-submit --conf spark.jars.ivy=/tmp/.ivy ./app/mmcount.py ./data/mnm_dataset.csv

RUN $SPARK_HOME/bin/spark-submit ./app/test.py