clone source code
```
git clone https://github.com/ChainBoy/test-pre-commit.git
cd test-pre-commit
```

init git hook
```
bash init.sh
```

test update main.py
```
echo "" >> main.py
git add .
git commit -m "test update"
```

you will get commit failed msg, and hook plugin has auto format you code. try agagin

```
git add .
git commit -m "auto fix"
git push
```
