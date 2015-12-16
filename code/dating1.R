require ("ggplot2")
require ("dplyr")
require ("tidyr")
dating <- read.csv("dating.csv")
dating <- select (dating,psraid:q1,act21:q10a,smart1:q11f,mar:educ2,race:lgbt)
dating <- filter (dating,date9a<3,date9b<3,date9c<3,date9d<3,lgbt<4,inc<10,race<7,educ2<9,age<97,q1<6,mar<7,intdatea<3,intdateb<3)
convert <- function (value){
  value[value %in% 2] <- 0
  newvalue <- as.logical(value)
  return(newvalue)
}
dating$intdateb <- convert(dating$intdateb)
dating$date1a <- convert(dating$date1a)
dating$date3b <- convert(dating$date3b)
dating$date9a <- convert(dating$date9a)
dating$date9b <- convert(dating$date9b)
dating$date9c <- convert(dating$date9c)
dating$date9d <- convert(dating$date9d)
#dating$intdateb[dating$intdateb %in% 2] <- 0
#dating$intdateb <- as.logical(dating$intdateb)
#dating$date9a[dating$date9a %in% 2] <- 0
#dating$date9a <- as.logical(dating$date9a)
#dating$date9b[dating$date9b %in% 2] <- 0
#dating$date9b <- as.logical(dating$date9b)
#dating$date9c[dating$date9c %in% 2] <- 0
#dating$date9c <- as.logical(dating$date9c)
#dating$date9d[dating$date9d %in% 2] <- 0
#dating$date9d <- as.logical(dating$date9d)
View(dating)

data9c <- group_by(dating,date1a,date9c)
data9c <- summarize(data9c,count=n()/nrow(data9c))
chart9c <- ggplot(data9c)+
  geom_tile(aes(x=date9c,y=date1a,fill=count)) +
  geom_text(aes(x=date9c,y=date1a,label=count),size=2) +
  scale_fill_gradient(low="#f0ff00",high="#ffc100")
print(chart9c)
ggsave("Dating_date9c.pdf")

data9d <- group_by(dating,date1a,date9d) 
data9d <- summarize(data9d,count=n()/nrow(data9d))
chart9d <- ggplot(data9d)+
  geom_tile(aes(x=date9d,y=date1a,fill=count))+
  geom_text(aes(x=date9d,y=date1a,label=count),size=2) +
  scale_fill_gradient(low="#f0ff00",high="#ffc100")
print(chart9d)
ggsave("Dating_date9d.pdf") 




data9a <- group_by(dating,date3b,date9a)
data9a <- summarize(data9a,count=n()/nrow(data9a))
chart9a <- ggplot(data9a)+
  geom_tile(aes(x=date9a,y=date3b,fill=count)) +
  geom_text(aes(x=date9a,y=date3b,label=count),size=2) +
  scale_fill_gradient(low="#0ff4e3",high="#02b1ce")
print(chart9a)
ggsave("Longterm_date9a.pdf")

data9b <- group_by(dating,date3b,date9b)
data9b <- summarize(data9b,count=n()/nrow(data9b))
chart9b <- ggplot(data9b)+
  geom_tile(aes(x=date9b,y=date3b,fill=count)) +
  geom_text(aes(x=date9b,y=date3b,label=count),size=2) +
  scale_fill_gradient(low="#0ff4e3",high="#02b1ce")
print(chart9b)
ggsave("Longterm_date9b.pdf")

data9c <- group_by(dating,date3b,date9c)
data9c <- summarize(data9c,count=n()/nrow(data9c))
chart9c <- ggplot(data9c)+
  geom_tile(aes(x=date9c,y=date3b,fill=count)) +
  geom_text(aes(x=date9c,y=date3b,label=count),size=2) +
  scale_fill_gradient(low="#0ff4e3",high="#02b1ce")
print(chart9c)
ggsave("Longterm_date9c.pdf")

data9d <- group_by(dating,date3b,date9d) 
data9d <- summarize(data9d,count=n()/nrow(data9d))
chart9d <- ggplot(data9d)+
  geom_tile(aes(x=date9d,y=date3b,fill=count))+
  geom_text(aes(x=date9d,y=date3b,label=count),size=2) +
  scale_fill_gradient(low="#0ff4e3",high="#02b1ce")
print(chart9d)
ggsave("Longterm_date9d.pdf")




data9a <- group_by(dating,date1a,date9a)
data9a <- summarize(data9a,count=n()/nrow(data9a))
chart9a <- ggplot(data9a)+
  geom_tile(aes(x=date9a,y=date1a,fill=count)) +
  geom_text(aes(x=date9a,y=date1a,label=count),size=2) +
  scale_fill_gradient(low="#81ffab",high="#03a075")
print(chart9a)
ggsave("Dating_date9a.pdf")

data9b <- group_by(dating,date1a,date9b)
data9b <- summarize(data9b,count=n()/nrow(data9b))
chart9b <- ggplot(data9b)+
  geom_tile(aes(x=date9b,y=date1a,fill=count)) +
  geom_text(aes(x=date9b,y=date1a,label=count),size=2) +
  scale_fill_gradient(low="#81ffab",high="#03a075")
print(chart9b)
ggsave("Dating_date9b.pdf")

data9c <- group_by(dating,date1a,date9c)
data9c <- summarize(data9c,count=n()/nrow(data9c))
chart9c <- ggplot(data9c)+
  geom_tile(aes(x=date9c,y=date1a,fill=count)) +
  geom_text(aes(x=date9c,y=date1a,label=count),size=2) +
  scale_fill_gradient(low="#f0ff00",high="#ffc100")
print(chart9c)
ggsave("Dating_date9c.pdf")

data9d <- group_by(dating,date1a,date9d) 
data9d <- summarize(data9d,count=n()/nrow(data9d))
chart9d <- ggplot(data9d)+
  geom_tile(aes(x=date9d,y=date1a,fill=count))+
  geom_text(aes(x=date9d,y=date1a,label=count),size=2) +
  scale_fill_gradient(low="#f0ff00",high="#ffc100")
print(chart9d)
ggsave("Dating_date9d.pdf")




data9a <- group_by(dating,intdateb,date9a)
data9a <- summarize(data9a,count=n()/nrow(data9a))
chart9a <- ggplot(data9a)+
  geom_tile(aes(x=date9a,y=intdateb,fill=count)) +
  geom_text(aes(x=date9a,y=intdateb,label=count),size=2) +
  scale_fill_gradient(low="#f0ff00",high="#ffc100")
print(chart9a)
ggsave("Flirting_date9a.pdf")

data9b <- group_by(dating,intdateb,date9b)
data9b <- summarize(data9b,count=n()/nrow(data9b))
chart9b <- ggplot(data9b)+
  geom_tile(aes(x=date9b,y=intdateb,fill=count)) +
  geom_text(aes(x=date9b,y=intdateb,label=count),size=2) +
  scale_fill_gradient(low="#f0ff00",high="#ffc100")
print(chart9b)
ggsave("Flirting_date9b.pdf")

data9c <- group_by(dating,intdateb,date9c)
data9c <- summarize(data9c,count=n()/nrow(data9c))
chart9c <- ggplot(data9c)+
  geom_tile(aes(x=date9c,y=intdateb,fill=count)) +
  geom_text(aes(x=date9c,y=intdateb,label=count),size=2) +
  scale_fill_gradient(low="#f0ff00",high="#ffc100")
print(chart9c)
ggsave("Flirting_date9c.pdf")

data9d <- group_by(dating,intdateb,date9d) 
data9d <- summarize(data9d,count=n()/nrow(data9d))
chart9d <- ggplot(data9d)+
  geom_tile(aes(x=date9d,y=intdateb,fill=count))+
  geom_text(aes(x=date9d,y=intdateb,label=count),size=2) +
  scale_fill_gradient(low="#f0ff00",high="#ffc100")
print(chart9d)
ggsave("Flirting_date9d.pdf")


