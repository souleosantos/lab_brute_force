# Metasploitable2 Pentest

Estrutura de exemplo com scripts, wordlists, configs e imagens. **Apenas para fins educacionais**.

## Evidências (screenshots)

As imagens abaixo são evidências das explorações e do ambiente (Kali + Metasploitable2). Suba este repositório no GitHub e as imagens estarão em `images/`.

![ftp_login](images/ftp_login.png)

![dvwa_login](images/dvwa_login.png)

![dvwa_home](images/dvwa_home.png)

![smb_shares](images/smb_shares.png)

---

## Aviso Legal / Uso Responsável

Este repositório contém scripts e procedimentos para avaliar a segurança de sistemas (pentest). **Use apenas em ambientes controlados e com autorização explícita do proprietário do sistema**. A execução destes scripts em redes públicas ou em sistemas sem permissão constitui atividade ilegal em muitas jurisdições.

O autor não se responsabiliza por qualquer uso indevido deste material. Ao usar este repositório, você concorda em obedecer às leis aplicáveis e obter permissão prévia.

---

## Como usar

Clone o repositório:
```bash
git clone <url-do-repositorio>
cd metasploitable2-pentest
```

Execute todos os ataques (apenas em ambiente controlado, para fins educacionais):
```bash
cd scripts
./run_all.sh
```

---

## Estrutura
- `scripts/` - scripts de automação
- `wordlists/` - listas de usuário/senhas
- `configs/` - configuração do alvo
- `images/` - screenshots e evidências
- `.gitignore` - arquivos ignorados ao subir no GitHub
- `LICENSE` - licença MIT
