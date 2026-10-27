@echo off
setlocal enabledelayedexpansion
title JH_AntiCrashExploits - Build System

echo ========================================================
echo  Compilando JH_AntiCrashExploits
echo ========================================================

:: 1. Verificar JDK
where javac >nul 2>&1
if errorlevel 1 (
    echo [ERRO] javac nao foi encontrado no PATH.
    echo Certifique-se de ter o JDK configurado no PATH.
    pause
    exit /b 1
)

:: 2. Limpar e criar diretorio out
if exist "out" rmdir /s /q "out"
mkdir "out"

:: 3. Montar Classpath com todas as libs da pasta libs\
set "CP="
for %%f in ("libs\*.jar") do (
    if defined CP (
        set "CP=!CP!;%%f"
    ) else (
        set "CP=%%f"
    )
)

:: 4. Listar arquivos fonte Java
dir /s /b "src\main\java\*.java" > "sources.txt"

echo [*] Compilando arquivos Java com javac...
javac -encoding UTF-8 -cp "%CP%" -d "out" @"sources.txt"
if errorlevel 1 (
    echo [ERRO] Falha durante a compilacao!
    if exist "sources.txt" del "sources.txt"
    pause
    exit /b 1
)
if exist "sources.txt" del "sources.txt"

:: 5. Copiar resources (plugin.yml, config.yml, bungee.yml, etc.)
echo [*] Copiando recursos...
xcopy /s /e /y "src\main\resources\*" "out\" >nul

:: 6. Empacotar JAR
echo [*] Empacotando JAR...
jar -cvf "JH_AntiCrashExploits.jar" -C "out" . >nul
if errorlevel 1 (
    for /d %%J in ("%ProgramFiles%\Java\jdk*") do (
        if exist "%%J\bin\jar.exe" (
            "%%J\bin\jar.exe" -cvf "JH_AntiCrashExploits.jar" -C "out" . >nul
        )
    )
)

if exist "JH_AntiCrashExploits.jar" (
    echo ========================================================
    echo  SUCESSO! Plugin compilado com exito:
    echo  JH_AntiCrashExploits.jar
    echo ========================================================
) else (
    echo [ERRO] Nao foi possivel gerar o arquivo JH_AntiCrashExploits.jar
)
