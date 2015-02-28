# kitchen

#### Virtual Box Guest Additionsを更新する

パッケージリストの更新  
`pacman -Sy`

Guest Additionを更新  
`pacman -S virtualbox-guest-modules`  
`pacman -S virtualbox-guest-utils`

パッケージのキャッシュを削除  
`pacman -Sc`

boxを作成  
`vagrant package`  
`vagrant box add archlinux package.box`
