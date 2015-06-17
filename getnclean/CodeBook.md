---
title: "Getting and Cleanding Data: Programming assignment codebook"
author: "Stephan Rossbauer"
date: "17/06/2015"
output:
  html_document:
    keep_md: yes
---

### Creation of data
The description of the data set can be found here:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

Here are the data for the project: 

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

The two datasets "test" and "training" are merged into one and from this dataset a subset is chosen. Furthermore from this subset the means grouped by activity and test person is calculated.



###Dimensions
180 observations of 82 Variables

###Variables in the tidy data set:

all variables contain means of a larger set of data. They have prior been normalised and are therefore unit less


1. ActivityL
2. Testperson
3. tBodyAccmeanX
4. tBodyAccmeanY
5. tBodyAccmeanZ
6. tBodyAccstdX
7. tBodyAccstdY
8. tBodyAccstdZ
9. tGravityAccmeanX
10. tGravityAccmeanY
11. tGravityAccmeanZ
12. tGravityAccstdX
13. tGravityAccstdY
14. tGravityAccstdZ
15. tBodyAccJerkmeanX
16. tBodyAccJerkmeanY
17. tBodyAccJerkmeanZ
18. tBodyAccJerkstdX
19. tBodyAccJerkstdY
20. tBodyAccJerkstdZ
21. tBodyGyromeanX
22. tBodyGyromeanY
23. tBodyGyromeanZ
24. tBodyGyrostdX
25. tBodyGyrostdY
26. tBodyGyrostdZ
27. tBodyGyroJerkmeanX
28. tBodyGyroJerkmeanY
29. tBodyGyroJerkmeanZ
30. tBodyGyroJerkstdX
31. tBodyGyroJerkstdY
32. tBodyGyroJerkstdZ
33. tBodyAccMagmean
34. tBodyAccMagstd
35. tGravityAccMagmean
36. tGravityAccMagstd
37. tBodyAccJerkMagmean
38. tBodyAccJerkMagstd
39. tBodyGyroMagmean
40. tBodyGyroMagstd
41. tBodyGyroJerkMagmean
42. tBodyGyroJerkMagstd
43. fBodyAccmeanX
44. fBodyAccmeanY
45. fBodyAccmeanZ
46. fBodyAccstdX
47. fBodyAccstdY
48. fBodyAccstdZ
49. fBodyAccmeanFreqX
50. fBodyAccmeanFreqY
51. fBodyAccmeanFreqZ
52. fBodyAccJerkmeanX
53. fBodyAccJerkmeanY
54. fBodyAccJerkmeanZ
55. fBodyAccJerkstdX
56. fBodyAccJerkstdY
57. fBodyAccJerkstdZ
58. fBodyAccJerkmeanFreqX
59. fBodyAccJerkmeanFreqY
60. fBodyAccJerkmeanFreqZ
61. fBodyGyromeanX
62. fBodyGyromeanY
63. fBodyGyromeanZ
64. fBodyGyrostdX
65. fBodyGyrostdY
66. fBodyGyrostdZ
67. fBodyGyromeanFreqX
68. fBodyGyromeanFreqY
69. fBodyGyromeanFreqZ
70. fBodyAccMagmean
71. fBodyAccMagstd
72. fBodyAccMagmeanFreq
73. fBodyBodyAccJerkMagmean
74. fBodyBodyAccJerkMagstd
75. fBodyBodyAccJerkMagmeanFreq
76. fBodyBodyGyroMagmean
77. fBodyBodyGyroMagstd
78. fBodyBodyGyroMagmeanFreq
79. fBodyBodyGyroJerkMagmean
80. fBodyBodyGyroJerkMagstd
81. fBodyBodyGyroJerkMagmeanFreq
82. Activity
