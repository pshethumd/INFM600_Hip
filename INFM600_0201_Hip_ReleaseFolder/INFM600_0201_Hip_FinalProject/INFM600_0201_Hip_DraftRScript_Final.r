#--Loading the data in R as comma separated values and storing in variable 'dataset'
> dataset=read.csv(file.choose())

#--Function file.choose() is a default function to open the Windows Explorer and let's the user choose the required file
#--We then choose the file INFM600_0201_HIP_CleanDataset_Final.csv and use the below command to confirm that the data has correctly loaded
> head(dataset)

#--The head commands returns the top six rows of the dataset which enables the user to confirm the data
#--We have three research questions to predict the best country as our investment option
#--Q1. Which are the favorable countries in order of their financial stability? (Variables: KDI_PPPT_2012, KDI_GDP_2012, RME_IR_2010_2012)
#--For the above variables we plot the histograms and check the normality of the distribution. The central tendency for a normally distributed variable would be  
#--mean and the central tendency of a skewed distribution would be median
#--We plot the histogram using the hist(dataset$variable) command
> hist(dataset$KDI_PPPT_2012)
> hist(dataset$KDI_GDP_2012)
> hist(dataset$RME_IR_2010_2012)

#--Inspecting the histograms for the above variables, we understand that they are skewed in nature and hence we calculate the median and standard deviation for
#--each variable using commands median(variable) and sd(variable). We also add na.rm=TRUE to ignore NuLL values.
> median(dataset$KDI_PPPT_2012, na.rm=TRUE) #value= 107.9
> median(dataset$KDI_GDP_2012, na.rm=TRUE) #value= 1.9
> median(dataset$RME_IR_2010_2012, na.rm=TRUE) #value= 14.7
> sd(dataset$KDI_PPPT_2012, na.rm=TRUE) #value= 1911.737
> sd(dataset$KDI_GDP_2012, na.rm=TRUE) #value= 6.093943
> sd(dataset$RME_IR_2010_2012, na.rm=TRUE) #value= 20.82652

#--The above central tendencies give us a fair idea of the nature of the variable. Further, we need to repeat the above activity for the other questions
#--Q2. Which are the favorite countries in order of good governance practice and availabity of quaified human capital? 
#--(Variables: RME_WWGI_2011, RMH_EP_2010, RMH_ES_2010, RMH_ET_2010)
#--We start with plotting the histograms to check the normality of distribution
> hist(dataset$RME_WWGI_2011)
> hist(dataset$RMH_EP_2010)
> hist(dataset$RMH_ES_2010)
> hist(dataset$RMH_ET_2010)

#--From the above histograms, the first one is normal and hence we calculate the mean as the central tendency. For the other skewed data we calculate the median
> mean(dataset$RME_WWGI_2011, na.rm=TRUE) #value= 2.337109
> median(dataset$RMH_EP_2010, na.rm=TRUE) #value= 12.58
> median(dataset$RMH_ES_2010, na.rm=TRUE) #value= 16.12
> median(dataset$RMH_ET_2010, na.rm=TRUE) #value= 5.26

#--We further calculate the standard deviation for each of the above variables
> sd(dataset$RME_WWGI_2011, na.rm=TRUE) #value= 0.948402
> sd(dataset$RMH_EP_2010, na.rm=TRUE) #value= 11.52617
> sd(dataset$RMH_ES_2010, na.rm=TRUE) #value= 16.43139
> sd(dataset$RMH_ET_2010, na.rm=TRUE) #value= 7.335208

#--We continue calculating the same parameters for the third question
#--Q3. Which are the favorable countries in order of potential market? (Variables: RMH_S_2011, RMF_IP_2011, RMF_IA_2005_2010)
#--We start with plotting the  histograms
> hist(dataset$RMH_S_2011)
> hist(dataset$RMF_IP_2011)
> hist(dataset$RMF_IA_2005_2010)

#--From the above distributions, RMH_S_2011 is normally distributed and the other two are skewed.
> mean(dataset$RMH_S_2011,na.rm=TRUE) #value= 33.27551
> median(dataset$RMF_IP_2011,na.rm=TRUE) #value= 1.34
> median(dataset$RMF_IA_2005_2010,na.rm=TRUE) #value= 2.1

#--We now calculate the standard deviations for each of the above variables
> sd(dataset$RMH_S_2011,na.rm=TRUE) #value= 18.71219
> sd(dataset$RMF_IP_2011,na.rm=TRUE) #value= 2.656481
> sd(dataset$RMF_IA_2005_2010,na.rm=TRUE) #value= 22.16973

#--Further analysis of the reseach question has to be done by assigning weights to each variable and 
#--inspecting its effect on the final reseach of the company's investment. Team HIP continues to work 
#--on how to analyze further 

