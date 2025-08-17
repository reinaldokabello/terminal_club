---
layout: post
title: "Automatizando Backups com Bash e Cron"
date: 2025-08-16
categories: [linux, backup, automação]
---

# Automatizando Backups com Bash e Cron

Manter backups regulares é essencial para proteger seus dados contra perdas acidentais. Uma forma eficiente de fazer isso no Linux é utilizando scripts em **Bash** combinados com a automação via **cron**.

## Script de Backup

Criei um script que automatiza a criação de backups, disponível no meu repositório GitHub:  

[Visualizar script backup.sh](https://github.com/reinaldokabello/arts-scripts/blob/main/bash/backup.sh)  

> ⚠️ O link abre diretamente o arquivo no GitHub, sem precisar mover nada para o seu blog.
---
O script realiza as seguintes funções:

- Cria cópias de diretórios especificados.
- Mantém histórico de backups.
- Permite configuração de destinos diferentes (local ou remoto).
---
## Configuração

```bash

~/backup.sh
 chmod +x ~/backup.sh


## Automatização via Cron

Para executar backups automaticamente, utilize o cron. 
Exemplo de configuração para rodar diariamente às 2h da manh

```bash
crontab -e
0 2 * * * /home/seu_usuario/backup.sh >> /home/seu_usuario/backup.log 2>&1

