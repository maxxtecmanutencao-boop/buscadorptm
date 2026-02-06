# 📋 Checklist Completo para Deploy

## ✅ Validação Local

Antes de fazer upload para GitHub, execute os testes:

### 1. Teste de Sintaxe Python
```bash
python -m py_compile app.py
```
Deve retornar sem erros.

### 2. Verificar Dependências
```bash
pip install -r requirements.txt
```

### 3. Executar Localmente
```bash
streamlit run app.py
```

Espere que abra em `http://localhost:8501`

### 4. Testar Funcionalidades
- [ ] Aplicação carrega sem erros?
- [ ] Arquivo Excel é carregado automaticamente?
- [ ] Temas funcionam corretamente?
- [ ] Busca funciona (tente um número que sabe que existe)?
- [ ] Botão Limpar apaga os campos?
- [ ] Visualizar dados completos mostra a tabela?

## 📁 Estrutura Final do Repositório

```
expedicao-main/
├── .gitignore                  ✅
├── .streamlit/
│   └── config.toml            ✅
├── app.py                      ✅ (CORRIGIDO)
├── CX PTMs.xlsx               ✅ (NECESSÁRIO)
├── EX.jpg                      ✅ (PRESENTE)
├── requirements.txt            ✅ (ATUALIZADO)
├── README.md                   ✅ (CRIADO)
├── DEPLOY_GITHUB.md            ✅ (CRIADO)
├── INSTALACAO_EXE.md           ✅ (CRIADO)
├── build_exe.bat              ✅ (CRIADO)
└── build_exe.sh               ✅ (CRIADO)
```

## 🚀 Passo a Passo: GitHub + Streamlit Share

### A. No seu computador:

1. Abra o terminal/PowerShell nesta pasta
2. Comece um repositório Git:
```bash
git init
git add .
git commit -m "Initial commit - Expedição ARM Recap v1.0"
```

3. **Crie um repositório no GitHub**:
   - Acesse https://github.com/new
   - Nome: `expedicao-main`
   - Descrição: "Aplicação de busca de dados em Excel com Streamlit"
   - Público (para funcionar com Streamlit Share)
   - NÃO inicialize com README (já temos um)

4. Push para GitHub:
```bash
git remote add origin https://github.com/SEU_USUARIO_GITHUB/expedicao-main.git
git branch -M main
git push -u origin main
```

### B. No Streamlit Share:

1. Acesse https://share.streamlit.io/
2. Clique "Sign in with GitHub" (autorize se necessário)
3. Clique "Create app"
4. Preencha:
   - Repository: `SEU_USUARIO/expedicao-main`
   - Branch: `main`
   - Main file path: `app.py`
5. Clique "Deploy"
6. Aguarde 3-5 minutos
7. Sua URL será: `https://seu-usuario-expedicao-main.streamlit.app/`

## 🏗️ Alternativa: Gerar Executável

No Windows:
```bash
double-click build_exe.bat
```

No macOS/Linux:
```bash
chmod +x build_exe.sh
./build_exe.sh
```

Resultado: `dist/expedicao_arm.exe`

## ⚙️ Arquivos Importantes

| Arquivo | Propósito |
|---------|-----------|
| `app.py` | Código principal da aplicação |
| `requirements.txt` | Dependências Python para ambos os cenários |
| `.streamlit/config.toml` | Configurações do Streamlit Cloud |
| `CX PTMs.xlsx` | Dados da aplicação |
| `.gitignore` | Arquivos a não fazer upload |
| `README.md` | Documentação principal |
| `DEPLOY_GITHUB.md` | Guia detalhado de deploy |
| `INSTALACAO_EXE.md` | Guia de instalação do executável |

## 🔧 Problemas Comuns

### Erro: "ModuleNotFoundError: pandas"
**Causa**: Dependências não instaladas
```bash
pip install -r requirements.txt
```

### Erro: ".xlsx not found"
**Causa**: Arquivo Excel não está no repositório
```bash
git add "CX PTMs.xlsx"
git commit -m "Add Excel file"
git push
```

### Erro: "Permission denied" no arquivo .sh
**Solução**:
```bash
chmod +x build_exe.sh
./build_exe.sh
```

## 📊 Comparação: Distribuição

| Método | Vantagens | Desvantagens |
|--------|-----------|--------------|
| **Streamlit Share** | Online, sem instalação, URL permanente | Requer internet, primeira carga lenta |
| **Executável .exe** | Funciona offline, rápido | Arquivo grande (~300MB), Windows only |
| **GitHub + Setup** | Controle total, atualizações fáceis | Requer conhecimento técnico |

## ✨ Boas Práticas

- ✅ Sempre teste localmente antes de fazer push
- ✅ Use commits significativos
- ✅ Mantenha o arquivo Excel no repositório
- ✅ Documente qualquer mudança
- ✅ Teste os temas e buscas regularmente

## 📞 Próximas Etapas

1. [ ] Executar testes locais
2. [ ] Criar repositório GitHub
3. [ ] Fazer primeiro push
4. [ ] Configurar em Streamlit Share
5. [ ] Testar deploy online
6. [ ] Gerar executável (opcional)
7. [ ] Documentar acesso para usuários finais

---

**Status**: Pronto para deploy ✅
