![Tests and Style Check](https://github.com/gh640/hello-github-actions/workflows/Tests%20and%20Style%20Check/badge.svg)

# `hello-github-actions`

Python のプロジェクトで GitHub Actions を利用するサンプルです。

## 利用パッケージ

以下の Python パッケージを利用しています。

- `poetry`: virtualenv を管理する
    - [python-poetry/poetry | GitHub](https://github.com/python-poetry/poetry)
- `pytest`: `tests/` ディレクトリ以下のファイルを使ってテストを行う
    - [pytest-dev/pytest | GitHub](https://github.com/pytest-dev/pytest)
- `black`: コードのスタイルチェックを行う
    - [psf/black | GitHub](https://github.com/psf/black)

## ファイル

- `.github/workflows/ci.yml`: GitHub Actios ワークフローを定義する
- `docs/README.md`: このファイル
- `tests/__init__.py`: `tests` ディレクトリを Python パッケージ化する
- `tests/test_hello.py`: テストを記述する
- `Dockerfile`: Python に Poetry を追加したコンテナイメージを定義する
- `LICENSE`: ライセンスを定義する
- `docker-compose.yml`: `Dockerfile` とあわせて `docker-compose` のサービスを定義する
- `hello.py`: ソースファイル
- `poetry.lock`: Poetry でパッケージを管理する
- `pyproject.toml`: Poetry でパッケージを管理する
- `setup.py`: `setuptools` でパッケージの設定を行う
