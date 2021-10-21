# Lista de números ampliada

Neste desafio o código implementado recebe uma lista de números
iniciais que deve ser ampliada uma rodada de cada vez, de acordo
com determinadas regras. Considere a seguinte lista de valores
iniciais `[0, 1, 2]`:

- **Rodada 1**: `0`
- **Rodada 2**: `1`
- **Rodada 3**: `2`
- **Rodada 4**: como o último valor foi o `2` e foi a primeira vez que ele
apareceu, na **rodada 4** o número deve ser `0`.
- **Rodada 5**: como o último valor foi `0` e ele já apareceu antes (na **rodada 1**),
o valor da **rodada 5** deve ser a subtração da última rodada menos a rodada
anterior em que `0` apareceu, ou seja, `4 - 1 = 3`.
- **Rodada 6**: como o último valor foi o `3` e foi a primeira vez que ele
apareceu, o valor da **rodada 6** é `0`.
- **Rodada 7**: como o último valor foi `0` e ele apareceu nas **rodadas 6 e 4**, o valor
da **rodada 7** é `6 - 4 = 2`.

E assim por diante. Note que esse processo poderia se repetir indefinidamente.

Depois das 7 rodadas a lista está na seguinte situação:

```
[0, 1, 2, 0, 3, 0, 2]
```

Nessa rodada, a soma dos valores dessa lista é igual a 8.

Para concluir esse desafio você deve implementar um código que recebe uma
coleção com listas de números iniciais (`list`) e um valor alvo (`target_sum`).
Por exemplo:

```
list = ['A:0-1-2',
        'B:1-2-1']

target_sum = 6
```

Cada lista deve ser ampliada até que a soma de seus elementos chegue a ficar **igual ou maior**
que determinado valor alvo, neste caso o valor é 6. O código deve avaliar entre as
listas qual delas chega mais rápido ao valor alvo. Neste exemplo a lista `B`
chega a soma 6 na rodada 4, em que ela se encontra assim: `1-2-1-2`. Enquanto a
lista `A`, chega nesse valor na rodada 5 com `0-1-2-0-3`. Por isso, o código deve
retornar:

```
'B:1-2-1-2'
```
