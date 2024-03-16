from pyspark.sql import SparkSession

# 创建 SparkSession
spark = SparkSession.builder \
    .appName("SimpleSparkTask") \
    .getOrCreate()

# 输入数据
data = [1, 2, 3, 4, 5]

# 将数据转换为 RDD
rdd = spark.sparkContext.parallelize(data)

# 计算整数的平均值
average = rdd.mean()

# 打印结果
print("整数列表:", data)
print("平均值:", average)

# 停止 SparkSession
spark.stop()