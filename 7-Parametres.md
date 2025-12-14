## Scripts amb paràmetres

Per obtenir els paràmetres passats a un script Bash en variables, es poden utilitzar les variables posicionals `$1`, `$2`, `$3`, etc. Cada una d'aquestes variables conté el valor del paràmetre corresponent a la seva posició en la línia de comandes quan s'executa l'script. El primer paràmetre passat a l'script es troba a `$1`, el segon a `$2`, i així successivament.

## Exemple Bàsic

Suposem que tenim un script anomenat `saluda.sh` que vol imprimir un missatge de salutació personalitzat. El script podria ser així:

``` bash
#!/bin/bash  
# Assignem els paràmetres a variables per a una millor llegibilitat 
nom=$1
cognom=$2
echo "Hola, $nom $cognom!"
```

Si executem aquest script des de la línia de comandes passant dos paràmetres, així:

``` bash
./saluda.sh Nom Cognom
```

L'script imprimirà: `Hola, Nom Cognom`

## Utilitzar Tots els Paràmetres

Si volem utilitzar tots els paràmetres passats a l'script sense haver d'assignar-los individualment a variables, podem fer servir `$@` o `$*`. Aquestes variables especials representen tots els paràmetres passats a l'script. La diferència entre elles és en com tracten els paràmetres quan són citats.

Per exemple, si volem imprimir tots els paràmetres en línia:

``` bash
#!/bin/bash  
echo "Paràmetres: $@"
```

O si volem iterar sobre tots els paràmetres i imprimir-los un per un:

``` bash
#!/bin/bash  

for param in "$@" do
	echo "Paràmetre: $param" 
done
```
## Variables Especials Relacionades amb els Paràmetres

- `$#`: Conté el nombre total de paràmetres passats a l'script.
- `$*`: Tots els paràmetres passats a l'script com una única cadena.
- `$@`: Tots els paràmetres passats a l'script com a cadenes separades, més útil quan es volen tractar els paràmetres individualment dins d'un bucle `for`, especialment quan els paràmetres poden tenir espais.

## Exemple d'Ús de `$#`

Aquest exemple mostra com utilitzar `$#` per comprovar si s'han passat el nombre correcte de paràmetres a l'script:

``` bash
if [ $# -lt 2 ]; then     
	echo "Cal posar els parametres: $0 nom cognom"     
	exit 1 
fi  
nom=$1
cognom=$2

echo "Hola, $nom $cognom!"
```

Aquest script comprova si s'han passat almenys dos paràmetres. Si no és així, imprimeix un missatge d'ús i finalitza amb un estat de sortida d'error.

Fer servir variables posicionals i especials relacionades amb els paràmetres facilita la creació de scripts Bash flexibles i interactius que poden adaptar-se a diferents entrades d'usuari.

## Demanar dades

Per a demanar dades a l'usuari en un script de Bash, pots utilitzar l'ordre `read`. Aquesta ordre llegeix una línia d'entrada (normalment des del teclat) i assigna el valor llegit a una o més variables. Aquí tens un exemple bàsic del seu ús:

``` bash
echo "Com et dius?"
read nom
echo "Hola, $nom!"
```

En aquest exemple, el script demana a l'usuari que introdueixi el seu nom. L'ordre `read nom` llegeix l'entrada i l'assigna a la variable `nom`. Després, el script utilitza `echo` per imprimir un missatge de salutació que inclou el nom introduït per l'usuari.

### Llegir Múltiples Dades

`read` també pot assignar l'entrada llegida a múltiples variables. Si l'usuari introdueix diverses paraules separades per espais, cada paraula es pot assignar a una variable diferent. Per exemple:

``` bash
echo "Introdueix el teu nom i cognom"
read nom cognom
echo "Hola, $nom $cognom!"
```

Si l'usuari introdueix "Alvaro Owen", l'script imprimirà "Hola, Alvaro Owen!".

### Opcions Útils de `read`

- `-p`: Permet especificar un missatge de prompt directament com a part de l'ordre `read`, eliminant la necessitat d'un `echo` separat per a demanar l'entrada. Per exemple:

```bash
read -p "Com et dius? " nom
echo "Hola, $nom!"
```

- `-s`: Fa que l'entrada sigui silenciosa, cosa que és útil per a demanar contrasenyes o altres dades sensibles, ja que no es mostraran els caràcters que l'usuari introdueix. Per exemple:

```bash
read -s -p "Introdueix la teva contrasenya: " contrasenya
echo
echo "Contrasenya introduïda."
```

**Recordeu afegir un `echo` buit després de `read -s` per assegurar-vos que la següent línia de sortida comenci en una nova línia, ja que `-s` impedeix l'eco automàtic de la nova línia després de l'entrada.**
