# Ula_4bits
## O grupo é composto pelos integrantes: André Giron e Ruth Menezes.

O arquivo que realiza a junção de todos os componentes é o main.vhd, logo ele deve ser utilizado para a construção do aplicativo. Não foi possível realizar o upload do projeto todo, houve algum problema com o simulador que estava nos gerando um arquivo de 8Gigabytes, logo decidimos realizar o upload apenas dos módulos. Para testar, basta importar os módulos utilizando "Add Source" a estrutura dos componentes é automaticamente assimilada. Bons estudos!

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
