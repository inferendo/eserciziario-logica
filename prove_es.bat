@echo off
setlocal enabledelayedexpansion

:: Create output directory if it doesn't exist
if not exist prove_es (
    mkdir prove_es
)

:: Loop 10 times
for /l %%i in (1,1,10) do (
    echo === Iteration %%i ===

    :: Fetch a random number from random.org
    set "random_number="
    for /f "delims=" %%A in ('curl -s "https://www.random.org/integers/?num=1&min=0&max=1000000&col=1&base=10&format=plain&rnd=new"') do (
        set "random_number=%%A"
    )

    :: Check if the request was successful
    if "!random_number!"=="" (
        echo Failed to fetch a random number from random.org
        exit /b 1
    )

    echo Random number fetched: !random_number!

    :: Compile the Typst file using the random number as the seed
    typst compile main.typ --input seed=!random_number! prove_es/%%i.pdf

    :: Check if the Typst compilation was successful
    if !errorlevel! == 0 (
        echo Successfully compiled main.typ to prove_es/%%i.pdf with seed !random_number!
    ) else (
        echo Failed to compile main.typ at iteration %%i.
        exit /b 1
    )
)

echo All compilations completed.
