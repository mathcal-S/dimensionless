mkdir -p backend frontend .github/workflows

# Backend
touch backend/main.py
touch backend/requirements.txt
touch backend/.env

# Frontend
touch frontend/index.html
touch frontend/style.css
touch frontend/app.js

# Project metadata
touch README.md
touch LICENSE
touch SPONSORS.yml

# GitHub Actions workflow
cat <<EOL > .github/workflows/python-app.yml
name: Python Application

on:
  push:
    branches: [ "main" ]
  pull_request:
    branches: [ "main" ]

jobs:
  build:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v3
      - name: Set up Python
        uses: actions/setup-python@v4
        with:
          python-version: "3.11"
      - name: Install dependencies
        run: |
          python -m pip install --upgrade pip
          pip install -r backend/requirements.txt
      - name: Run backend tests
        run: echo "Add your test commands here"
EOL
