## CODEBOOK

The dataset here presented (**'tidy_data.txt'**) is derived from a original dataset called "Human Activity Recognition Using Smartphones Data Set". 

* Full description: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
* It was downloaded in may/2016 from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

The the original data, briefly, may be described as the measures obtained by the accelerometer and gyroscope inside the smartphones used by 30 volunteers while they performed six activities: WALKING, WALKING UPSTAIRS, WALKING DOWNSTAIRS, SITTING, STANDING, LAYING.

The **'tidy_data.txt'** presents the mean value, grouped by activity and subject, of each original measures. The original variables used was the ones that was the mean or standard variation of any measure.

The variables names of derived dataset is similar to the original ones. The changes mades are:
* Lowercase of the original names
* The characters '(', ')', '-' and ',' were deleted.

The original names and the meaning of each variable are in the files 'features.txt' and 'features_info.txt' avaiable in the original dataset.

The variables names of derived dataset are:

|           Variable Name         |       R Class       |
|:--------------------------------|:-------------------:|
|subject                          | integer             |
|activity                         | Factor w/ 6 levels  |
|tbodyaccmeanx                    | numeric             |
|tbodyaccmeany                    | numeric             |
|tbodyaccmeanz                    | numeric             |
|tbodyaccstdx                     | numeric             |
|tbodyaccstdy                     | numeric             |
|tbodyaccstdz                     | numeric             |
|tgravityaccmeanx                 | numeric             |
|tgravityaccmeany                 | numeric             |
|tgravityaccmeanz                 | numeric             |
|tgravityaccstdx                  | numeric             |
|tgravityaccstdy                  | numeric             |
|tgravityaccstdz                  | numeric             |
|tbodyaccjerkmeanx                | numeric             |
|tbodyaccjerkmeany                | numeric             |
|tbodyaccjerkmeanz                | numeric             |
|tbodyaccjerkstdx                 | numeric             |
|tbodyaccjerkstdy                 | numeric             |
|tbodyaccjerkstdz                 | numeric             |
|tbodygyromeanx                   | numeric             |
|tbodygyromeany                   | numeric             |
|tbodygyromeanz                   | numeric             |
|tbodygyrostdx                    | numeric             |
|tbodygyrostdy                    | numeric             |
|tbodygyrostdz                    | numeric             |
|tbodygyrojerkmeanx               | numeric             |
|tbodygyrojerkmeany               | numeric             |
|tbodygyrojerkmeanz               | numeric             |
|tbodygyrojerkstdx                | numeric             |
|tbodygyrojerkstdy                | numeric             |
|tbodygyrojerkstdz                | numeric             |
|tbodyaccmagmean                  | numeric             |
|tbodyaccmagstd                   | numeric             |
|tgravityaccmagmean               | numeric             |
|tgravityaccmagstd                | numeric             |
|tbodyaccjerkmagmean              | numeric             |
|tbodyaccjerkmagstd               | numeric             |
|tbodygyromagmean                 | numeric             |
|tbodygyromagstd                  | numeric             |
|tbodygyrojerkmagmean             | numeric             |
|tbodygyrojerkmagstd              | numeric             |
|fbodyaccmeanx                    | numeric             |
|fbodyaccmeany                    | numeric             |
|fbodyaccmeanz                    | numeric             |
|fbodyaccstdx                     | numeric             |
|fbodyaccstdy                     | numeric             |
|fbodyaccstdz                     | numeric             |
|fbodyaccmeanfreqx                | numeric             |
|fbodyaccmeanfreqy                | numeric             |
|fbodyaccmeanfreqz                | numeric             |
|fbodyaccjerkmeanx                | numeric             |
|fbodyaccjerkmeany                | numeric             |
|fbodyaccjerkmeanz                | numeric             |
|fbodyaccjerkstdx                 | numeric             |
|fbodyaccjerkstdy                 | numeric             |
|fbodyaccjerkstdz                 | numeric             |
|fbodyaccjerkmeanfreqx            | numeric             |
|fbodyaccjerkmeanfreqy            | numeric             |
|fbodyaccjerkmeanfreqz            | numeric             |
|fbodygyromeanx                   | numeric             |
|fbodygyromeany                   | numeric             |
|fbodygyromeanz                   | numeric             |
|fbodygyrostdx                    | numeric             |
|fbodygyrostdy                    | numeric             |
|fbodygyrostdz                    | numeric             |
|fbodygyromeanfreqx               | numeric             |
|fbodygyromeanfreqy               | numeric             |
|fbodygyromeanfreqz               | numeric             |
|fbodyaccmagmean                  | numeric             |
|fbodyaccmagstd                   | numeric             |
|fbodyaccmagmeanfreq              | numeric             |
|fbodybodyaccjerkmagmean          | numeric             |
|fbodybodyaccjerkmagstd           | numeric             |
|fbodybodyaccjerkmagmeanfreq      | numeric             |
|fbodybodygyromagmean             | numeric             |
|fbodybodygyromagstd              | numeric             |
|fbodybodygyromagmeanfreq         | numeric             |
|fbodybodygyrojerkmagmean         | numeric             |
|fbodybodygyrojerkmagstd          | numeric             |
|fbodybodygyrojerkmagmeanfreq     | numeric             |
|angletbodyaccmeangravity         | numeric             |
|angletbodyaccjerkmeangravitymean | numeric             |
|angletbodygyromeangravitymean    | numeric             |
|angletbodygyrojerkmeangravitymean| numeric             |
|anglexgravitymean                | numeric             |
|angleygravitymean                | numeric             |
|anglezgravitymean                | numeric             |
