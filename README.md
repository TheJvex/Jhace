# JH_AntiCrashExploits (JHACE)

[![Build Status](https://img.shields.io/badge/Build-Passing-brightgreen.svg)]()
[![Minecraft Versions](https://img.shields.io/badge/Minecraft-1.8.x%20--%201.21.x-blue.svg)]()
[![Java](https://img.shields.io/badge/Java-8%20%7C%2011%20%7C%2017%20%7C%2021-orange.svg)]()
[![License](https://img.shields.io/badge/License-All%20Rights%20Reserved%20(Credits%20to%20Jhdev)-red.svg)]()

> **JH_AntiCrashExploits** e uma solucao avancada de protecao para servidores de Minecraft (Spigot / Paper / BungeeCord), desenvolvida originalmente pela equipe **Jhdev**. Este repositorio contem a reconstrucao limpa e desobfuscada do codigo-fonte, atualizada para oferecer suporte e compatibilidade moderna de **1.8.x ate o Minecraft 1.21.8+**, mantendo o sistema de build padrao da industria via **Gradle Wrapper**.

---

## Recursos e Protecoes

- **Deteccao de Pacotes Maliciosos (Netty & ProtocolLib)**:
  - Interceptacao de pacotes de tamanho anormal, payloads malformados ou flood de transacoes.
  - Mitigacao de exploits conhecidos de *Book Exploit*, *Sign Exploit*, *Creative Slot Crash*, *Window Click Crash* e *Invalid Movement Packets*.
- **Packet Limiter Global & Individual**:
  - Limitador configuravel de pacotes por segundo (PPS) por jogador com prevencao contra sobrecarga de CPU e travamento do servidor.
- **Suporte Multi-Versao (1.8 a 1.21.8+)**:
  - Compatibilidade adaptativa tanto para servidores legados quanto versoes recentes que utilizam pipelines modernas de codec e novos layouts de pacotes de rede.
  - Conexao e desconexao seguras sem dependencias rigidas de NMS interno.
- **Build Portavel**:
  - Estrutura completa em Gradle (`./gradlew`) que resolve todas as dependencias da nuvem sem necessidade de configuracoes manuais.

---

## Como Compilar o Projeto

Nao e necessario ter o Gradle instalado na maquina. O projeto ja inclui o **Gradle Wrapper** (`gradlew` / `gradlew.bat`), que baixa automaticamente a versao adequada e todas as bibliotecas necessarias.

### Pre-requisitos
- **Java JDK 8 ou superior** (testado e compativel ate JDK 21 / 25).
- Git instalado.

### Passo a Passo

1. **Clone o repositorio:**
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
   - Apos o `BUILD SUCCESSFUL`, o arquivo pronto para uso estara localizado em:
     ```
     build/libs/JH_AntiCrashExploits.jar
     ```

---

## Instalacao no Servidor

1. Baixe ou copie o `JH_AntiCrashExploits.jar` gerado.
2. Certifique-se de que as dependencias recomendadas estejam na pasta `plugins/`:
   - [ProtocolLib](https://www.spigotmc.org/resources/protocollib.1997/) (obrigatorio para os filtros avancados de pacotes).
3. Cole o arquivo `JH_AntiCrashExploits.jar` na pasta `plugins/` do seu servidor Spigot/Paper.
4. Inicie ou reinicie o servidor.
5. As configuracoes serao geradas automaticamente na pasta `plugins/JH_AntiCrashExploits/config.yml`.

---

## Comandos e Permissoes

| Comando | Descricao | Permissao |
| :--- | :--- | :--- |
| `/jhace` | Exibe o status e comandos disponiveis | `jhace.admin` |
| `/jhace reload` | Recarrega as configuracoes do arquivo `config.yml` | `jhace.admin` |

---

## Creditos & Reconhecimentos

- **Desenvolvedor Original:** [Jhdev](https://www.jhdev.net/) - criador da base e logica do plugin `JH_AntiCrashExploits`.
- **Manutencao, Desobfuscao & Suporte 1.21+:** [TheJvex](https://github.com/TheJvex) - reconstrucao do codigo-fonte, adaptacao para o Gradle e compatibilidade moderna de pacotes de rede.

---

<div align="center">
  <sub>Desenvolvido com foco em seguranca, performance e estabilidade para a comunidade de Minecraft.</sub>
</div>
