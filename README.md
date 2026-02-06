# 🔍 Expedição ARM Recap

Aplicação de busca interativa para análise de dados em planilhas Excel com interface visual moderna.

## ✨ Recursos

- ✅ Busca de múltiplos números simultaneamente (até 4)
- ✅ 4 Temas customizados (Palmeiras, Corinthians, São Paulo, Santos)
- ✅ Interface intuitiva sem necessidade de programação
- ✅ Visualização completa dos dados
- ✅ Relógio digital e rastreamento de acessos

## 📋 Requisitos

- Python 3.8+
- Arquivo Excel: `CX PTMs.xlsx`

## 🚀 Como Usar

### Opção 1: Executável (Recomendado para usuários finais)

1. Baixe o arquivo `expedicao_arm.exe`
2. Clique duplo para executar
3. A aplicação abrirá automaticamente em seu navegador

### Opção 2: Streamlit Share (Online)

Acesse: [https://share.streamlit.io/seu-usuario/expedicao-main](https://share.streamlit.io/)

### Opção 3: Executar Localmente

```bash
# Instalar dependências
pip install -r requirements.txt

# Executar
streamlit run app.py
```

## 📁 Estrutura do Projeto

```
expedicao-main/
├── app.py                    # Aplicação principal
├── CX PTMs.xlsx             # Dados (Excel)
├── requirements.txt         # Dependências Python
├── README.md               # Este arquivo
└── .streamlit/
    └── config.toml         # Configurações Streamlit
```

## 🎨 Temas Disponíveis

1. **Palmeiras** - Verde escuro com acentos verdes
2. **Corinthians** - Preto e branco moderno
3. **São Paulo** - Vermelho e dourado
4. **Santos** - Branco e cinza elegante

## 📊 Como Funciona

1. Escolha um tema na barra lateral
2. Insira até 4 números que deseja encontrar
3. Clique em "🔍 Buscar Todos"
4. O sistema mostrará:
   - **Número**: O valor buscado
   - **Posição**: Em qual coluna foi encontrado
   - **Linha Excel**: Número da linha no arquivo
5. Use "🗑️ Limpar" para apagar os campos

## ⚠️ Notas Importantes

- O arquivo `CX PTMs.xlsx` deve estar na mesma pasta que `app.py`
- Para Streamlit Share, o arquivo Excel deve estar no repositório GitHub
- Suporta buscas por números inteiros
- Busca é feita em todas as colunas da planilha

## 🔧 Dependências

- **streamlit**: Framework web para Python
- **pandas**: Análise de dados
- **openpyxl**: Leitura de arquivos Excel

## 👨‍💻 Desenvolvido por

Djalma A Barbosa - 2026  
Direitos reservados.

## 📝 Licença

Este projeto foi desenvolvido internamente. Consulte o proprietário para informações de licença.

## 🆘 Suporte

Para reportar bugs ou sugerir melhorias, entre em contato com o desenvolvedor.
