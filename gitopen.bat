@echo off
git remote -v | findstr fetch > temp.py
set /p VAR=< temp.py
echo import re > temp.py
echo import os >> temp.py
echo string = "%VAR%" >> temp.py
echo url = re.findall(r'[A-Za-z/.-_]*', string[6:]) >> temp.py
echo for idx in url: >> temp.py
echo    if 'http' in idx: >> temp.py
echo        os.system(f'start {idx}')  >> temp.py
temp.py
del temp.py
