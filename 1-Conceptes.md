Bash, o Bourne Again SHell, és una interfície de línia de comandaments i un llenguatge de scripting utilitzat àmpliament en sistemes operatius basats en Unix com Linux i macOS. Permet automatitzar tasques repetitives, gestionar arxius i processos, i realitzar operacions complexes de manipulació de text.

## 1. Conceptes Bàsics

- **Script Bash**: És un fitxer que conté una sèrie d'ordres Bash que s'executen seqüencialment. Aquests scripts es fan servir per automatitzar processos i per realitzar tasques de manteniment o administració del sistema.
    
- **Permisos d'Execució**: Per executar un script Bash, el fitxer ha de tenir permisos d'execució. Això s'aconsegueix amb l'ordre `chmod +x nomScript.sh`.
    
- **Línia de Shebang**: Tot script de Bash comença amb la línia shebang `#!/bin/bash`, que indica al sistema que el script s'ha d'executar utilitzant Bash.
## 2. Shebang
El shebang és una seqüència de caràcters `#!` seguida del camí cap al intèrpret que s'hauria d'utilitzar per executar el script d'un fitxer. Aquesta línia es situa sempre a la primera línia d'un script i indica a l'entorn de shell amb quin intèrpret s'ha d'executar el script, sigui Bash, Python, Perl o qualsevol altre llenguatge de scripting.

### Estructura del Shebang

La estructura bàsica del shebang és la següent:

``` bash
#!camí_cap_a_l'intèrpret
```

Per exemple, en un script de Bash, el shebang seria:

```bash
#!/bin/bash
```

Això indica que el script s'ha d'executar utilitzant l'intèrpret de Bash, que sol estar ubicat en `/bin/bash` en la majoria de sistemes Unix i Linux. 

## 3. Com Fer un Script Executable


Després d'afegir el shebang al teu script, necessitaràs donar-li permisos d'execució per poder-lo executar directament des de la línia de comandes. Això es fa amb l'ordre `chmod`. Per exemple:

```bash
chmod +x nomScript.sh
```

Això atorga permisos d'execució al fitxer `nomScript.sh`, permetent executar el script com un programa.

## 4. (Streams) fluxos de dades

`stdin`, `stdout`, i `stderr` són els tres principals fluxos de dades (streams) utilitzats en els sistemes operatius Unix i Linux per a la comunicació entre programes i l'entorn que els envolta. 

### STDIN (Standard Input)

- **Identificador de Flux**: 0
- **Descripció**: `stdin`, o entrada estàndard, és el flux de dades utilitzat per a rebre l'entrada a un programa. Per defecte, `stdin` està connectat al teclat, però es pot redirigir per a llegir dades des d'un fitxer o d'un altre programa.
- **Exemple d'Ús**: Quan s'utilitza el comandament `read` en un script de Bash, per defecte, llegeix dades de `stdin`.
### STDOUT (Standard Output)

- **Identificador de Flux**: 1
- **Descripció**: `stdout`, o sortida estàndard, és el flux de dades utilitzat per a enviar l'output d'un programa. Per defecte, `stdout` està connectat a la pantalla (terminal), però es pot redirigir cap a un fitxer o cap a l'entrada (`stdin`) d'un altre programa.
- **Exemple d'Ús**: Quan un programa com `echo` imprimeix un missatge, per defecte, el fa a `stdout`.

### STDERR (Standard Error)

- **Identificador de Flux**: 2
- **Descripció**: `stderr`, o error estàndard, és un flux de dades utilitzat específicament per a enviar missatges d'error d'un programa. Per defecte, `stderr` també està connectat a la pantalla, permetent que els missatges d'error es mostrin immediatament a l'usuari, però pot ser redirigit de manera independent de `stdout`.
- **Exemple d'Ús**: Quan un programa falla a trobar un fitxer que intentava obrir, pot enviar un missatge d'error a `stderr`.

### Redirecció i Pipes

- **Redirecció**: Pots redirigir aquests fluxos utilitzant els operadors de redirecció `>`, `>>`, `<`, entre altres. Per exemple, `comandament > fitxer.txt` redirigeix `stdout` al fitxer `fitxer.txt`, sobreescribint el seu contingut.
- **Pipes**: Utilitzant el símbol `|`, pots passar `stdout` d'un programa directament com `stdin` a un altre. Per exemple, `cat fitxer.txt | grep "alguna cosa"` utilitza `stdout` de `cat` com `stdin` de `grep`.