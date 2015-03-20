run_analysis<-function(){
  library(dplyr)
  
  j<-1
  col.number<-col.number.lst<-feature.name.lst<-temp.col.mean<-NULL
  
  subjects<-read.table("subject_test.txt")
  act.code<-read.table("y_test.txt")
  act.label<-read.table("activity_labels.txt")
  
  code.label<-merge(act.code,act.label)      ##naming the columns and then merging will cause the system to hang, requires a reboot!
  colnames(code.label)[1]<-paste("ActivityCode") 
  colnames(code.label)[2]<-paste("ActivityType")
  colnames(subjects)[1]<-paste("Subjects")
  
  sub.code.label<-cbind(subjects,code.label)

  test.data<-read.table("X_test.txt")
  features.all<-read.table("features.txt")
  features.lst<-features.all[,2]
  features.lst.clean<-gsub('\\W',"",features.lst)
  
  df2<-matrix(nrow=14,ncol=79)
  
            for(i in 1:561){
            feature.name<-features.lst.clean[i]
            #print(feature.name)
            features.all.heading<-colnames(test.data)[j]<-paste(feature.name)
                  if((grepl("mean",feature.name))|(grepl("std",feature.name))){
                        col.number<-i
                        col.number.lst<-append(col.number.lst,col.number)
                        feature.name.lst<-append(feature.name.lst,as.character(feature.name)) #appending characters to a list requires as.character
                        len<-length(feature.name.lst)
                      }   
                  j=j+1        
                  }
                  test.final<-cbind(sub.code.label,test.data)
                  std.mean.vec<-c(col.number.lst)
                  collect.std.mean<-test.final[,std.mean.vec]
                  test.final.test<-write.csv(collect.std.mean,file="test_data_test.csv")
                  col.names<-colnames(collect.std.mean)
                              test<-read.csv("test_data_test.csv")
                              df_test <- test %>%
                              group_by(Subjects,ActivityCode,ActivityType) %>%
                              summarise_each(funs(mean))
                              df_test<-subset(df_test,select = -X)                              
                              #write.file<-write.csv(df_test,file="write_df_test.csv")   
  
  #This is a replica of the code above for train data set
  
                    j<-1
                    col.number<-col.number.lst<-feature.name.lst<-temp.col.mean<-NULL
                    
                    subjects<-read.table("subject_train.txt")
                    act.code<-read.table("y_train.txt")
                    act.label<-read.table("activity_labels.txt")
                    
                    code.label<-merge(act.code,act.label)      ##naming the columns and then merging will cause the system to hang, requires a reboot!
                    colnames(code.label)[1]<-paste("ActivityCode") 
                    colnames(code.label)[2]<-paste("ActivityType")
                    colnames(subjects)[1]<-paste("Subjects")
                    
                    sub.code.label<-cbind(subjects,code.label)
                    
                    test.data<-read.table("X_train.txt")
                    features.all<-read.table("features.txt")
                    features.lst<-features.all[,2]
                    features.lst.clean<-gsub('\\W',"",features.lst)
                    
                    df2<-matrix(nrow=14,ncol=79)
                    
                          for(i in 1:561){
                            feature.name<-features.lst.clean[i]
                            features.all.heading<-colnames(test.data)[j]<-paste(feature.name)
                                  if((grepl("mean",feature.name))|(grepl("std",feature.name))){
                                    col.number<-i
                                    col.number.lst<-append(col.number.lst,col.number)
                                    feature.name.lst<-append(feature.name.lst,as.character(feature.name)) #appending characters to a list requires as.character
                                    len<-length(feature.name.lst)
                                  }   
                                  j=j+1        
                                }
                                test.final<-cbind(sub.code.label,test.data)
                                std.mean.vec<-c(col.number.lst)
                                collect.std.mean<-test.final[,std.mean.vec]
                                test.final.test<-write.csv(collect.std.mean,file="test_data_test.csv")
                                col.names<-colnames(collect.std.mean)
                                          test<-read.csv("test_data_test.csv")
                                          df_train <- test %>%
                                          group_by(Subjects,ActivityCode,ActivityType) %>%
                                          summarise_each(funs(mean))
                                          df_train<-subset(df_train,select = -X)                              
                                          #write.file<-write.csv(df1,file="write_df_train.csv")
  
  #create tidy data set 
  tidy.data<-rbind(df_test,df_train)
  tidy.data.wrt<-write.csv(tidy.data,file="Tidy_Data.csv")
  tidy.data.wrt<-write.table(tidy.data,file="Tidy_Data.txt",row.name=FALSE)
  
                }
     