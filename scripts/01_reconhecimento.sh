#!/bin/bash
echo "[+] Iniciando reconhecimento do alvo..."
TARGET="192.168.1.18"

echo "[+] Testando conectividade..."
ping -c 3 $TARGET

echo "[+] Varredura de portas e serviços..."
nmap -sV -p 21,22,80,445,139 $TARGET

echo "[+] Reconhecimento concluído!"
