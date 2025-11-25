#!/bin/bash

echo "Pid: " $$
(cd ~/Documents; ls; echo "PID hijo: "$$)

echo "Hola, mon" | tr '[:lower:]' '[:upper:]' | echo $$
