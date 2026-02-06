# 📤 Guia: Deploy no GitHub e Streamlit Share

## Passo 1: Preparar o Repositório GitHub

### 1.1 Criar repositório
```bash
cd expedicao-main
git init
git add .
git commit -m "Initial commit - Expedição ARM Recap"
```

### 1.2 Copiar para GitHub
- Acesse [github.com/new](https://github.com/new)
- Crie um repositório chamado `expedicao-main`
- Siga as instruções para fazer push

```bash
git remote add origin https://github.com/SEU_USUARIO/expedicao-main.git
git branch -M main
git push -u origin main
```

## Passo 2: Configurar Streamlit Share

### 2.1 Faça login em Streamlit Share
1. Acesse [share.streamlit.io](https://share.streamlit.io/)
2. Clique em "Sign In with GitHub"
3. Autorize o Streamlit

### 2.2 Deploiar a Aplicação
1. Clique em **"Create app"**
2. Selecione:
   - Repository: `SEU_USUARIO/expedicao-main`
   - Branch: `main`
   - Main file path: `app.py`

### 2.3 Aguardar Deploy
- A aplicação será construída automaticamente
- Você receberá uma URL como: `https://seu-usuario-expedicao-main.streamlit.app/`

## Passo 3: Verificar Funcionamento

✅ Checklist:
- [ ] Arquivo `CX PTMs.xlsx` está no repositório?
- [ ] `requirements.txt` está correto?
- [ ] `.streamlit/config.toml` está presente?
- [ ] `.gitignore` está configurado?
- [ ] Deploy não mostra erros?

## ⚠️ Troubleshooting

### Erro: "CX PTMs.xlsx não encontrado"
**Solução:** Certifique-se que o arquivo está no repositório
```bash
git add "CX PTMs.xlsx"
git commit -m "Add Excel file"
git push
```

### Erro: "Module not found"
**Solução:** Verifique se `requirements.txt` está correto
```bash
pip install -r requirements.txt  # Teste localmente
git add requirements.txt
git commit -m "Fix requirements"
git push
```

### Aplicação lenta no Streamlit Share
**Solução:** Isso é normal na primeira inicialização. Aguarde 1-2 minutos.

## 🔄 Atualizações Futuras

Para atualizar a aplicação:

1. Faça alterações locais em `app.py`
2. Teste localmente: `streamlit run app.py`
3. Faça commit e push:
```bash
git add .
git commit -m "Descrição das alterações"
git push origin main
```
4. Streamlit Share fará o deploy automaticamente em ~2 minutos

## 📊 Monitorar Deploy

Acesse o dashboard em `https://share.streamlit.io/` para:
- Ver logs de deployment
- Reiniciar a aplicação
- Configurar secretos (se necessário)
- Ver estatísticas de uso
