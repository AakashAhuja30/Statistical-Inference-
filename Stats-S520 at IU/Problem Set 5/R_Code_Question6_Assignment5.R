#Checking the working directory
getwd()
#Downloaded Data into working directory
library(rio)

#Loading Data From Working Directory
IUsalaries<-import('IU_Salary_List-2014-2015.xls')

str(IUsalaries)

#Converting Salary Structure From Factor to Integer
IUsalaries$Salary<-as.integer(IUsalaries$Salary)

str(IUsalaries)

#taking out total academic employees
Academic_Employees<-IUsalaries[IUsalaries$Plan=="AC1",]

#Separating out Dr Luen's Salary in a variable for comparison
DrLuen_Salary<-as.integer(IUsalaries[which(IUsalaries$Name == 'Luen, B'), "Salary"])
DrLuen_Salary

#Counting total number of academic employees
Total_Academic_Employees<-nrow(Academic_Employees)

#Total employees with salary greater than B.Luen
Salary_Greater_Than_Luen<-length(which(Academic_Employees$Salary > DrLuen_Salary))

#Calculating the percentage of academic employees with salary greater than professor Luen
(Salary_Greater_Than_Luen/Total_Academic_Employees)*100




