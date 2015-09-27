## Data description
The tidy data produced here consists of 68 columns - Subject_ID, ActivityName and 66 other variables described below.
The data is computed by joining the features.txt, subject_test.txt, x_test.txt and y_test.txt for the test data
and combining it with the corresponding files in train data.
The tidy data is computed by taking a mean of all the 66 columns grouped on Subject_ID and ActivityName resulting in a 180x68 table 
having an average of the variables for each sibject and activity.

Description of the variables:

* Subject_ID: the subject id as mentioned in the subject_test.txt and subject_train.txt
* ActivityName: the activity name from activity_labels.txt and y_test.txt/y_train.txt 

1. tBodyAcc-mean()-X : Time domain Body Acceleration Mean - X Axis
2. tBodyAcc-mean()-Y : Time domain Body Acceleration Mean - Y Axis
3. tBodyAcc-mean()-Z : Time domain Body Acceleration Mean - Z Axis
4. tBodyAcc-std()-X : Time domain Body Acceleration Standard Deviation - X Axis
5. tBodyAcc-std()-Y : Time domain Body Acceleration Standard Deviation - Y Axis
6. tBodyAcc-std()-Z : Time domain Body Acceleration Standard Deviation - Z Axis
7. tGravityAcc-mean()-X : Time domain Gravity Acceleration Mean - X Axis
8. tGravityAcc-mean()-Y : Time domain Gravity Acceleration Mean - Y Axis
9. tGravityAcc-mean()-Z : Time domain Gravity Acceleration Mean - Z Axis
10. tGravityAcc-std()-X : Time domain Gravity Acceleration Standard Deviation - X Axis
11. tGravityAcc-std()-Y : Time domain Gravity Acceleration Standard Deviation - Y Axis
12. tGravityAcc-std()-Z : Time domain Gravity Acceleration Standard Deviation - Z Axis
13. tBodyAccJerk-mean()-X : Time domain Body Acceleration Jerk Mean - X Axis
14. tBodyAccJerk-mean()-Y : Time domain Body Acceleration Jerk Mean - Y Axis
15. tBodyAccJerk-mean()-Z : Time domain Body Acceleration Jerk Mean - Z Axis
16. tBodyAccJerk-std()-X : Time domain Body Acceleration Jerk Standard Deviation - X Axis
17. tBodyAccJerk-std()-Y : Time domain Body Acceleration Jerk Standard Deviation - Y Axis
18. tBodyAccJerk-std()-Z : Time domain Body Acceleration Jerk Standard Deviation - Z Axis
19. tBodyGyro-mean()-X : Time domain Body Gyroscope Mean - X Axis
20. tBodyGyro-mean()-Y : Time domain Body Gyroscope Mean - Y Axis
21. tBodyGyro-mean()-Z : Time domain Body Gyroscope Mean - Z Axis
22. tBodyGyro-std()-X : Time domain Body Gyroscope Standard Deviation - X Axis
23. tBodyGyro-std()-Y : Time domain Body Gyroscope Standard Deviation - Y Axis
24. tBodyGyro-std()-Z : Time domain Body Gyroscope Standard Deviation - Z Axis
25. tBodyGyroJerk-mean()-X : Time domain Body Gyroscope Jerk Mean - X Axis
26. tBodyGyroJerk-mean()-Y : Time domain Body Gyroscope Jerk Mean - Y Axis
27. tBodyGyroJerk-mean()-Z : Time domain Body Gyroscope Jerk Mean - Z Axis
28. tBodyGyroJerk-std()-X : Time domain Body Gyroscope Jerk Standard Deviation - X Axis
29. tBodyGyroJerk-std()-Y : Time domain Body Gyroscope Jerk Standard Deviation - Y Axis
30. tBodyGyroJerk-std()-Z : Time domain Body Gyroscope Jerk Standard Deviation - Z Axis
31. tBodyAccMag-mean() : Time domain Body Acceleration Magnitude Mean
32. tBodyAccMag-std() : Time domain Body Acceleration Magnitude Standard Deviation
33. tGravityAccMag-mean() : Time domain Gravity Acceleration Magnitude Mean
34. tGravityAccMag-std() : Time domain Gravity Acceleration Magnitude Standard Deviation
35. tBodyAccJerkMag-mean() : Time domain Body Acceleration Jerk Magnitude Mean
36. tBodyAccJerkMag-std() : Time domain Body Acceleration Jerk Magnitude Standard Deviation
37. tBodyGyroMag-std() : Time domain Body Gyroscope Magnitude Standard Deviation
38. tBodyGyroMag-mean() : Time domain Body Gyroscope Magnitude Mean
39. tBodyGyroJerkMag-mean() : Time domain Body Gyroscope Jerk Magnitude Mean
40. tBodyGyroJerkMag-std() : Time domain Body Gyroscope Jerk Magnitude Standard Deviation
41. fBodyAcc-mean()-X : Frequency domain Body Acceleration Mean - X Axis
42. fBodyAcc-mean()-Y : Frequency domain Body Acceleration Mean - Y Axis
43. fBodyAcc-mean()-Z : Frequency domain Body Acceleration Mean - Z Axis
44. fBodyAcc-std()-X : Frequency domain Body Acceleration Standard Deviation - X Axis
45. fBodyAcc-std()-Y : Frequency domain Body Acceleration Standard Deviation - Y Axis
46. fBodyAcc-std()-Z : Frequency domain Body Acceleration Standard Deviation - Z Axis
47. fBodyAccJerk-mean()-X : Frequency domain Body Acceleration Jerk Mean - X Axis
48. fBodyAccJerk-mean()-Y : Frequency domain Body Acceleration Jerk Mean - Y Axis
49. fBodyAccJerk-mean()-Z : Frequency domain Body Acceleration Jerk Mean - Z Axis
50. fBodyAccJerk-std()-X : Frequency domain Body Acceleration Jerk Standard Deviation - X Axis
51. fBodyAccJerk-std()-Y : Frequency domain Body Acceleration Jerk Standard Deviation - Y Axis
52. fBodyAccJerk-std()-Z : Frequency domain Body Acceleration Jerk Standard Deviation - Z Axis
53. fBodyGyro-mean()-X : Frequency domain Body Gyroscope Mean - X Axis
54. fBodyGyro-mean()-Y : Frequency domain Body Gyroscope Mean - Y Axis
55. fBodyGyro-mean()-Z : Frequency domain Body Gyroscope Mean - Z Axis
56. fBodyGyro-std()-X : Frequency domain Body Gyroscope Standard Deviation - X Axis
57. fBodyGyro-std()-Y : Frequency domain Body Gyroscope Standard Deviation - Y Axis
58. fBodyGyro-std()-Z : Frequency domain Body Gyroscope Standard Deviation - Z Axis
59. fBodyAccMag-mean() : Frequency domain Body Acceleration Magnitude Mean
60. fBodyAccMag-std() : Frequency domain Body Acceleration Magnitude Standard Deviation
61. fBodyBodyAccJerkMag-mean() : Frequency domain Body Acceleration Jerk Magnitude Mean
62. fBodyBodyAccJerkMag-std() : Frequency domain Body Acceleration Jerk Magnitude Standard Deviation
63. fBodyBodyGyroMag-mean() : Frequency domain Body Gyroscope Magnitude Mean
64. fBodyBodyGyroMag-std() : Frequency domain Body Gyroscope Magnitude Standard Deviation
65. fBodyBodyGyroJerkMag-mean()) : Frequency domain Body Gyroscope Jerk Magnitude Mean
66. fBodyBodyGyroJerkMag-std()  : Frequency domain Body Gyroscope Jerk Magnitude Standard Deviation

