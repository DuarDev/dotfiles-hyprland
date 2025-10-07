#!/bin/bash

# Testa se fetch funciona (i.e. há uma sessão ativa)
if uairctl fetch '{"text":"{time}"}' > /dev/null 2>&1; then
    # Se sim, exibe o tempo
    uairctl fetch '{"text":"{time}","class":"{state}"}'
else
    # Se não, exibe valor neutro
    echo '{"text":"--:--","class":"inactive"}'
fi
