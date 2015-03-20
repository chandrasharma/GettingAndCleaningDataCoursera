---
title: "run_analysis_getting_and_cleaning_data_project"
author: "Chandra"
date: "Friday, March 20, 2015"
output: html_document
---

This is an R Markdown document. Markdown is a simple formatting syntax for authoring HTML, PDF, and MS Word documents. For more details on using R Markdown see <http://rmarkdown.rstudio.com>.

When you click the **Knit** button a document will be generated that includes both content as well as the output of any embedded R code chunks within the document. You can embed an R code chunk like this:

```{}
summary(cars)
```

You can also embed plots, for example:

```{r, echo=FALSE}
plot(cars)
```

Note that the `echo = FALSE` parameter was added to the code chunk to prevent printing of the R code that generated the plot.
*Please copy the following files to the folder where run_analysis.r is present
*activity_labels.txt
*features.txt
*features_info.txt
*subject_test.txt
*subject_train.txt
*X_test.txt
*X_train.txt
*y_test.txt
*y_train.txt

*run_analysis.r performs the following steps
*All the text files for test set are read 
*std and mean columns are extracted 
*column numbers for these columns are stored
*all the text files related to test data are column binded
*group_by and summarise_each is used to get the average of all the std and mean columns for each subject for each activity type 
*the above steps are done seperately to create tidy data for test and train sets
*2 sets are rbinded to create one tidy data set

