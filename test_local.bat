@echo off
REM Script para testar a aplicação localmente antes de fazer deploy

echo.
echo ========================================
echo Teste Local - Expedicao ARM Recap
echo ========================================
echo.

REM Verificar se Python está instalado
python --version >nul 2>&1
if errorlevel 1 (
    echo [ERRO] Python nao encontrado!
    echo Instale em: https://www.python.org/downloads/
    pause
    exit /b 1
)

python --version

echo.
echo [1/3] Verificando dependencias...

REM Verificar se o arquivo requirements.txt existe
if not exist requirements.txt (
    echo [ERRO] requirements.txt nao encontrado!
    pause
    exit /b 1
)

REM Instalar/verificar dependências
pip install -q -r requirements.txt
if errorlevel 1 (
    echo [ERRO] Falha ao instalar dependencias
    pause
    exit /b 1
)
echo [OK] Dependencias OK

echo.
echo [2/3] Verificando integridade dos arquivos...

REM Verificar arquivos necessários
if not exist app.py (
    echo [ERRO] app.py nao encontrado!
    pause
    exit /b 1
)
echo    [OK] app.py encontrado

if not exist "CX PTMs.xlsx" (
    echo [AVISO] CX PTMs.xlsx nao encontrado
    echo         A aplicacao funcionara, mas nao carregara dados
)
echo    [OK] (arquivo Excel opcional no teste)

if not exist ".streamlit\config.toml" (
    echo [AVISO] config.toml nao encontrado
) else (
    echo    [OK] config.toml encontrado
)

echo.
echo [3/3] Testando codigo Python...

REM Validar sintaxe do Python
python -m py_compile app.py
if errorlevel 1 (
    echo [ERRO] Erros de sintaxe em app.py!
    pause
    exit /b 1
)
echo [OK] Sintaxe validada

echo.
echo ========================================
echo Tudo OK! Pronto para executar
echo ========================================
echo.

echo Pressione qualquer tecla para iniciar a aplicacao...
echo (Sera aberta em http://localhost:8501)
echo.
pause

REM Executar a aplicação
streamlit run app.py
