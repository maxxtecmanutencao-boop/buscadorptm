@echo off
REM Script para preparar e fazer upload para GitHub

echo.
echo ========================================
echo Preparacao para Upload - GitHub
echo ========================================
echo.

REM Verificar se estamos no diretório correto
if not exist app.py (
    echo [ERRO] app.py nao encontrado!
    echo Execute este script na raiz do projeto
    pause
    exit /b 1
)

REM Verificar se Git está instalado
git --version >nul 2>&1
if errorlevel 1 (
    echo [ERRO] Git nao encontrado!
    echo Instale em: https://git-scm.com/download/win
    pause
    exit /b 1
)

echo [OK] Git detectado
echo.

REM Inicializar repositório
echo [1/4] Verificando repositorio local...
if exist .git (
    echo Repositorio ja inicializado
) else (
    echo Inicializando novo repositorio...
    git init
    if errorlevel 1 (
        echo [ERRO] Falha ao inicializar Git
        pause
        exit /b 1
    )
    echo [OK] Repositorio criado
)

echo.
echo [2/4] Adicionando arquivos...
git add .
if errorlevel 1 (
    echo [ERRO] Falha ao adicionar arquivos
    pause
    exit /b 1
)
echo [OK] Arquivos prontos

echo.
echo [3/4] Fazendo commit...
git commit -m "Initial commit - Expedicao ARM Recap v1.0"
if errorlevel 1 (
    echo Nada novo para commitar (tudo ja foi commitado)
) else (
    echo [OK] Commit realizado
)

echo.
echo [4/4] Instruções finais...
echo.
echo ========================================
echo Pronto para GitHub!
echo ========================================
echo.
echo Proximas etapas:
echo.
echo 1. Acesse: https://github.com/new
echo    - Nome: expedicao-main
echo    - Descricao: Aplicacao de busca de dados em Excel
echo    - Publico (IMPORTANTE para Streamlit Share)
echo    - NÃO inicialize com README
echo.
echo 2. Apos criar repositorio no GitHub, execute:
echo.
echo    git remote add origin https://github.com/SEUSUSARIO/expedicao-main.git
echo    git branch -M main
echo    git push -u origin main
echo.
echo 3. Apos fazer push, vá para:
echo    https://share.streamlit.io/
echo.
echo Duvidas? Veja: DEPLOY_GITHUB.md
echo.
pause
