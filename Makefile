.PHONY: run build deploy deploy-cloudflare clean install

PORT ?= 8000
VENV := venv
PYTHON := $(VENV)/bin/python3
MKDOCS := $(VENV)/bin/mkdocs

run:
	@test -d $(VENV) || { echo "Virtual environment not found. Run 'make install' first."; exit 1; }
	@test -f $(MKDOCS) || { echo "mkdocs not found. Run 'make install' first."; exit 1; }
	$(MKDOCS) serve -a 127.0.0.1:$(PORT)

build:
	@test -d $(VENV) || { echo "Virtual environment not found. Run 'make install' first."; exit 1; }
	@test -f $(MKDOCS) || { echo "mkdocs not found. Run 'make install' first."; exit 1; }
	$(MKDOCS) build

deploy:
	@test -d $(VENV) || { echo "Virtual environment not found. Run 'make install' first."; exit 1; }
	@test -f $(MKDOCS) || { echo "mkdocs not found. Run 'make install' first."; exit 1; }
	$(MKDOCS) gh-deploy

deploy-cloudflare:
	@test -d $(VENV) || { echo "Virtual environment not found. Run 'make install' first."; exit 1; }
	@test -f $(MKDOCS) || { echo "mkdocs not found. Run 'make install' first."; exit 1; }
	$(MKDOCS) build && npx wrangler deploy

clean:
	rm -rf site/

install:
	@test -d $(VENV) || python3 -m venv $(VENV)
	$(PYTHON) -m pip install --upgrade pip
	$(PYTHON) -m pip install mkdocs-material
