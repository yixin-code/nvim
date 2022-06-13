-- undotree 缓存存放路径
vim.g.undotree_dir = "~/.cache/nvim/undodir"
--require('lsp.setup') -- 

require("basic.basic")
require("basic.keyboards")
require("basic.plugins")

require("conf.windline") -- 状态栏
require("conf.gitsigns") -- 显示git 
require("conf.bufferline") -- 标签页
require("conf.nvim-tree") -- 目录树
require("conf.nvim-autopairs") -- 自动括号
require("conf.hop") -- 快速搜索
require("conf.vim-illuminate") -- 相同单词高亮
require("conf.AutoSave") -- 自动保存
require("conf.nvim-lastplace") -- 再次打开文件光标停留上次编辑位置
require("conf.auto-session") -- 只输入vi 会还原上次vi关闭状态
require("conf.nvim-spectre") -- 当前目录下跨文件替换
require("conf.toggleterm") -- 内置终端
require("conf.undotree") -- 关闭文件仍然可以撤销反撤销
require("conf.which-key") -- 键位绑定
require("conf.telescope") -- 模糊搜索
require("conf.nvim-lspconfig") -- lsp
require("conf.nvim-lsp-installer") -- 自动安装lsp
require("conf.fidget") -- lsp进度显示
require("conf.lsp_signature") -- 函数提示
require("conf.nvim-lightbulb") -- 灯泡提示
require("conf.nvim-cmp") -- 补全
require("lsp.clangd")
require("conf.nvim-treesitter") -- 高亮 彩虹括号
require("conf.Comment") -- 注释
require("conf.neoformat") -- 格式化
require("conf.vista") -- 右侧大纲
