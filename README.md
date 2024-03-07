# docker-zenn-cli

[![GitHub](https://img.shields.io/badge/GitHub-repository---)](https://github.com/toms74209200/docker-zenn-cli)
[![Docker Hub](https://img.shields.io/badge/Docker%20Hub---?color=1D63ED)](https://hub.docker.com/r/motomotomato/zenn-cli)
[![version](https://img.shields.io/github/v/tag/toms74209200/docker-zenn-cli)](https://github.com/toms74209200/docker-zenn-cli/tags)
[![status](https://github.com/toms74209200/docker-zenn-cli/actions/workflows/build_image.yml/badge.svg)](https://github.com/toms74209200/docker-zenn-cli/actions/workflows/build_image.yml)

Zenn CLI の Docker イメージ.

## Usage

```bash
$ docker pull motomotomato/zenn-cli
```

引数なしで実行するとプレビューが開始されます. ローカルのディレクトリをコンテナの `/zenn` にマウントしてください. プレビューは `http://localhost:8000` で確認できます. コンテナの `/zenn` ディレクトリ以下に `articles` ディレクトリ, または `books` ディレクトリが存在しない場合は `zenn init` コマンドによりこれらのディレクトリが作成されます.

```bash
$ docker run --rm -p8000:8000 -v$(pwd):/zenn zenn-cli
Generating .gitignore skipped.
Generating README.md skipped.

  🎉  Done!
  早速コンテンツを作成しましょう

  👇  新しい記事を作成する
  $ zenn new:article

  👇  新しい本を作成する
  $ zenn new:book

  👇  投稿をプレビューする
  $ zenn preview

👀 Preview: http://localhost:8000
```

その他のコマンドの利用方法については公式を参考にしてください.

- [Zenn CLIで記事・本を管理する方法](https://zenn.dev/zenn/articles/zenn-cli-guide)

docker compose を利用する場合は以下のように記述してください.

**`docker-compose.yml`**
```yaml
services:
  zenn-cli:
    image: motomotomato/zenn-cli
    ports:
      - 8000:8000
    volumes:
      - .:/zenn
```

## Installed packages

- [zenn-cli - npm](https://www.npmjs.com/package/zenn-cli)

## Reference

- [Zenn CLIをインストールする](https://zenn.dev/zenn/articles/install-zenn-cli)

## License

MIT License

## Author

[toms74209200](<https://github.com/toms74209200>)
