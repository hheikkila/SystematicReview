install.packages("readxl")
library(readxl)
xlsx_sreview1 <- read_excel("MedlineQuerrySysRevAdapted1108 (1).xlsx")
summary(xlsx_sreview1)
install.packages("dplyr")

head(xlsx_sreview1)

# of articles per presented Journals
xlsx_sreview1 %>%
group_by (journal)%>%
  summarize(count=n(1))

# of articles per published year
# of articles per substance of choice


# loading our packages
library(tidyverse)
library(readxl)

#loading data
xlsx_sreview1 <- read_excel("MedlineQuerrySysRevAdapted1108 (1).xlsx")

#looking at data
head(xlsx_sreview1)

`# plotting how  many articles per journal
ggplot(data = xlsx_sreview1, aes(x = `Journal Name`, fill = `Journal Name`)) +
  geom_histogram(stat = "count")

# plotting how many articles per year
xlsx_sreview1$`Year of Publication` = as.factor(xlsx_sreview1$`Year of Publication`)

ggplot(data = xlsx_sreview1, aes(x = `Year of Publication`)) +
  geom_histogram(stat = "count")

# plotting how many articles per drug

xlsx_sreview1$`Substance of Choice` = as.factor(xlsx_sreview1$`Substance of Choice`)

ggplot(data = xlsx_sreview1, aes(x = `Substance of Choice`, fill = `Substance of Choice`)) +
  geom_histogram(stat = "count")

