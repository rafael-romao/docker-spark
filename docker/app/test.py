import pyspark
import random

spark = pyspark.sql.SparkSession.builder.appName('myApp').getOrCreate()
sc = spark.sparkContext

num_samples = 100

def inside(p):
  x, y = random.random(), random.random()
  return x*x + y*y < 1

count = sc.parallelize(range(0, num_samples)).filter(inside).count()

pi = 4 * count / num_samples
print(pi)

sc.stop()