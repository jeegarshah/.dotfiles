"#!/bin/bash

execute pathogen#infect()
" Enable syntax highlighting
syntax on


" --------------------

" Use the Solarized Dark theme
"set background=dark
"colorscheme solarized
"let g:solarized_termtrans=1

" Make Vim more useful
set nocompatible
" Use the OS clipboard by default (on versions compiled with `+clipboard`)
set clipboard=unnamed
" Enhance command-line completion
" -- set wildmenu
" Allow cursor keys in insert mode
set esckeys
" Allow backspace in insert mode
" -- set backspace=indent,eol,start
" Optimize for fast terminal connections
set ttyfast
" Add the g flag to search/replace by default
set gdefault
" Use UTF-8 without BOM
set encoding=utf-8 nobomb
" Change mapleader
let mapleader=","
" Don’t add empty newlines at the end of files
set binary
set noeol

" Centralize backups, swapfiles and undo history
set backupdir=~/.vim/backups
set directory=~/.vim/swaps
if exists("&undodir")
	set undodir=~/.vim/undo
endif

" Enable line numbers
set number

" Highlight current line
set cursorline
" Make tabs as wide as two spaces
set tabstop=4
set expandtab

" Show “invisible” characters
"set lcs=tab:▸\ ,trail:·,eol:¬,nbsp:_
"set list

" Highlight searches
set hlsearch
" Ignore case of searches
set ignorecase
" Highlight dynamically as pattern is typed
" -- set incsearch

" Always show status line
" -- set laststatus=2
" Enable mouse in all modes
set mouse=a

" Don’t reset cursor to start of line when moving around.
set nostartofline
" Show the cursor position
" -- set ruler

set copyindent smartindent

" Show the current mode
set showmode
" Show the filename in the window titlebar
set title
" Show the (partial) command as it’s being typed
set showcmd
" Start scrolling three lines before the horizontal window border
" -- set scrolloff=3