python -m site &> /dev/null && PATH="$PATH:`python -m site --user-base`/bin"
pre-commit --version > /dev/null 2>&1 || (pip install --user pre-commit || easy_install --user pre-commit || brew install pre-commit || (curl https://pre-commit.com/install-local.py | python -)) 2>/dev/null || (echo "pre-commit install failed" && exit 1)
pre-commit --version 2>/dev/null && ((pre-commit install --hook-type pre-commit; pre-commit install --hook-type pre-push) >/dev/null 2>&1) || (echo "" && exit 1)
