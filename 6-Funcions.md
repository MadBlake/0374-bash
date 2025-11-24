Les funcions a Bash són blocs de comandaments que es poden reutilitzar dins d'un script. Les funcions permeten organitzar el codi en unitats lògiques, facilitant la lectura, la depuració i la reutilització de codi. A més, les funcions poden rebre paràmetres i retornar un valor a través de l'estat de sortida.

## Definició de Funcions

Per definir una funció a Bash, pots utilitzar la següent sintaxi:

``` bash
nom_funcio() {
    comandaments
}
```

O bé:

``` bash
function nom_funcio {
    comandaments
}
```

### Exemple de Funció 

``` bash
saluda() {
    echo "Hola, $1"
}
```

Aquesta funció, anomenada `saluda`, imprimeix un missatge de salutació. `$1` fa referència al primer paràmetre passat a la funció quan es crida.
	
### Cridar Funcions

Per cridar una funció, simplement escriu el seu nom seguit de qualsevol paràmetre que vulguis passar-li entre parèntesis:


``` bash
saluda "Món"
```
Això imprimirà `Hola, Món`.

## Paràmetres a Funcions

Les funcions poden acceptar paràmetres que s'utilitzen dins del cos de la funció. Aquests paràmetres es refereixen dins de la funció com `$1`, `$2`, etc., similar a com es refereixen als scripts.

``` bash
suma() {
    result=$(( $1 + $2 ))
    echo $result
}

suma 3 5
```

Aquesta funció suma dos nombres passats com a paràmetres i imprimeix el resultat.

### Retornar Valors

Les funcions en Bash "retornen" un valor utilitzant l'estat de sortida. L'estat de sortida és un valor numèric entre 0 i 255, on 0 sovint indica èxit i qualsevol altre valor indica un error o un altre estat. Pots utilitzar l'ordre `return` per establir l'estat de sortida de la funció.

``` bash
comprova_fitxer() {
    if [ -f "$1" ]; then
        return 0
    else
        return 1
    fi
}

comprova_fitxer "/ruta/al/fitxer"
echo $?
```

Aquest exemple comprova si un fitxer existeix. `$?` conté l'estat de sortida de l'últim comandament executat, que en aquest cas seria el valor retornat per `comprova_fitxer`.

## Variables Locals

Per defecte, totes les variables creades dins d'una funció són globals. No obstant això, pots fer que una variable sigui local per a la funció utilitzant l'ordre `local`.

``` bash
funcio() {
    local variable_local="Sóc una variable local"
    echo $variable_local
}
```

Aquesta variable `variable_local` només serà accessible dins de la funció `funcio`.



``` bash

```