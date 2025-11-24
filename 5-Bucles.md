Els bucles són estructures de control que repeteixen un bloc de comandaments diverses vegades fins que una condició especificada es compleix (o deixa de complir-se). Bash suporta diversos tipus de bucles, incloent `for`, `while`, i `until`. 

## Bucle `for`

El bucle `for` repeteix un bloc de comandaments per a cada element en una llista o rang especificat.

**Sintaxi:**

```bash 
for variable in llista
do
    comandaments
done
```

Per exemple:

``` bash
for i in 1 2 3 4 5
do
    echo "Iteració número $i"
done
```

També es pot utilitzar amb la sintaxi de C:

``` bash 
for (( i=1; i<=5; i++ ))
do
    echo "Iteració número $i"
done
```

## Bucle `while`

El bucle `while` executa un bloc de comandaments mentre la condició especificada és certa.

**Sintaxi:**

``` bash
while [ condició ]
do
    comandaments
done
```

**Exemple:**

``` bash
i=1
while [ $i -le 5 ]
do
    echo "Iteració número $i"
    i=$((i + 1))
done
```

## Bucle `until`

El bucle `until` és similar al bucle `while`, però el bloc de comandaments s'executa fins que la condició esdevé certa (és a dir, continua mentre la condició és falsa).

**Sintaxi:**

``` bash
until [ condició ]
do
    comandaments
done
```

**Exemple:**

``` bash
i=1
until [ $i -gt 5 ]
do
    echo "Iteració número $i"
    i=$((i + 1))
done
```

## Controlar els Bucles

Bash proporciona dues ordres per al control de flux dins dels bucles: `break` i `continue`. `break` s'utilitza per sortir del bucle completament, mentre que `continue` salta a la següent iteració del bucle, ometent qualsevol comandament que quedi per executar en l'iteració actual.

**Exemple amb `break`:**

``` bash
for i in 1 2 3 4 5
do
    if [ $i -eq 3 ]; then
        break # Sorteix del bucle quan i és 3
    fi
    echo "Iteració número $i"
done
```

**Exemple amb `continue`:**

``` bash
for i in 1 2 3 4 5
do
    if [ $i -eq 3 ]; then
        continue # Salta aquesta iteració quan i és 3
    fi
    echo "Iteració número $i"
done
```
