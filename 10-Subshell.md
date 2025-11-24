Un subshell és una instància secundària d'un shell que s'executa com un procés fill del shell actual. A Bash, i en altres shells de Unix o Linux, els subshells són utilitzats per aïllar l'execució de comandaments o grups de comandaments, de manera que els canvis en l'entorn, com les assignacions de variables o canvis de directori, no afecten l'entorn del shell pare.

### Creació de Subshells

Hi ha diverses maneres de crear subshells en Bash:

1. **Utilitzant Parèntesis**: Quan s'encapsulen comandaments entre parèntesis `(...)`, Bash executa aquests comandaments en un subshell. Per exemple:
    
``` bash
(cd ~/Documents; ls)
```

Aquest exemple canvia el directori a `~/Documents` i executa `ls` dins d'un subshell. El canvi de directori no afecta el directori de treball del shell pare.

2.  **En la Redirecció de Pipes**: Quan s'utilitzen pipes `|` per passar la sortida d'un comandament com a entrada a un altre, cada comandament de la cadena de pipes s'executa en el seu propi subshell. Per exemple:

``` bash
echo "Hola, mon" | tr '[:lower:]' '[:upper:]'
```
  Aquí, tant `echo` com `tr` s'executen en subshells separats. 

2. **A l'Execució de Scripts**: Quan s'executa un script de Bash, aquest s'executa en un subshell. Els canvis en l'entorn realitzats per l'script no afecten el shell des del qual l'script és cridat.    

### Característiques dels Subshells

- **Aïllament d'Entorn**: Els canvis en l'entorn d'un subshell, com les assignacions de variables o canvis de directori, no es propaguen al shell pare o a altres subshells.
    
- **Cost de Rendiment**: Crear subshells pot tenir un impacte en el rendiment, ja que cada subshell és un procés nou amb el seu propi espai d'adreces.
    
- **Comunicació entre Shell Pare i Subshell**: Encara que els canvis d'entorn no es propaguen enrere, la sortida estàndard, l'entrada estàndard, i la sortida d'error estàndard poden ser utilitzades per comunicar-se entre el shell pare i els subshells. A més, el shell pare pot obtenir l'estat de sortida dels subshells.    

### Exemples d'Ús

Els subshells són útils en moltes situacions, incloent:

- **Execució d'una seqüència de comandaments sense afectar l'entorn actual**.
- **Processament paral·lel de dades utilitzant pipes**.
- **Escriptura de scripts que realitzen canvis temporals en l'entorn sense afectar el shell pare o altres processos**.
