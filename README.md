# 🛡️ JH_AntiCrashExploits (JHACE)

[![Build Status](https://img.shields.io/badge/Build-Passing-brightgreen.svg)]()
[![Minecraft Versions](https://img.shields.io/badge/Minecraft-1.8.x%20--%201.21.x-blue.svg)]()
[![Java](https://img.shields.io/badge/Java-8%20%7C%2011%20%7C%2017%20%7C%2021-orange.svg)]()
[![License](https://img.shields.io/badge/License-All%20Rights%20Reserved%20(Credits%20to%20Jhdev)-red.svg)]()

> **JH_AntiCrashExploits** é uma solução avançada de proteção para servidores de Minecraft (Spigot / Paper / BungeeCord), desenvolvida originalmente pela equipe **Jhdev**. Este repositório contém a reconstrução limpa e desobfuscada do código-fonte, atualizada para oferecer suporte e compatibilidade moderna de **1.8.x até o Minecraft 1.21.8+**, mantendo o sistema de build padrão da indústria via **Gradle Wrapper**.

---

## ✨ Recursos e Proteções

- 🛡️ **Detecção de Pacotes Maliciosos (Netty & ProtocolLib)**:
  - Interceptação de pacotes de tamanho anormal, payloads malformados ou flood de transações.
  - Mitigação de exploits conhecidos de *Book Exploit*, *Sign Exploit*, *Creative Slot Crash*, *Window Click Crash* e *Invalid Movement Packets*.
- ⚡ **Packet Limiter Global & Individual**:
  - Limitador configurável de pacotes por segundo (PPS) por jogador com prevenção contra sobrecarga de CPU e travamento do servidor.
- 🧱 **Suporte Multi-Versão (1.8 a 1.21.8+)**:
  - Compatibilidade adaptativa tanto para servidores legados quanto versões recentes que utilizam pipelines modernas de codec e novos layouts de pacotes de rede.
  - Conexão e desconexão seguras sem dependências rígidas de NMS interno.
- 🔧 **Build Portável**:
  - Estrutura completa em Gradle (`./gradlew`) que resolve todas as dependências da nuvem sem necessidade de configurações manuais.

---

## 🚀 Como Compilar o Projeto

Não é necessário ter o Gradle instalado na máquina! O projeto já inclui o **Gradle Wrapper** (`gradlew` / `gradlew.bat`), que baixa automaticamente a versão adequada e todas as bibliotecas necessárias.

### Pré-requisitos
- **Java JDK 8 ou superior** (testado e compatível até JDK 21 / 25).
- Git instalado.

### Passo a Passo

1. **Clone o repositório:**
   ```bash
   git clone https://github.com/TheJvex/Jhace.git
   cd Jhace
   ```

2. **Compile utilizando o Gradle Wrapper:**
   - **No Windows:**
     ```cmd
     gradlew.bat build
     ```
   - **No Linux / macOS:**
     ```bash
     chmod +x gradlew
     ./gradlew build
     ```

3. **Obtendo o JAR compilado:**
   - Após o `BUILD SUCCESSFUL`, o arquivo pronto para uso estará localizado em:
     ```
     build/libs/JH_AntiCrashExploits.jar
     ```

---

## 📦 Instalação no Servidor

1. Baixe ou copie o `JH_AntiCrashExploits.jar` gerado.
2. Certifique-se de que as dependências recomendadas estejam na pasta `plugins/`:
   - [ProtocolLib](https://www.spigotmc.org/resources/protocollib.1997/) (obrigatório para os filtros avançados de pacotes).
3. Cole o arquivo `JH_AntiCrashExploits.jar` na pasta `plugins/` do seu servidor Spigot/Paper.
4. Inicie ou reinicie o servidor.
5. As configurações serão geradas automaticamente na pasta `plugins/JH_AntiCrashExploits/config.yml`.

---

## ⚙️ Comandos e Permissões

| Comando | Descrição | Permissão |
| :--- | :--- | :--- |
| `/jhace` | Exibe o status e comandos disponíveis | `jhace.admin` |
| `/jhace reload` | Recarrega as configurações do arquivo `config.yml` | `jhace.admin` |

---

## 👏 Créditos & Reconhecimentos

- **Desenvolvedor Original:** [Jhdev](https://www.jhdev.net/) — criador da base e lógica do plugin `JH_AntiCrashExploits`.
- **Manutenção, Desobfuscação & Suporte 1.21+:** [TheJvex](https://github.com/TheJvex) — reconstrução do código-fonte, adaptação para o Gradle e compatibilidade moderna de pacotes de rede.

---

<div align="center">
  <sub>Desenvolvido com foco em segurança, performance e estabilidade para a comunidade de Minecraft.</sub>
</div>
