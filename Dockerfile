# Usando a imagem base do RAPIDS
FROM rapidsai/rapidsai:23.02-cuda11.8-runtime-ubuntu22.04-py3.8

# Definindo o diretório de trabalho dentro do contêiner
WORKDIR /rapids/notebooks/projeto_financeiro_IA

# Copiando os arquivos do projeto para o contêiner
COPY . /rapids/notebooks/projeto_financeiro_IA

# Expondo a porta do JupyterLab
EXPOSE 8888

# Comando para iniciar o JupyterLab ao iniciar o contêiner
CMD ["jupyter", "lab", "--ip=0.0.0.0", "--port=8888", "--no-browser", "--allow-root"]
