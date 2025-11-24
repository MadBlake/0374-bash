
Per realitzar operacions matemàtiques en Bash, es poden utilitzar diverses tècniques, incloent l'ús de l'ordre `expr`, la construcció `$((expressió))`, i utilitzar eines externes com `bc` per a operacions més complexes. Vegem com funcionen aquestes tècniques:

### 1. Utilitzant `expr`

L'ordre `expr` permet realitzar operacions matemàtiques bàsiques com la suma, resta, multiplicació, i divisió. Cal tenir en compte que amb `expr`, els operadors i operands han d'estar separats per espais, i la multiplicació ha de ser escapada per evitar que sigui interpretada com un comodí pel shell.

``` bash
suma=$(expr 3 + 5) 
echo "La suma és: $suma"  
producte=$(expr 4 \* 6) 
echo "El producte és: $producte"`
```
### 2. Utilitzant `$((expressió))`

La sintaxi `$((expressió))` és més flexible i fàcil d'utilitzar per a realitzar operacions matemàtiques dins de scripts de Bash. No necessita espais entre els operadors i els operands, i no cal escapar el símbol de multiplicació.

``` bash

suma=$((3 + 5)) 
echo "La suma és: $suma"  
producte=$((4 * 6)) 
echo "El producte és: $producte"
```
Aquesta és la manera recomanada per realitzar càlculs matemàtics simples directament en Bash, ja que és més neta i menys propensa a errors que utilitzar `expr`.

### 3. Utilitzant `bc` per a Operacions Més Complexes

Per a operacions matemàtiques més complexes, com ara les que involucren nombres amb coma flotant o funcions matemàtiques avançades (ex: exponenciació, logaritmes, etc.), es pot utilitzar l'eina de línia de comandes `bc`. `bc` és una calculadora de precisió arbitrària que suporta tant aritmètica entera com de coma flotant.

``` bash
resultat=$(echo "scale=2; 3.1416 * 2.5^2" | bc) echo "El resultat és: $resultat"
```
En aquest exemple, `scale=2` defineix el nombre de decimals a mostrar, i l'expressió calcula l'àrea d'un cercle amb radi 2.5 usant π ≈ 3.1416. La sortida és redirigida a `bc`, que retorna el resultat de l'operació.

### Consells:

- **Per a operacions simples** (suma, resta, multiplicació, divisió), l'ús de `$((expressió))` és suficient i convenient.
- **Per a operacions que requereixen nombres amb coma flotant** o funcions matemàtiques més complexes, `bc` és una eina molt potent.
- Tingueu en compte que `bc` no està habilitat per defecte en tots els entorns, però es pot instal·lar fàcilment a través del gestor de paquets del vostre sistema.