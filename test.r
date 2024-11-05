# 生成一个1000x1000x1000的数组
array <- array(data = rep(rnorm(100*100*100, mean = 0.5, sd = 0.3), 100*100*100))
print(array)