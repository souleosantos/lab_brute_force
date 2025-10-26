#!/bin/bash
echo "[+] Iniciando enumeração SMB..."
TARGET="192.168.1.18"

echo "[+] Executando enum4linux..."
enum4linux -a $TARGET | tee smb_enum_output.txt

echo "[+] Verificando resultados..."
if [ -f smb_enum_output.txt ]; then
    echo "[+] Arquivo de saída salvo: smb_enum_output.txt"
    less smb_enum_output.txt
else
    echo "[-] Falha na enumeração SMB"
fi

echo "[+] Enumeração SMB concluída!"
