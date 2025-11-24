Quan un programa o un script en **Bash** s'executa, retorna un **codi de sortida** per indicar si l'execució ha estat correcta o si ha ocorregut un error. Aquests codis són valors numèrics i es poden utilitzar per controlar el flux del programa.

**El codi de sortida `$?`**
El codi de sortida de la comanda més recent executada es pot consultar amb la variable especial **`$?`**.
```sh
ls /etc
echo "Codi de sortida: $?"
```

Si la comanda `ls /etc` s'executa correctament, `$?` valdrà `0`.
Si intentem accedir a un directori inexistent:
```sh
ls /directori_inexistent 
echo "Codi de sortida: $?"
```
**Sortida esperada**:
```sh
ls: cannot access '/directori_inexistent': No such file or directory 
Codi de sortida: 2
```

## Significat dels codis de sortida estàndard
A continuació es mostren alguns dels codis de sortida més comuns en Bash

| Codi  | Significat                                      |
| ----- | ----------------------------------------------- |
| `0`   | Execució correcta (èxit)                        |
| `1`   | Error general o condició falsa                  |
| `2`   | Ús incorrecte d'una comanda                     |
| `126` | No es pot executar el fitxer                    |
| `127` | Comanda no trobada                              |
| `128` | Error relacionat amb la terminació d’un procés  |
| `130` | Execució interrompuda per l'usuari (`CTRL + C`) |
| `137` | Procés finalitzat amb `kill -9`                 |
| `255` | Error fora de rang (retorn d'un valor no vàlid) |

També podem definir un codi de sortida en un script utilitzant `exit <codi>`.
```sh
#!/bin/bash
echo "Executant script..."
exit 42
```

Finalment, afegint `set -e` al començament d'un script, aquest **s'aturarà immediatament** si una comanda retorna un codi de sortida diferent de `0`.
```sh
#!/bin/bash
set -e

echo "Intentant accedir a un fitxer inexistent..."
cat fitxer_inexistent.txt  # Això generarà un error i aturarà l'script

echo "Aquesta línia no s'executarà."
```
