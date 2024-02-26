# 3.1. importe as funções de funcoes.sh dentro do executar.sh;


source funcoes.sh

diretorio=$1
texto=$2

if [ $# -ne 2 ]; then
    echo "Uso: $0 <diretório> <texto>"
    exit 1
fi

if [ ! -d "$diretorio" ]; then
    echo "Diretório não encontrado."
    exit 1
fi
# 3.2. utilize a função lista_arquivos para listar e armazenar em um vetor todos os arquivos do diretório
# que o executar.sh recebeu por parâmetro;

lista_arquivos "$diretorio"

# 3.3. por fim, itere sobre o vetor de diretórios, 
# chame a função insere_texto e escreva no final destes arquivos a mensagem passada por parâmetro.
for arquivo in "${arquivos[@]}"; do
    insere_texto "$arquivo" "$texto"
done

echo "Texto inserido com sucesso nos arquivos do diretório $diretorio."
