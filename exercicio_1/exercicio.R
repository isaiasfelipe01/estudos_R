library(readxl)
tabela <- read_excel("rosas.xlsx")
View(tabela)
names(tabela)
attach(tabela)
summary(tabela)
modelo1 <- lm(data = tabela, Y ~ X2 + X3 + X4 + X5)
modelo1
summary(modelo1)
modelo2 <- lm(data = tabela, log(Y) ~ log(X2) + log(X3) + log(X4) + X5)
modelo2
summary(modelo2)
