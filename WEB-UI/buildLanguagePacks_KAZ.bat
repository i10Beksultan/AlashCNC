cd %~dp0
cmd.exe /c npm install
rmdir /Q /S languages
mkdir languages\en
cmd.exe /c gulp package --lang en
copy index.html.gz languages\en
mkdir languages\ru
cmd.exe /c gulp package --lang ru
copy index.html.gz languages\ru
mkdir languages\uk
cmd.exe /c gulp package --lang uk
copy index.html.gz languages\uk
mkdir languages\grbl
cmd.exe /c gulp package --lang uk
copy index.html.gz languages\grbl
cmd.exe /c gulp package
mkdir languages\multi
copy index.html.gz languages\multi
pause
