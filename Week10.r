library(stringr)

##1.
print("DSO")
print("\"")
cat("\"")
cat("DSO\n545")  ##\n - new line
cat("DSO\t525")  ##\t - with space
##\escape the the next code next to it.

##2.
cat(":-\\")
cat("^_^\"")
cat("@_'-'")
cat("\\m/")

##3. 
?str_locate
?str_sub

##4.
str_locate(string ="great",pattern="a")
str_locate_all("fantastic","a")
str_locate("super","a")
str_locate(c("fantastic","great","super"),pattern="a")


##5.
str_sub(string="testing",start=1,end=3)
str_sub(string="testing",start=4,end=7)
str_sub(string ="testing",start=1,end=4)

?str_extract


##6.
input=(c("abc","defg"))
str_sub(input,c(2,3)) #when do not specify the ending, the end is the end. c(2,3) means starting from 2 to the end and then 
#start from 3 to the end

##7.
emails<-readRDS("email.rds")
emails[1]
cat(emails[1])

str_locate(emails[1],pattern="\n\n")

##8.
header = str_sub(emails[1],start=1,end=842)
cat(header)
body=str_sub(emails[1],start=843)
cat(body)


##10.
breaks = str_locate(emails,pattern="\n\n")
headers=str_sub(emails,start=1,end=breaks[,1])  ## [,1] all rows,first column
bodies=str_sub(emails,start=breaks[,2] )        ## [,2] all rows, second column
cat(bodies[6])


##2.1
fruit=c("apple","banana","pear","pinapple")

##2.2 - Detect if the pattern is found
str_detect(fruit,"a")
# pattern starts with "a"
str_detect(fruit,"^a")
# pattern ends with "a"
str_detect(fruit,"a$")
# pattern has a or e or i or o or u
str_detect(fruit,"[aeiou]")
# pattern has a or b or c or d
str_detect(fruit,"[a-d]")
str_detect(fruit,"[0-9]")


##2.3
#pattern starts with "a" and ends with "e" at the same time
str_detect(fruit,"^a[a-z]*e$") # * Preceding pattern is matched 0 or more times -- after the * after the patterns
### . could be any character or number
str_detect(fruit,"^a.*e$")


##2.4

phone = "213 740 4826, 213-740-4826, (213) 740 4826"
str_detect(phone,"[0-9]{3} [0-9]{3} [0-9]{4}")
str_detect(phone,"[0-9]{3}[ -][0-9]{3}[ -][0-9]{4}") ## [ ] for "or" functions
str_detect(phone, "[(]?[0-9]{3}[)]?[ -][0-9]{3}[ -][0-9]{4}" )

##2.5
str_extract_all(bodies,"[(]?[0-9]{3}[)]?[ -][0-9]{3}[ -][0-9]{4}")





