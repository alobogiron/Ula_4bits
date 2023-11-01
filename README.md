# Ula_4bits
## O grupo é composto pelos integrantes: André Giron e Ruth Menezes.

O arquivo que realiza a junção de todos os componentes é o main.vhd, logo ele deve ser utilizado para a construção do aplicativo. Não foi possível realizar o upload do projeto todo, houve algum problema com o simulador que estava nos gerando um arquivo de 8Gigabytes, logo decidimos realizar o upload apenas dos módulos. Para testar, basta importar os módulos utilizando "Add Source" a estrutura dos componentes é automaticamente assimilada. Bons estudos!

Obs: Caso haja realmente a necessidade, o arquivo .zip é a última versão condensada do projeto (a qual foi utilizada no computador do laboratório, para os testes), é necessário trocar o clock de 4x10⁷ para 1x10⁸, para que as operações sejam mais perceptíveis.

Obs²: Como acordado em sala, o presente projeto considera que todos os operadore são positivos, ou seja, que o bit de sinal dos mesmos é zero. Por este motivo todas as operações tratam apenas de 3bits, mas de maneira fictícia, é uma ula de 4bits, que só atua com números positivos.

## Operações
|Seletor| Operação|
|---|---|
| `000` | Soma |
| `001` | Substração_2 |
| `010` | Complemento_2|
| `011` | Incremento|
| `100` | Troca de sinal|
| `101` | Shift |
| `110` | Dobrar |
| `111` | Comparar |

## Significados do Array de flags
|Endereço| Significado|
|---|---|
| `0` | Zero |
| `1` | Sinal |
| `2` | Carry out |
| `3` | Overflow |
