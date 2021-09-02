model1<-'afternoon sir'
model1
typeof(model1)
model2<-12345
typeof(model2)
model3<-12.45
typeof(model3)
class(model3)
class(model2)
class(model1)
model3
Model3 # you get an error because R is case sensitive 
greet_person="how are you?"
greet_person
greetperson="goodbye"
greetperson# we can use the "=" or the "<-" symbol for the assigning of the values. both mean the same thing 
2pairs="shoes"# you are getting an error beacuse we cannot have a variable name starting with a number 
.2pairs="shoes"# again we get an error because we cannot have a "." followed by an integer, we must write an alphabet
.pairs="shoes"
.pairs
first_job<-"Data Analyst"
first_job
first job<-"Data Analyst"# you get an error because you cannot leave space between two words of a variable name, you have to use underscore"_"
bird<-"Tiger"# even though we have a proper output but the naming is creating a confusion so naming should have some sense 
bird
x<-100
typeof(x)
x<-100L
typeof(x)
a=TRUE
typeof(a)
100+100
100*100
100-30
100-120
100/100
100%%100
34+46/2
(34+46)/2
2^2
#OPERATORS
#1.ARITHMETIC OPERATORS(addition,subtract,multixply,divide,remainder(%),modulus(/),exponent(^))
#2.RATIONAL OPERATORS(greater than,less than,greater than/equal,less than/equal,not equal)
#LOGICAL OPERATORS(And(&),Or(|),Not(!))
t=10>20 & 10<20
t
h=10>20|10<20
h
j=!(5==5)
j
a=100
b=200
a!=b
library(readxl)
hp <- read_excel("C:/Users/nishi/Downloads/House_Price.xlsx")
View(hp)
x<-hp[hp$bedrooms==3,4]
x
y<-hp[hp$bedrooms==5 & hp$floors==1.5 ,1:4]
y
#print formatting
# R uses the print() function to display the variables 
x<-10
print(x)# we could also write x and then press shift plus enter
# R uses the paste() and paste0() functions to format strings and variables together for printing in a few different ways
print(paste('hello','world'))
print(paste('hello','world',sep='-'))
paste0('hello','world')
paste0('welcome','to','R')
print(a)

#using operator to create integer sequence 
#integer sequence of length 20
u<-10:30
print(u)
class(u)

#order of arithmetic operations
selling<-500
cost<-400
profit<-selling -cost
profit
i=10L
i
j=TRUE
j
typeof(j)
class(j)

k="Hello"
k
typeof(k)
class(k)
length(k)
k
x<-mtcars
x

sprintf("%s is %f feet tall","rahul",5.11)#returns a character vector containing a formatted combination

#Vectors in R
#Basic type of R object is a vector #empty vectors can be created with vector() function, A vector can contain objects of same type/class
#Note : List is a vector which can contain objects of different classes
#R objects
#1. vectors is a sequence of data elements of same basic types
#we use c() function to declare a vector
v1<-c(1,2,3,4,5)
v2<-c('red','green','yellow')
print(v1)
print(v2)
class(v2)
class(v1)

#Inf represents infinity
1/Inf
#NAN: missing value 

a<-1 # numeric object
a<-1L #integer object
b<-1
class(b)
c<-2L
class(c)

v1<- c(1,2,3,4,5)
print(v1)      

#Creating vectors 
#The c() function can be used to create vectors of objects by concatenating things together
x<-c(0.5,0.7) #numeric
class(x)
x
y<-c(TRUE,FALSE) #LOGICAL
y
z<-c(T,F)# for TRUE we can use T and for FALSE we can use F
z
n<-1+2i
n
class(n)
typeof(n)

#use the vector() function to initialize the vectors
x<- vector("numeric",length=10)
x

#create a vector of numbers 
numbers=c(1,2,3,4,5)
numbers
print(numbers)

#create a vector of letters
letters=c('a','b','c','d','e')
letters

#create a mixed vector/concatenate the above two vectors
mixed_vectors=c(numbers,letters) # has coerced the numbers to character
print(mixed_vectors)
class(mixed_vectors)

# data types of different vectors can be returned by the function class.
# it is common to use the class function to "interrogate" an object, asking him what his class is.

num=c(1:10)
num

### one dimensional objects
# integer vector
num = 1:10
class(num)
num

# numeric vector
num=c(1:10,10.5)
class(num)
num

#character vector 
letters=letters[1:10]
letters
class(letters)

# factor vector
fac = as.factor(letters)
fac
class(fac)

#for 2 dimensional  objects we will refer matrix.R
# mixing objects 
#there are occasions when objects of different class mix together. this may happen ocassionally or intentionally.
y<-c(1.7,"a") ##character 
y
class(y)

y<-c(TRUE, 2) ##numeric
y
class(y)

y<-c("a",TRUE)
y
class(y)
#we are mixing objects of different classes together in the vector, but for vectors this is not allowed.
#when different objects are mixed in a vector then coercion occurs so that every element in the vector is of the same class
#above we just saw the effect of implicit coercion. what R tries to do is find a way to represent all the objects in the vector
#in a reasonable fashion

#explicit coercion 
x<-0.6
class(x)
as.numeric(x)
as.logical(x)
as.character(x)

#if R cannot figure out how to coerce the object, this can result in NAs being produced 
x<-c("a","b","c")
x
class(x)
as.numeric(x)
as.logical(x)
as.complex(x)

#Attributes
#R objects have attributes(metadata for objects)
# examples for attributes for objects in R are(names,dimensions[matrices,arrays],class[integer,numeric]
#length and other user defined attributes/metadata
x<-1
x
#All objects need not necessarily have attributes, in this case attributes function returns NULL 
attributes(x)

#LIST-it is a generic vector that can contain object of different types
#we use list() function to create a dataframe
list_1<-list(x=c(10,20,30),y=c("h","j","k"),z=c(TRUE,FALSE))
list_1
print(list_1)

test<-c("music","tracks",100,5)
test
class(test)
list_test<-list("music tracks",100,5)
print(list_test)

#in order to check whether test is a list or not
is.list(list_test)

#providing names to the list
test<-list(c("music tracks", 100,5))
test
names(test)<-c("product","count","rating")
names
test

#we can access elements from the list using  double square brackets and indices
test[[2]]
test[[3]]

#another way of providing names to the list
prod.category<-list(product="music tracks",count=100,rating=5)
prod.category

#for a compactly displayed structure we can make use of the string function
# basically if we use the string function the naming further becomes compact
str(prod.category)

#we can have a list within a list
similar.prod<-list(product="film",count="10",rating=4)
similar.prod

prod.category<-list(product="music tracks",count=100,rating=5, similar <- similar.prod)
print(prod.category)

prod.category[[4]]
#we can access the elements by the names of the columns or the headings
prod.category[["product"]]
#there is still one more way to access the values
prod.category[c(FALSE,TRUE,FALSE,TRUE)]

#there is still one more way of getting the values in the list that is by using the dollar sign
prod.category$product
prod.category$count

#matrix-collection of data elements arranged in a two dimensional recatngular layout
#we use the matrix() function for the generation of a matrix
m1<-matrix(1:6,nrow=2)#R is really intelligent, it takes rows and coloumn so as to adjust the values
m1
#say you want your matrix to have the elements arranged in order but row wise first
m2<-matrix(1:6,nrow=2,byrow = TRUE)
m2
#just compare m1 with m2 and see the difference

#when we pass a vector to a matrix and the vector is too short to fill the matrix
matrix(1:3,nrow=2,ncol=3)#we have 3 elements and we have 6 spaces so it can filled by R
matrix(1:4,nrow=3,ncol=3)#we have 4 elements and then we have 9 spaces to filled and this generates a warning message
#to solve the above error we use rbind and cbind provided by R
cbind(1:3)
cbind(1:3,1:3)
cbind(1:3,1:3,1:3)
rbind(1:3)
rbind(1:3,1:3)
rbind(1:3,1:3,1:3)

m3<-matrix(1:6,byrow=TRUE,nrow=3)
m3
rbind(m3,7:8)
rbind(m3,10:11)
#basically rbind can be used to add values to the already existing matrices

#simply speaking we can use the rbind and cbind in order to append(add) values to the already existing matrix
m4<-matrix(1:9,byrow=TRUE,nrow=3)
m4
cbind(m4,10:12)
#or
m4
cbind(m4,c(10,11,12))
#passing row names in matrices
rownames(m4)<-c("row1","row2","row3")
m4
colnames(m4)<-c("col1","col2","col3")
m4
dimnames<-list(c("row1","row2"),c("col1","col2","col3"))
dimnames
#a matrice of letters
# we can also bind two matrices
m5<-matrix(LETTERS[1:6],nrow=3,ncol=2)
m5
cbind(m4,m5)

#data frames - a data frame is used to store the data in the form of table.
#data frame is a list containing vectors of same length
BMI<-data.frame(name=c("ram","sohan","sana"),gender=c("male","male","female"),height=c(123,134,134))
BMI
#or we can create the data frame in one more way that we can create the individual vectors separately and then we can create the data frame
name=c("ram","sohan","sana")
gender=c("male","male","female")
height=c(123,134,134)
BMI<-data.frame(name,gender,height)
BMI
str(BMI)

#name is the factor and not the character. we can use the  property called as string equals false in order to suprress this property
BMI<-data.frame(name,gender,height,stringAsFactors=FALSE)
BMI
str(BMI)

#creating subsets and extend data sets in R
BMI
BMI[[3,"name"]]
BMI[[2,"height"]]
BMI[2,]
BMI[2,"height"]

BMI["gender"]
BMI[c(3),c("name","height")]
BMI$height
BMI["name"]
BMI[["name"]]

#adding one new coloumn to our dataframe
BMI
age<-c(23,25,28)
BMI$age<-age
BMI
#we can use cbind function to add new column also
cbind(BMI,age)
name<-"rohit"
gender<-"male"
height<-129
age<-30
stringAsFactors<-FALSE
new<-data.frame(name,gender,height,stringAsFactors=FALSE,age)
new
rbind(BMI,new)

#sorting the dataframe
sort(BMI$age)
#more clearer way of sorting
ranks<-order(BMI$age)
ranks
ranks<-order(BMI$height)
ranks#there is doubt here as sorting is happening only for thee first three coloumns 
BMI[ranks,]#here we also observe that rohit is still not part of the dataframe
BMI[order(BMI$age,decreasing=TRUE),]

#in coersion character is always takes precedence

#how to create a vector which has the odd values from 1 to 20
odd_value<-seq(1,20,2)
odd_value
even_value<-seq(2,20,2)
even_value

#create vector with 10 odd values starting from 20
vec_10<-seq(from=21,by=2,length.out=10)
vec_10

#naming your vector by using the names() function
temperature=c(30,20,67,40,60,80,78)
temperature
names(temperature)<-c("Mon","Tues","Wed","Thurs","Fri","Sat","Sun")
temperature

#another way to name our vectors
temperature=c(30,20,67,40,60,80,78)
days<-c("Mon","Tues","Wed","Thurs","Fri","Sat","Sun")
names(temperature)<-days
temperature

#one more way to name the vectors
price<-seq(100,220,20)
names(price)<paste0("p",1:7)
price

#truncation usually rounds up the value towards zero
trunc(2.5)

#accessing elements in R 
x<-c(1,2,3,4,5)
x[1]
x[-1]
x[1]<-2
x
x[-1]<-3
x
x<3
x[x<4]<-8
x
df<-data.frame(x=1:3,y=c("a","b","c"))
df
df[2,1]
df[1,1]
df[c(1,3),2]
df[c(1,3),c(1,2)]

#importing library in R 
library(dplyr)

#importing datsets in R
airquality<-datasets::airquality
airquality
#we want to see the first 10 rows of the airquality dataset
airquality[c(1:10),]
#or we can write
head(airquality,10)
#for the last 10 rows we have 
tail(airquality,10)
airquality[1,]
df<-airquality[-6]

#getting the summary of the dataset Airquality
summary(airquality[,1])

airquality$Wind
summary(airquality)

#####################
#now we try to vizualize the dataset airquality
plot(airquality$Ozone)
#let us compare one parameter with the other
plot(airquality$Temp,airquality$Wind,type="p")#here the type "p" shows the circles used in the plots,if we use type "l" then we have the plot in terms of lines
plot(airquality$Temp,airquality$Wind,type="l")#l stands for lines 
plot(airquality$Temp,airquality$Wind,type="b")
#we can also plot the entire dataset
plot(airquality)

#we can also change the name of the axes in the r software 
plot(airquality$Temp,xlab="Temperature",ylab = "No. of instances",main="Temperature in NY city",col="blue")

#we can also have the horizontal barplot using the barplot function
barplot(airquality$Wind,xlab = "Temperature",ylab = "No. of instances",main="Temperature in NY city",col="blue")

#we can also plot the histogram
hist(airquality$Temp)
hist(airquality$Temp,xlab = "solar radiation",main = "Solar radiation values in air")

#for finding the outliers we can plot the single box plot
boxplot(airquality$Wind,main="Box plot")

#we can also plot the boxplot for all the variables
boxplot(airquality[,1:4],main="Boxplot")

#multiple boxplots
#lets say that we want to fix more than one boxplot in  a single window by dividing the window into three rows and three coloumns
#margin of the grid(mar)
#no of rows and coloumns (mfrow)
#whether a border is to be included(bty)
#and position of the 
#labels(las:1 for horizontal,las: 0 for vertical)
#bty- box around the plot
par(mfrow=c(3,3),mar=c(2,5,2,1),las = 0, bty= "o")#mar stands for margin, las stands for the axis values whether it should be horizontal or vertical
plot(airquality$Ozone)
plot(airquality$Ozone,airquality$Wind)
plot(airquality$Ozone,type="l")
plot(airquality$Ozone,type='l')
barplot(airquality$Ozone,main="Ozone Concentration", xlab='Ozone levels',col='green',horiz= TRUE )
hist(airquality$Solar.R)
boxplot(airquality$Solar.R)
boxplot(airquality[,0:4],main='Multiple Box Plot')
