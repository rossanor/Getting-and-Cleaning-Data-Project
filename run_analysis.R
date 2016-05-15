#
# You should create one R script called run_analysis.R that does the following.
#
# 1) Merges the 'training 'and the 'test' sets to create one data set.
# 2) Extracts only the measurements on the mean and standard deviation for each measurement.
# 3) Uses descriptive activity names to name the activities in the data set
# 4) Appropriately labels the data set with descriptive variable names.
# 5) From the data set in step 4, creates a second, independent tidy data set 
#       with the average of each variable for each activity and each subject.
#
###########################################################################################
library(dplyr) # group_by , %>%

#########################################################3
# download e abre arquivo
if (!file.exists("UCI HAR Dataset")) {
  message("\nNão existe a pasta 'UCI HAR Dataset'. Verificando a necessidade de Download.\n")
  if (!file.exists("dataset.zip")) {
    message("\nArquivo não baixado. Fazendo o Download...\n")
    download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip",
                  destfile = "dataset.zip")
  }
  message("\nDescompactando arquivo zipado\n")
  unzip("dataset.zip")
}

###########################################################
##
##  1 to 3)

# activity labels 
activ.lab <- read.table("./UCI HAR Dataset/activity_labels.txt", 
                        col.names = c("index", "activity"), stringsAsFactors = F)
# features (variables)
features <- read.table("./UCI HAR Dataset/features.txt", 
                       col.names = c("index", "measure"), stringsAsFactors = F)
features.wanted <- grep("[Mm]ean|[Ss]td", features[,2])

# test
test.sub <- read.table("UCI HAR Dataset/test/subject_test.txt") # indivíduo
test.x   <- read.table("UCI HAR Dataset/test/X_test.txt") # 561 medidas / measurements
test.y   <- read.table("UCI HAR Dataset/test/y_test.txt") # 1 a 6: indexando activity labels

# train 
train.sub <- read.table("UCI HAR Dataset/train/subject_train.txt")
train.x   <- read.table("UCI HAR Dataset/train/X_train.txt")
train.y   <- read.table("UCI HAR Dataset/train/y_train.txt") 

dim(test.sub); dim(test.x); dim(test.y)
dim(train.sub); dim(train.x); dim(train.y)

# merge 
df01 <- as.data.frame(
  rbind(cbind(test.sub,               # indivíduo 
              test.y,                 # atividade 
              test.x[features.wanted]), # variáveis com 'mean' e 'std'
        cbind(train.sub, 
              train.y, 
              train.x[features.wanted])))
names(df01) <- c("subject", "activity", features$measure[features.wanted])
df01$activity <- factor(df01$activity, 
                        levels = activ.lab$index, 
                        labels = activ.lab$activity) #as.factor(activ.lab$activity[df01$activity]) # como nome
str(df01)

###########################################################
##
## 4 )
# delete ',' '-' '(' ')' -variables names
names(df01) <- gsub(",|-|\\(|\\)","",  
                    tolower(names(df01))
)
# test if the names are uniques
length(names(df01))
length(unique(names(df01)))

###########################################################
##
## 5 )

tidy <- 
  df01 %>%
  group_by(subject, activity) %>%
  summarise_each(funs(mean))

write.table(tidy, "tidy_data.txt", row.name = FALSE)
