getwd()
setwd("C:/Users/flusr.in0073/Google Drive/996. Hackathons/Rossmann")


load_libraries<-function(){
  usePackage("zoo")
  usePackage("data.table")
  usePackage("forecast")
  usePackage("ggplot2")
}

load_libraries()


#Read Training file

test <- fread("./Data/test.csv")
train <- fread("./Data/train.csv")
store <- fread("./Data/store.csv")

head(train)
str(train)


#Some Preprocessing
#-----------------------------------
#Convert DayOfWeek to factor
train$DayOfWeek<-as.factor(train$DayOfWeek)
