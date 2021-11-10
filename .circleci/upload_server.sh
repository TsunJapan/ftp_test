#!/bin/sh

# updateを呼んであげないと、インストールできないとエラーになったため、updateを呼んでます
echo "Running: apt-get -y -qq update"
echo $(apt-get -y -qq update)


# git-ftpを使うため、インストール。
echo "Running: apt-get install git-ftp"
echo $(apt-get install git-ftp)

echo "Running: git ftp --version"
echo $(git ftp --version)

# いつからかssh鍵を使っていない場合、
# コマンドオプション側でパスワードとユーザー名を指定しないと、failureになるようになりました
# git config git-ftp.user "$USER_NAME"
# git config git-ftp.url "$URL"
# git config git-ftp.password "$PASSWORD"

# 研究室サーバへアップロード！ （git ftp init済みであること）
# $USER_NAMEなどはCircleCIページから設定したサーバのユーザー名などです。
echo "Running: git ftp push --remote-root <アップロードパス>"
git ftp push -u inlet-wps -p wwuv3ww4x3 --remote-root ftp://inlet-wps.sakura.ne.jp/ftp_test