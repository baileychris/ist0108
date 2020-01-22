height <- c(59,60,61,58,67,72,70)
weight <- c(150,140,180,220,160,140,130)
a <- 150

mean(height)
mean(weight)
l_height=length(height)
l_weight=length(weight)
s_height=sum(height)
s_weight=sum(weight)
avg_height= s_height / l_height
avg_weight = s_weight / l_weight
avg_weight
avg_height

maxH = max(height)
minW = min(weight)

inc_W <- weight + 5 
w_h <- inc_W / height

if (maxH > 60) {
  print('yes')
} else {
  print('no')
}

if (minW > a ) {
  print('yes')
} else {
  print('no')
}



