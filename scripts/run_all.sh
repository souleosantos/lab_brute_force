#!/bin/bash
echo "=== PENTEST AUTOMATIZADO - METASPLOITABLE 2 ==="
echo "Alvo: 192.168.1.18"
echo ""

# Tornar todos os scripts executáveis
chmod +x *.sh

# Executar sequência de ataques
./01_reconhecimento.sh
echo "----------------------------------------"
./02_ftp_attack.sh
echo "----------------------------------------"
./03_web_attack.sh
echo "----------------------------------------"
./04_smb_enumeration.sh
echo "----------------------------------------"
./05_smb_attack.sh

echo "=== TODOS OS ATAQUES CONCLUÍDOS ==="
