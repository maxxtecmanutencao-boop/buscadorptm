#!/bin/bash
# Script para gerar executável EXE da aplicação Streamlit (macOS/Linux)

cd "$(dirname "$0")"

echo ""
echo "========================================"
echo "Gerando Executavel Expedicao ARM Recap"
echo "========================================"
echo ""

# Verificar se Python está instalado
if ! command -v python3 &> /dev/null; then
    echo "[ERRO] Python 3 não encontrado! Instale Python 3.8+"
    echo "Acesse: https://www.python.org/downloads/"
    exit 1
fi

python3 --version
echo "[OK] Python encontrado"
echo ""

# Criar ambiente virtual
echo "[1/5] Criando ambiente virtual..."
if [ -d "venv" ]; then
    echo "Ambiente virtual já existe, pulando..."
else
    python3 -m venv venv
    if [ $? -ne 0 ]; then
        echo "[ERRO] Falha ao criar ambiente virtual"
        exit 1
    fi
fi
echo "[OK] Ambiente virtual criado"
echo ""

# Ativar ambiente virtual e instalar dependências
echo "[2/5] Ativando ambiente e instalando dependências..."
source venv/bin/activate
python -m pip install --upgrade pip > /dev/null 2>&1
pip install -r requirements.txt

if [ $? -ne 0 ]; then
    echo "[ERRO] Falha ao instalar dependências"
    exit 1
fi
echo "[OK] Dependências instaladas"
echo ""

# Instalar PyInstaller
echo "[3/5] Instalando PyInstaller..."
pip install pyinstaller > /dev/null 2>&1

if [ $? -ne 0 ]; then
    echo "[ERRO] Falha ao instalar PyInstaller"
    exit 1
fi
echo "[OK] PyInstaller instalado"
echo ""

# Gerar executável
echo "[4/5] Gerando executável (isso pode levar alguns minutos)..."
pyinstaller --name "expedicao_arm" \
    --onefile \
    --add-data "CX PTMs.xlsx:." \
    --add-data ".streamlit:streamlit" \
    --hidden-import=pandas \
    --hidden-import=openpyxl \
    --collect-all streamlit \
    app.py

if [ $? -ne 0 ]; then
    echo "[ERRO] Falha ao gerar executável"
    exit 1
fi
echo "[OK] Executável gerado com sucesso!"
echo ""

# Copiar arquivo Excel para a pasta dist
echo "[5/5] Finalizando..."
if [ -d "dist/" ]; then
    cp "CX PTMs.xlsx" dist/ 2>/dev/null
    echo "[OK] Arquivo Excel copiado"
fi

echo ""
echo "========================================"
echo "Sucesso!"
echo "========================================"
echo ""
echo "Seu executável foi criado em:"
echo "$(pwd)/dist/expedicao_arm"
echo ""
echo "Para usar:"
echo "1. Verifique que 'CX PTMs.xlsx' está na mesma pasta"
echo "2. Execute: ./dist/expedicao_arm"
echo "3. Aguarde a aplicação abrir no navegador"
echo ""
