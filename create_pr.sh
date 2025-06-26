#!/bin/bash

echo "🚀 Script para Criar Pull Request - Jogo das Bolinhas"
echo "=================================================="
echo ""

# Verificar se estamos na branch correta
current_branch=$(git branch --show-current)
echo "📍 Branch atual: $current_branch"

if [ "$current_branch" != "feature/difficulty-levels-and-improvements" ]; then
    echo "⚠️  Mudando para a branch correta..."
    git checkout feature/difficulty-levels-and-improvements
fi

echo ""
echo "📊 Status do repositório:"
git status --short

echo ""
echo "📝 Últimos commits:"
git log --oneline -3

echo ""
echo "🔗 Repositório remoto:"
git remote -v

echo ""
echo "📋 Para criar o Pull Request manualmente:"
echo "1. Acesse: https://github.com/Andr3yGabriel/bubbles"
echo "2. Clique em 'Fork' para criar sua cópia"
echo "3. Clone seu fork localmente"
echo "4. Copie as mudanças desta branch"
echo "5. Faça push para seu fork"
echo "6. Crie o Pull Request no GitHub"

echo ""
echo "📄 Arquivos para copiar:"
echo "- index.html (modificado)"
echo "- README.md (novo)"
echo "- TECHNICAL_DOCS.md (novo)"
echo "- PULL_REQUEST.md (descrição do PR)"

echo ""
echo "✅ Todas as mudanças estão commitadas e prontas!"
echo "📋 Consulte PULL_REQUEST.md para detalhes completos"
