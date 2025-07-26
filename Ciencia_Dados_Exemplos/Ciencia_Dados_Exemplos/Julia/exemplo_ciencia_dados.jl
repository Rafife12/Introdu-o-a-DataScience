
using CSV, DataFrames, StatsPlots, GLM

dados = CSV.read("dados.csv", DataFrame)
first(dados, 5)
describe(dados)

# Limpar dados
dropmissing!(dados)

# Estatísticas básicas
mean(dados.idade)
median(dados.idade)

# Gráfico de dispersão
scatter(dados.idade, dados.salario, xlabel="Idade", ylabel="Salário", title="Idade vs Salário")

# Correlação
cor(dados.idade, dados.salario)

# Regressão linear
modelo = lm(@formula(salario ~ idade + experiencia), dados)
coef(modelo)
