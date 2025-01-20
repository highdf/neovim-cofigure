# nvim配置

<!-- vim-markdown-toc GFM -->

* [目录结构](#目录结构)

<!-- vim-markdown-toc -->

## 目录结构
```help
init.lua                                    # 入口文件
lua                                         # 配置所在目录
    | ------>basic.lua                      # 基本配置文件
    |------->maps.lua                       # 快捷键配置文件
    |------->colorchemes.lua                # 颜色主题配置文件
    |------->plugins.lua                    # 插件管理文件
    |------->plugin_config                  # 插件配置目录
            |------->lualine.lua
            |------->markdown-toc.lua
            |------->markdown-toc.lua
            |------->preview-nvim.lua
            |------->vim-markdown.lua
```
