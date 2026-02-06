# 🖥️ Guia: Instalação do Executável (.exe)

## Opção Mais Simples para Usuários Finais

O executável permite usar a aplicação **sem instalar Python** e sem conhecimentos técnicos.

## 📥 Instalação Rápida

### Passo 1: Download
- Baixe o arquivo: `expedicao_arm.exe`
- Salve em uma pasta de sua preferência (ex: `Desktop`)

### Passo 2: Executar
- 🖱️ Clique duplo no arquivo `expedicao_arm.exe`
- Aguarde a aplicação abrir (primeira vez pode levar 10-20 segundos)
- Seu navegador abrirá automaticamente com a aplicação

### Passo 3: Usar
1. A aplicação está pronta para usar!
2. Escolha um tema escuro ou claro na barra lateral
3. Insira os números que deseja procurar
4. Clique em "Buscar Todos"

## ⚠️ Requisitos do Sistema

✅ **Windows 7 ou superior**  
✅ **Navegador web** (Chrome, Firefox, Edge, etc.)  
✅ **Mínimo 500 MB de espaço em disco**  
✅ **Permissão para executar aplicações**

## 🔍 Troubleshooting

### "Arquivo .exe bloqueado pelo Windows"
1. Clique com botão direito no arquivo
2. Selecione "Propriedades"
3. Marque "Desbloquear"
4. Clique "Aplicar" e "OK"
5. Tente executar novamente

### "Aviso de segurança do Windows"
- Clique em "Mais informações"
- Depois "Executar mesmo assim"
- Isso é normal para programas não assinados

### Aplicação não abre
1. **Feche todas as instâncias** do Streamlit
2. Aguarde 30 segundos
3. Execute novamente
4. Se persistir, reinicie o computador

### Porta já está em uso
A aplicação usa a porta 8501. Se receber erro:
1. Feche outras aplicações Streamlit
2. Reinicie o computador

## 💾 Requisitos do Arquivo

Para funcionar corretamente, o `expedicao_arm.exe` precisa estar na **mesma pasta** do arquivo:
```
Pasta do Aplicativo/
├── expedicao_arm.exe          ← Executável
└── CX PTMs.xlsx               ← Dados (igual ao GitHub)
```

## 🚀 Iniciar Automaticamente

Para abrir a aplicação ao iniciar o Windows:
1. Clique com botão direito no `expedicao_arm.exe`
2. Copie o arquivo
3. Pressione `Windows + R`
4. Digite: `shell:startup`
5. Cole o arquivo na pasta
6. Feche
7. Próxima vez que iniciar Windows, a aplicação abrirá automaticamente

## 🔄 Atualizar para Nova Versão

1. Feche o `expedicao_arm.exe`
2. Delete o arquivo antigo
3. Download a nova versão
4. Execute o novo arquivo

## 📞 Suporte

Se encontrar problemas:
1. Verifique internet está conectada
2. Limpe a pasta de Cache (atalho: `Windows + R` → `%temp%`)
3. Desinstale e reinstale se necessário
4. Entre em contato com administrador

## 🆔 Teclas de Atalho

| Tecla | Função |
|-------|--------|
| `Ctrl + C` | Parar a aplicação (clique direito no terminal e encerrE) |
| `F5` | Recarregar a página (se necessário) |
| `Ctrl + Shift + Delete` | Limpar cache do navegador |

## ✅ Verificar se está Funcionando

Quando você clicar no `.exe`, você verá:
1. Uma janela de terminal preta (não feche!)
2. Seu navegador abrirá com a aplicação
3. Se não abrir, vá para: `http://localhost:8501`

Sucesso! 🎉
