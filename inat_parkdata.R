library(rinat)
parkdata <- read.csv("parks.csv")
park_list <- c()
for(i in parkdata$project.id){
  parkdata <- get_inat_obs_project(paste0('2016-national-parks-bioblitz-',i), type='observations')
  fn <- paste0('2016-national-parks-bioblitz-',i, '.csv')
  write.csv(parkdata, file = fn,row.names=FALSE)
  park_list <- c(park_list, fn)
}
print(park_list)
