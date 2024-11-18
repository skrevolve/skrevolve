
# vim-settings

https://github.com/junegunn/vim-plug

## install vimlink
```sh
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    
vim ~/.vimrc (.vimrc 파일 참조) # vim 실행후 명령모드에서 :PlugInstall 입력
```

## install pandoc
```sh
# pandoc 설치
sudo apt-get install pandoc   # 우분투
brew install pandoc           # 맥

# 변환
pandoc pm2.md -o pm2.html
```

## command
```sh
index 이동 : command 에서 ,ww
링크 이동: 커서 위치에서 enter
전체 html 파일변환: ./md_to_html.sh
md 매 저장시 html변환
```
