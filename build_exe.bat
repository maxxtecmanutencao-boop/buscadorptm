@echo off
REM Script para gerar executável EXE da aplicação Streamlit
REM Garantir que estamos no diretório correto
cd /d "%~dp0"

echo.
echo ========================================
echo Gerando Executavel Expedicao ARM Recap
echo ========================================
echo.

REM Verificar se Python está instalado
python --version >nul 2>&1
if errorlevel 1 (
    echo [ERRO] Python nao encontrado! Instale Python 3.8+
    echo Acesse: https://www.python.org/downloads/
    pause
    exit /b 1
)

echo [OK] Python encontrado
echo.

REM Criar ambiente virtual
echo [1/5] Criando ambiente virtual...
if exist venv (
    echo Ambiente virtual ja existe, pulando...
) else (
    python -m venv venv
    if errorlevel 1 (
        echo [ERRO] Falha ao criar ambiente virtual
        pause
        exit /b 1
    )
)
echo [OK] Ambiente virtual criado
echo.

REM Ativar ambiente virtual e instalar dependências
echo [2/5] Ativando ambiente e instalando dependencias...
call venv\Scripts\activate.bat
python -m pip install --upgrade pip >nul 2>&1
pip install -r requirements.txt

if errorlevel 1 (
    echo [ERRO] Falha ao instalar dependencias
    pause
    exit /b 1
)
echo [OK] Dependencias instaladas
echo.

REM Instalar PyInstaller
echo [3/5] Instalando PyInstaller...
pip install pyinstaller >nul 2>&1

if errorlevel 1 (
    echo [ERRO] Falha ao instalar PyInstaller
    pause
    exit /b 1
)
echo [OK] PyInstaller instalado
echo.

REM Gerar executável
echo [4/5] Gerando executavel (isso pode levar alguns minutos)...
pyinstaller --name "expedicao_arm" ^
    --onefile ^
    --windowed ^
    --icon=EX.jpg ^
    --add-data "CX PTMs.xlsx:." ^
    --add-data ".streamlit:streamlit" ^
    --hidden-import=pandas ^
    --hidden-import=openpyxl ^
    --collect-all streamlit ^
    app.py

if errorlevel 1 (
    echo [ERRO] Falha ao gerar executavel
    pause
    exit /b 1
)
echo [OK] Executavel gerado com sucesso!
echo.

REM Copiar arquivo Excel para a pasta dist
echo [5/5] Finalizando...
if exist dist\ (
    if not exist dist\CX\ (
        mkdir dist\CX
    )
    copy "CX PTMs.xlsx" dist\ >nul 2>&1
    echo [OK] Arquivo Excel copiado
)

echo.
echo ========================================
echo Sucesso!
echo ========================================
echo.
echo Seu executavel foi criado em:
echo %cd%\dist\expedicao_arm.exe
echo.
echo Para usar:
echo 1. Verifique que "CX PTMs.xlsx" esta na mesma pasta
echo 2. Clique duplo em expedicao_arm.exe
echo 3. Aguarde a aplicacao abrir no navegador
echo.
pause
