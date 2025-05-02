@echo off
for /f "skip=1 tokens=1" %%m in ('ollama list ^| findstr /v "reviewer"') do (
    echo Updating model: %%m
    ollama pull %%m
    echo.
)
pause
