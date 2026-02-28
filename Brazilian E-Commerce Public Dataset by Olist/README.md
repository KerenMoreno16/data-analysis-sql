# Análise Exploratória de E-Commerce (Olist)

## Sobre o Projeto
Este projeto tem dois objetivos. O primeiro é analisar o desempenho de vendas, logística e satisfação do cliente de uma grande varejista brasileira. O segundo é analisar comentários dos clientes para entender o sentimento do cliente.
Foi utilizado SQL para extrair insights acionáveis.
E foi utilizado Natural Language Processing (NLP) e Machine Learning (ML), a fim de criar um modelo de cassificação de sentimento que categorize comentários como positivo, neutro e negativo. Isto ajuda o negócio a ganhar insights e melhorar os produtos e serviços baseados em feedback real.

## Tecnologia Usada
- **Banco de Dados:** PostgreSQL
- **Ferramenta:** DBeaver
- **Dados:** Olist E-Commerce Public Dataset (Kaggle)
- **Python:** Bibliotecas: pandas, numpy, matplotlib ,seaborn, wordcloud, xgboost)

## Instalações Necessárias no Python
- `pip install wordcloud`
- `pip install xgboost`

## Habilidades SQL Demonstradas
- **Joins Complexos**: União de mais de 5 tabelas (Pedidos, Itens, Produtos, Clientes, Reviews).
- **CTEs (Common Table Expressions):** Para modularizar a lógica de negócios e melhorar a legibilidade.
- **Window Functions & Date Manipulation:** Cálculo de atrasos e tendências temporais.
- **Tratamento de Dados:** Handling de NULLs e filtragem de outliers.

## Habilidades Python Demonstradas:
- **Visualização de Dados, Pre-processamento de Texto, Analise de Sentimento, e Machine Learning.**

## Principais Insights Encontrados
1. **Sazonalidade:** 
2. **Logística:** 
3. **Produto:** 

## Estrutura dos Arquivos
- `/sql`: Contém os scripts `.sql` organizados por ordem de execução.
- `/docs`: Contém o Diagrama ER do banco de dados.
- `/dados`: Contém as tabelas em Excel com dados exportados do Kaggle.
- `/eda`: Análise Exploratória de Dados.

## Passos feitos:
1. **Limpeza e preparação de dados do E-commerce**
2. **Tecnicas de visualização (sentiment analysis)**
3. **Configurando o dado para NLP e Machine Learning**
