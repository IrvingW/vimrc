# vim配置文件
配置过程:
*先安装vundle来管理插件
```
git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
```
为了避免vimrc文件过于臃肿，添加一个新的文件专门用来配置插件—— `~/.vimrc.bunlde`
基本的配置如下：
```
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim' 

call vundle#end()
```

*然后是vimrc文件的配置
打开.vimrc文件直接编辑就可以了，记得开始的地方要导入插件管理的文件
```
if filereadable(expand("~/.vimrc.bundles"))
    source ~/.vimrc.bundles
endif
```
