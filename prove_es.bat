@echo off
setlocal enabledelayedexpansion

if not exist prove_es (
    mkdir prove_es
)

for /l %%i in (1,1,100) do (
    echo === Iteration %%i ===

    set /a "random_number=(!RANDOM! * 31 + !RANDOM!) %% 1000001"

    echo Random number generated: !random_number!

    typst compile main.typ --input seed=!random_number! prove_es/%%i.pdf

    if !errorlevel! == 0 (
        echo Successfully compiled main.typ to prove_es/%%i.pdf with seed !random_number!
    ) else (
        echo Failed to compile main.typ at iteration %%i.
        exit /b 1
    )
)

