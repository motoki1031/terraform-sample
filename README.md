# Terraform

## install

```
// tfenv をインストール
brew instal tfenv

// インストール可能なバージョンを確認
tfenv list-remote

// デフォルトで使用するバージョンを指定
tfenv use 0.14.0
```

## MFA 対策

aws-vault のインストール<br>

https://github.com/99designs/aws-vault

```
brew install aws-vault
```

```
## デフォルト設定
aws-vault add default
Enter Access Key ID: AKXXXXXXXXXXXXXXXXXX
Enter Secret Access Key:
```

~/.aws/config に以下の記述を追加

```
[profile mfa]
region=ap-northeast-1
role_arn = hogehoge
mfa_serial = hogehoge
source_profile=default
```

terraform 実行

```
aws-vault exec mfa -- terraform version
```

## コマンド

初期化設定

```
terraform init
```

差分確認

```
terraform plan
```

設定反映

```
terraform apply
```
