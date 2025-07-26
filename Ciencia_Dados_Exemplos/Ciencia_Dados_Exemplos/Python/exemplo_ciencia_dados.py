
import pandas as pd
import matplotlib.pyplot as plt
import seaborn as sns
from sklearn.linear_model import LinearRegression

# Carregar dados
dados = pd.read_csv("dados.csv")
print(dados.head())
print(dados.describe())

# Limpeza de dados
dados.dropna(inplace=True)

# Estatísticas básicas
print(dados['idade'].mean())
print(dados['idade'].median())

# Gráfico de dispersão
sns.scatterplot(x='idade', y='salario', data=dados)
plt.title("Idade vs Salário")
plt.xlabel("Idade")
plt.ylabel("Salário")
plt.show()

# Correlação
print(dados['idade'].corr(dados['salario']))

# Regressão linear
modelo = LinearRegression()
X = dados[['idade', 'experiencia']]
y = dados['salario']
modelo.fit(X, y)
print("Coeficientes:", modelo.coef_)
print("Intercepto:", modelo.intercept_)
