@echo off

:: Fetch a random number from random.org
setlocal enabledelayedexpansion
for /f "delims=" %%A in ('curl -s "https://www.random.org/integers/?num=1&min=0&max=1000000&col=1&base=10&format=plain&rnd=new"') do set random_number=%%A

:: Check if the request was successful
if "%random_number%"=="" (
    echo Failed to fetch a random number from random.org
    exit /b 1
)

echo Random number fetched: %random_number%

:: Compile the Typst file using the random number as the seed
set seed=seed=%random_number%
typst compile main.typ --input %seed% output/%random_number%.pdf

:: Check if the Typst compilation was successful
if %errorlevel%==0 (
    echo Successfully compiled main.typ with seed %random_number%.
) else (
    echo Failed to compile main.typ.
    exit /b 1
)