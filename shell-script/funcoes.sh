# 2.1. desenvolva uma função chamada lista_arquivos que retorne todos os arquivos dentro de um diretório 
# (inclusive nos sub-diretórios deste diretório) e armazene o caminho completo até estes arquivos em um vetor;

lista_arquivos() {
    local diretorio=$1
    arquivos=()
    while IFS= read -r -d '' arquivo; do
        arquivos+=("$arquivo")
    done < <(find "$diretorio" -type f -print0)
}

# 2.2. desenvolva uma função chamada insere_texto que, dado o caminho completo para um arquivo,
# escreva um texto qualquer no final deste arquivo (o texto também deve ser um p).

insere_texto() {
    local arquivo=$1
    local texto=$2
    echo "$texto" >> "$arquivo"
}
