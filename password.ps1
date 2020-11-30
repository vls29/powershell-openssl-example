$password = Read-Host -AsSecureString "Please enter a password"
Write-Host $password
Write-Host (ConvertFrom-SecureString -SecureString $password -AsPlainText)
(ConvertFrom-SecureString -SecureString $password -AsPlainText) | openssl enc -aes256 -base64 -e -k mystuff -iter 330005
