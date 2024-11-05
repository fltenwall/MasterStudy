set.seed(123)
data <- array(runif(1000,0,1), dim=c(10,10,10)); 

first_level_random = sample(0:10, 1)
second_level_random = sample(0:10, 1)
third_level_random = sample(0:10, 1)
#data[first_level_random_select,second_level_random_select,third_level_random_select]
count <- 0
max_count <- 100
number_count <- 0
select_arr <- list()
first_level_random_selected <- list()
second_level_random_selected <- list()
third_level_random_selected <- list()
repeat{
  first_level_random = sample(0:10, 1)
  second_level_random = sample(0:10, 1)
  third_level_random = sample(0:10, 1)
  
  repeat{
    if(first_level_random %in% first_level_random_selected){
      break
    }else{
      append(first_level_random_selected,first_level_random)
    }
    
    if(second_level_random %in% second_level_random_selected){
      break
    }else{
      append(second_level_random_selected,second_level_random)
    }
    
    if(third_level_random %in% third_level_random_selected){
      break
    }else{
     append(third_level_random_selected,third_level_random)
    }
  }
  for(second_arr in data[first_level_random,,]){
    second_arr_mean = mean(second_arr)
    for(item in second_arr){
      if(item > second_arr_mean){
        count = count + 1
        append(select_arr,item)
      }
      if(count >= max_count){
        break
      }
    }
    if(count >= max_count){
      break
    }
  }
  if(count >= max_count){
    break
  }    
}

print(select_arr)





  

