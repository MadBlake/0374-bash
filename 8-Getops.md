Quan escrivim scripts en Bash, sovint necessitem gestionar arguments que l'usuari introdueix en la línia de comandes. **`getopts`** és una eina incorporada que ens permet processar arguments i opcions d’una manera eficient i estructurada.

```bash
while getopts "opciós" variable; do
    case "$variable" in
        o) # accions per l'opció 'o' ;;
        p) # accions per l'opció 'p' ;;
        s) # accions per l'opció 's' ;;
        *) # accions per a opcions no reconegudes ;;
    esac
done
```

- `"opciós"`: És una cadena que conté totes les opcions vàlides. Si una opció accepta un argument, es denota amb `:` (per exemple, `"o:p:s"` indica que `o` i `p` esperen un valor).
- `variable`: Emmagatzema l’opció processada.
- `case "$variable"`: Processa cada opció individualment.
- **Gestió d’errors**: Si l’usuari introdueix opcions no reconegudes, podem gestionar-ho amb `?`.

## **Exemple bàsic**

Suposem que volem un script que accepti les opcions `-n` (nom de l'usuari) i `-a` (edat):

```bash
#!/bin/bash
while getopts "n:a:" opt; do
    case "$opt" in
        n) nom="$OPTARG" ;;
        a) edat="$OPTARG" ;;
        ?) echo "Ús: $0 -n <nom> -a <edat>" ;;
    esac
done
echo "Nom: $nom"
echo "Edat: $edat"
```

Si executem:
```sh
./script.sh -n "Joan" -a 30
```
Obtindrem:
```sh
Nom: Joan
Edat: 30
```

## **$OPTARG**

Quan un argument requereix un valor (per exemple, un nom o un número), aquest valor es guarda automàticament a `$OPTARG`. Això succeeix quan l'opció està seguida d'un **dos punts (`:`)** en la cadena d'opcions de `getopts`.

- **Només s’usa quan una opció requereix un argument** (indicada amb `:`).  
- **No és necessari declarar `$OPTARG`**, `getopts` ja ho gestiona automàticament.  
- **Si l'usuari no proporciona un argument esperat, `getopts` pot retornar errors.**

### **Gestió d'errors**

Si volem detectar quan un argument falta, podem afegir una validació:

```sh
#!/bin/bash
while getopts "u:a:" opt; do
    case "$opt" in
        u) [[ -z "$OPTARG" ]] && echo "Falta el nom!" && exit 1
           echo "Usuari: $OPTARG" ;;
        a) [[ -z "$OPTARG" ]] && echo "Falta l'edat!" && exit 1
           echo "Edat: $OPTARG" ;;
        ?) echo "Ús: $0 -u <nom> -a <edat>" ;;
    esac
done
```

**Si executem només `-u` sense valor**:
```sh
./script.sh -u
```
**Sortida**:
```sh
Falta el nom!
```