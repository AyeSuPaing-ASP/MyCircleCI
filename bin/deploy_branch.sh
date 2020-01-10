#!/usr/bin/env bash
# ブランチにコミットがあった場合にCFnでデプロイを行います。
set -xe

# ファイルがある場所に移動
cd -- "$(dirname "$BASH_SOURCE")"


# 現在のブランチ名を取得する
# DyanmoDBのテーブル名の最大長は255文字 @see https://docs.aws.amazon.com/ja_jp/amazondynamodb/latest/developerguide/HowItWorks.NamingRulesDataTypes.html
# CloudFormationのスタック名の最大長は 64文字（たぶん）
BRANCH=`git rev-parse --abbrev-ref HEAD`

cd bin/
./slack.sh
