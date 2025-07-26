
# Importar e visualizar dados
dados <- read.csv("dados.csv")
head(dados)
summary(dados)
str(dados)

# Limpar dados
dados <- na.omit(dados)

# Estatísticas básicas
mean(dados$idade)
median(dados$idade)

# Gráfico de dispersão
plot(dados$idade, dados$salario, main="Idade vs Salário", xlab="Idade", ylab="Salário", pch=19, col="blue")

# Correlação
cor(dados$idade, dados$salario)

# Regressão linear
modelo <- lm(salario ~ idade + experiencia, data=dados)
summary(modelo)
