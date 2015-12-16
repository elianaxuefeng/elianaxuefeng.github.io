require ("ggplot2")
require ("plyr")
require ("dplyr")
require ("tidyr")

dating <- read.csv("dating.csv")
dating <- select (dating,psraid:q1,act21:q10a,smart1:q11f,mar:educ2,race:lgbt)
dating <- filter (dating,date9a<3,date9b<3,date9c<3,date9d<3,lgbt<4,inc<10,race<7,educ2<9,age<97,q1<6,mar<7,intdatea<3,intdateb<3)
dating <- gather (dating,attitude,value,-(psraid:date3b),-(rel5:lgbt))
dating <- filter (dating, value == 1)
#dating$value[dating$value %in% 2] <- 0
#dating$value <- as.logical(dating$value)
View(dating) 

chart_combo <- ggplot(dating) +
  geom_boxplot(aes(x=attitude, y=age)) +
  coord_flip() 
print(chart_combo)
ggsave("combo_age.pdf")

chart_combo_income <- ggplot(dating) +
  geom_boxplot(aes(x=attitude, y=inc)) +
  coord_flip() 
print(chart_combo_income)
ggsave("combo_income.pdf")

chart_age <- ggplot (dating) + 
  geom_boxplot(aes(x=value,y=age)) + 
  facet_wrap(~attitude,ncol=2) 
print(chart_age)

chart_inc <- ggplot(dating) +
  geom_boxplot(aes(x=value,y=inc)) + 
  facet_wrap(~attitude,ncol=2)
print(chart_inc)

chart_educ2 <- ggplot(dating) +
  geom_boxplot(aes(x=value,y=educ2)) + 
  facet_wrap(~attitude,ncol=2)
print(chart_educ2)

chart_q1 <- ggplot(dating) +
geom_boxplot(aes(x=value,y=q1)) + 
facet_wrap(~attitude,ncol=2)
print(chart_q1)

#chart_mar <- ggplot(dating) +
#geom_boxplot(aes(x=value,y=mar)) + 
#facet_wrap(~attitude,ncol=2)
#print(chart_mar)



