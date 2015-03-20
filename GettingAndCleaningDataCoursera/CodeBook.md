##Below is the out from run_analysis giving a list of column names of the tidy data set

  * "x"
	* "1" "Subjects"
	* "2" "ActivityCode"
	* "3" "ActivityType"
	* "4" "tBodyAccmeanX"
	* "5" "tBodyAccmeanY"
	* "6" "tBodyAccmeanZ"
	* "7" "tBodyAcccorrelationXY"
	* "8" "tBodyAcccorrelationXZ"
	* "9" "tBodyAcccorrelationYZ"
	* "10" "tGravityAccmeanX"
	* "11" "tGravityAccmeanY"
	* "12" "tGravityAccmeanZ"
	* "13" "tGravityAcccorrelationXY"
	* "14" "tGravityAcccorrelationXZ"
	* "15" "tGravityAcccorrelationYZ"
	* "16" "tBodyAccJerkmeanX"
	* "17" "tBodyAccJerkmeanY"
	* "18" "tBodyAccJerkmeanZ"
	* "19" "tBodyAccJerkcorrelationXY"
	* "20" "tBodyAccJerkcorrelationXZ"
	* "21" "tBodyAccJerkcorrelationYZ"
	* "22" "tBodyGyromeanX"
	* "23" "tBodyGyromeanY"
	* "24" "tBodyGyromeanZ"
	* "25" "tBodyGyrocorrelationXY"
	* "26" "tBodyGyrocorrelationXZ"
	* "27" "tBodyGyrocorrelationYZ"
	* "28" "tBodyGyroJerkmeanX"
	* "29" "tBodyGyroJerkmeanY"
	* "30" "tBodyGyroJerkmeanZ"
	* "31" "tBodyGyroJerkcorrelationXY"
	* "32" "tBodyGyroJerkcorrelationXZ"
	* "33" "tBodyAccMagarCoeff2"
	* "34" "tBodyAccMagarCoeff3"
	* "35" "tGravityAccMagarCoeff2"
	* "36" "tGravityAccMagarCoeff3"
	* "37" "tBodyAccJerkMagarCoeff2"
	* "38" "tBodyAccJerkMagarCoeff3"
	* "39" "tBodyGyroMagarCoeff2"
	* "40" "tBodyGyroMagarCoeff3"
	* "41" "tBodyGyroJerkMagarCoeff2"
	* "42" "tBodyGyroJerkMagarCoeff3"
	* "43" "tBodyGyroJerkMagarCoeff4"
	* "44" "fBodyAccmeanX"
	* "45" "fBodyAccmeanY"
	* "46" "fBodyAccmeanZ"
	* "47" "fBodyAccmaxIndsX"
	* "48" "fBodyAccmaxIndsY"
	* "49" "fBodyAccmaxIndsZ"
	* "50" "fBodyAccbandsEnergy4964"
	* "51" "fBodyAccbandsEnergy124"
	* "52" "fBodyAccbandsEnergy2548"
	* "53" "fBodyAccJerkmeanX"
	* "54" "fBodyAccJerkmeanY"
	* "55" "fBodyAccJerkmeanZ"
	* "56" "fBodyAccJerkmaxIndsX"
	* "57" "fBodyAccJerkmaxIndsY"
	* "58" "fBodyAccJerkmaxIndsZ"
	* "59" "fBodyAccJerkbandsEnergy4964"
	* "60" "fBodyAccJerkbandsEnergy124"
	* "61" "fBodyAccJerkbandsEnergy2548"
	* "62" "fBodyGyromeanX"
	* "63" "fBodyGyromeanY"
	* "64" "fBodyGyromeanZ"
	* "65" "fBodyGyromaxIndsX"
	* "66" "fBodyGyromaxIndsY"
	* "67" "fBodyGyromaxIndsZ"
	* "68" "fBodyGyrobandsEnergy4964"
	* "69" "fBodyGyrobandsEnergy124"
	* "70" "fBodyAccMagiqr"
	* "71" "fBodyAccMagmeanFreq"
	* "72" "fBodyAccMagskewness"
	* "73" "fBodyBodyAccJerkMagiqr"
	* "74" "fBodyBodyAccJerkMagmeanFreq"
	* "75" "fBodyBodyAccJerkMagskewness"
	* "76" "fBodyBodyGyroMagiqr"
	* "77" "fBodyBodyGyroMagmeanFreq"
	* "78" "fBodyBodyGyroMagskewness"
	* "79" "fBodyBodyGyroJerkMagiqr"

	##Description of the variables
	* tBodyAcc-XYZ
	* tGravityAcc-XYZ
	* tBodyAccJerk-XYZ
	* tBodyGyro-XYZ
	* tBodyGyroJerk-XYZ
	* tBodyAccMag
	* tGravityAccMag
	* tBodyAccJerkMag
	* tBodyGyroMag
	* tBodyGyroJerkMag
	* fBodyAcc-XYZ
	* fBodyAccJerk-XYZ
	* fBodyGyro-XYZ
	* fBodyAccMag
	* fBodyAccJerkMag
	* fBodyGyroMag
	* fBodyGyroJerkMag
	* 
	* The set of variables that were estimated from these signals are: 
	* 
	* mean(): Mean value
	* std(): Standard deviation
	* mad(): Median absolute deviation 
	* max(): Largest value in array
	* min(): Smallest value in array
	* sma(): Signal magnitude area
	* energy(): Energy measure. Sum of the squares divided by the number of values. 
	* iqr(): Interquartile range 
	* entropy(): Signal entropy
	* arCoeff(): Autorregresion coefficients with Burg order equal to 4
	* correlation(): correlation coefficient between two signals
	* maxInds(): index of the frequency component with largest magnitude
	* meanFreq(): Weighted average of the frequency components to obtain a mean frequency
	* skewness(): skewness of the frequency domain signal 
	* kurtosis(): kurtosis of the frequency domain signal 
	* bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.
	* angle(): Angle between to vectors.
  
##How run_analysis works
##Please copy the following files to the folder where run_analysis.r is present
* activity_labels.txt
* features.txt
* features_info.txt
* subject_test.txt
* subject_train.txt
* X_test.txt
* X_train.txt
* y_test.txt
* y_train.txt

##run_analysis.r performs the following steps
* All the text files for test set are read 
* std and mean columns are extracted 
* column numbers for these columns are stored
* all the text files related to test data are column binded
* group_by and summarise_each is used to get the average of all the std and mean columns for each subject for each   activity type 
* the above steps are done seperately to create tidy data for test and train sets
* 2 sets are rbinded to create one tidy data set








