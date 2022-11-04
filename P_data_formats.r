n1<- 15
typeof(n1)
n1

n2<- 1.5
n2
typeof(n2)

c1<- "c"
c1
typeof(c1)

c2<- "hi I'm prachi"
c2
typeof(c2)

#Logical
l1<- TRUE
l1
typeof(l1)

l2<- F
l2
typeof(l2)

#Data Structures
v1<- c(1,2,3,4,5)
v1
is.vector(v1)

v2<- c("a","b","c")
is.vector(v2)

v3<- c(TRUE, FALSE, T, F)
is.vector(v3)

#Matrix
m1<- matrix(c(T,F,T,F,T,F,F,T), nrow= 2)
m1

m2<- matrix(c("a","b","c","d", "e", "f"), nrow= 2, byrow= T)
m2

#Array
a1<- array(c(1:24), c(4,3,2))
a1

#Data Frame
vNum<- c(1,2,3)
vChar<- c("a","b","c")
vLogical<- c(T,T,F)

dfa<- cbind(vNum, vChar, vLogical)
dfa #matrix of one data type

dfb<- as.data.frame(cbind(vNum, vChar, vLogical))
dfb #makes a df with three diff data types

#List

o1<- c(1,2,3)
o2<- c("a", "b", "c", "d")
o3<- c(T,F,T, T,F)

list1<- list(o1,o2,o3)
list1

#list within list
list2<- list(o1, o2, o3, list1)
list2

#Automatic Coercion
#goes to least restrictive data type

(coerce1<- c(1,"b", TRUe))
typeof(coerce1)
#coerce numeric to integer
(coerce2 <- 5)
typeof(coerce2)
(coerce3 <- as.integer(5))
typeof(coerce3)
(coerce4 <- c("1", "2", "3"))
typeof(coerce4)
(coerce5 <- as.integer(c("1", "2", "3")))
typeof(coerce5)
#coerce matrix to data frame
(coerce6<- matrix(1:9, nrow=3))
is.matrix(coerce6)

(coerce7<- as.data.frame(matrix(1:9, nrow=3)))
is.data.frame(coerce7)





