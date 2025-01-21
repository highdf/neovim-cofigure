# nvim配置

<!-- vim-markdown-toc GFM -->

* [目录结构](#目录结构)

<!-- vim-markdown-toc -->

## 目录结构
```help
├── init.lua                    # 入口文件
├── lazy-lock.json
├── lua                         # 配置所在目录
│   ├── basic.lua               # 基本配置文件
│   ├── colorchemes.lua         # 颜色主题配置文件
│   ├── maps.lua                # 快捷键配置文件
│   ├── plugin-config           # 插件配置目录
│   │   ├── lualine.lua
│   │   ├── markdown-toc.lua
│   │   ├── nvim-comment.lua
│   │   ├── nvim-tree.lua
│   │   ├── preview-nvim.lua
│   │   └── vim-markdown.lua
│   └── plugins.lua             # 插件管理文件
├── README.md
└── UPDATE_INFO.md
```
