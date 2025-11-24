Les variables en els scripts de Bash són espais de noms que emmagatzemen informació que pot variar durant l'execució del script. Aquesta informació pot ser un nombre, un text, una llista de valors, o fins i tot la sortida d'una ordre. Les variables permeten als scripts ser més dinàmics i flexibles, facilitant la reutilització de codi i la realització de tasques complexes de forma més senzilla.

### Definició de Variables

Per definir una variable a Bash, simplement assignem un valor a un nom de variable sense espais. Per exemple:

```bash
nom="El meu nom"

echo $nom
```

Per accedir al valor emmagatzemat en una variable, fem servir el símbol del dòlar (`$`) seguit del nom de la variable.
Aquesta línia crea una variable anomenada nom i li assigna el valor El meu nom. És important no posar espais al voltant de l'igual (=), ja que Bash els interpretaria com a arguments separats.

### Variables Especials

Bash també disposa de variables especials predefinides que tenen significats específics. Algunes d'aquestes inclouen:

- `$?`: L'estat de sortida de l'última ordre executada. Un valor de `0` indica èxit, mentre que un valor diferent de `0` indica un error.
- `$$`: El PID (identificador de procés) de l'script que s'està executant.
- `$#`: El nombre de paràmetres passats a l'script.
- `$*` i `$@`: Tots els paràmetres passats a l'script. `$*` tracta tots els paràmetres com una sola cadena, mentre que `$@` els tracta com a cadenes separades.
- `$n`: Representa el paràmetre posicional n-èssim passat a l'script, on `n` és un nombre. Per exemple, `$1` és el primer paràmetre, `$2` el segon, etc.
### Modificació de Variables

Les variables poden ser modificades simplement reassignant-los un nou valor. També podem modificar-les utilitzant operadors o altres variables. Per exemple:

``` bash
contador=1 
contador=$(($contador + 1)) 
echo $contador
```

Aquest script incrementa el valor de `contador` en 1, resultant en un valor final de `2`.


