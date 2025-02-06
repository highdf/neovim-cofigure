# nvim配置

<!-- vim-markdown-toc GFM -->

* [目录结构](#目录结构)

<!-- vim-markdown-toc -->

## 目录结构
```help
├
├── init.lua                        # 入口文件
├── lazy-lock.json
├── lua
│   ├── basic.lua                   # 基本配置文件
│   ├── colorchemes.lua             # 颜色主题配置文件
│   ├── maps.lua                    # 快捷键配置文件
│   ├── plugin-config               # 插件配置目录
│   │   ├── dap                     # 调试配置
│   │   │   ├── config
│   │   │   │   ├── dap-c.lua
│   │   │   │   └── dap-java.lua    
│   │   │   ├── dap.lua
│   │   │   └── dap-ui.lua
│   │   ├── Lsp                     # 自动补全配置
│   │   │   ├── cmp.lua
│   │   │   └── lspkind.lua
│   │   ├── MarkDown                # MarkDown配置
│   │   │   ├── markdown-toc.lua    
│   │   │   ├── preview-nvim.lua    
│   │   │   └── vim-markdown.lua    
│   │   ├── Normal                  # 常用插件
│   │   │   ├── Comment.lua
│   │   │   ├── dressing.lua
│   │   │   ├── nvim-tree.lua
│   │   │   ├── surrond.lua
│   │   │   └── vimtex.lua
│   │   └── Style                   # 美化配置
│   │       ├── lualine.lua
│   │       ├── nvim-treesitter.lua
│   │       └── tabline.lua
│   └── plugins.lua
├── README.md
└── UPDATE_INFO.md
```
