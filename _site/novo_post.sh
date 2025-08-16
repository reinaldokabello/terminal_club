#!/bin/bash
# Script turbo para criar posts no Jekyll e enviar para o GitHub automaticamente

# Caminho para a pasta do seu blog
BLOG_DIR="$HOME/desenvolvedor/terminal-club"

# Pasta de posts
POSTS_DIR="$BLOG_DIR/_posts"

# Verifica se a pasta existe
if [ ! -d "$POSTS_DIR" ]; then
    echo "❌ Pasta de posts não encontrada: $POSTS_DIR"
    exit 1
fi

# Pede o título do post
read -p "Título do post: " TITLE

# Converte título para slug (minúsculas e hífen)
SLUG=$(echo "$TITLE" | iconv -t ascii//TRANSLIT | tr '[:upper:]' '[:lower:]' | sed 's/ /-/g' | tr -cd 'a-z0-9-')

# Data de hoje
DATE=$(date +%Y-%m-%d)

# Nome do arquivo
FILENAME="$POSTS_DIR/$DATE-$SLUG.md"

# Cria o arquivo com modelo básico
cat > "$FILENAME" <<EOF
---
layout: default
title: "$TITLE"
---

Escreva o conteúdo do post aqui.

\`\`\`bash
# Exemplo de código
\`\`\`
EOF

echo "✅ Post criado: $FILENAME"

# Abre no nano para editar
nano "$FILENAME"

# Confirma se o usuário quer enviar para o GitHub
read -p "Deseja enviar para o GitHub agora? (s/N) " CONFIRM
if [[ "$CONFIRM" =~ ^[Ss]$ ]]; then
    cd "$BLOG_DIR" || exit
    git add .
    git commit -m "Novo post: $TITLE"
    git push origin main
    echo "🚀 Post enviado para o GitHub!"
else
    echo "📌 Post criado, mas não enviado."
fi
