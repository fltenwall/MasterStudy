data <- array(runif(1000000,0,1), dim=c(100,100,100)); 

count <- 0
max_count <- 100
number_count <- 0

first_level_random_selected <- list()
second_level_random_selected <- list()
third_level_random_selected <- list()

selected_data <- array(runif(100,1), dim=c(100,1));

repeat{
  first_level_random <- sample(1:100, 1)
    second_level_random <- sample(1:10, 1)
    third_level_random <- sample(1:10, 1)

  repeat{
    if(first_level_random %in% first_level_random_selected){
      break
    }else{
      append(first_level_random_selected,first_level_random)
      break
    }
    
    if(second_level_random %in% second_level_random_selected){
      break
    }else{
      append(second_level_random_selected,second_level_random)
      break
    }
    
    if(third_level_random %in% third_level_random_selected){
      break
    }else{
     append(third_level_random_selected,third_level_random)
     break
    }
  }
    
    select_arr <- array(data[first_level_random, second_level_random, ])
    select_arr_mean <- mean(select_arr)

  for(item in select_arr){
      if(!is.na(item) && item > select_arr_mean){
        count <- count + 1
        # selected_data = append(selected_data,item)
        selected_data[[count]] <- count
      }
      if(count >= max_count){
        break
      }
  }
  if(count >= max_count){
    break
  }    
}

print(selected_data)
selected_data_mean <- mean(selected_data)
print(selected_data_mean)






