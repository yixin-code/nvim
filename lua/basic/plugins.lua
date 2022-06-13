local packer = require("packer")
packer.startup(
{
	-- 所有插件的安装都书写在 function 中
	function()
		-- 包管理器
		use {
			"wbthomason/packer.nvim"
		}

		-- 目录树
		use {
			"kyazdani42/nvim-tree.lua",
			requires = {
				-- 依赖一个图标插件
				"kyazdani42/nvim-web-devicons"
			},
			config = function()
				require("conf.nvim-tree")
			end
		}

		-- 状态栏
		use {
			"windwp/windline.nvim",
			config = function()
				require("conf.windline")
			end
		}

		-- 状态栏显示 git 信息
		use {
			"lewis6991/gitsigns.nvim",
			requires = {
				-- 依赖于该插件（一款 Lua 开发使用的插件）
				"nvim-lua/plenary.nvim"
			},
			config = function()
				require("gitsigns").setup()
			end
		}

		-- 标签页
		use {
			"akinsho/bufferline.nvim",
			requires = {
				"famiu/bufdelete.nvim" -- 删除 buffer 时不影响现有布局
			},
			config = function()
				require("conf.bufferline")
			end
		}

		-- 自动匹配括号
		use {
			"windwp/nvim-autopairs",
			config = function()
				require("conf.nvim-autopairs")
			end
		}

		-- 快速跳转
		use {
			"phaazon/hop.nvim",
			config = function()
				require("conf.hop")
			end
		}

		-- 显示光标下相同词汇
		use {
			"RRethy/vim-illuminate",
			config = function()
				require("conf.vim-illuminate")
			end
		}

		-- 自动保存
		use {
			"Pocco81/AutoSave.nvim",
			config = function()
				require("conf.AutoSave")
			end
		}

		-- 再次打开文件光标停留上次编辑位置
		use {
			"ethanholz/nvim-lastplace",
			config = function()
				require("conf.nvim-lastplace")
			end
		}

		-- 只输入vi 会还原上次vi关闭状态
		use {
			"rmagatti/auto-session",
			config = function()
				require("conf.auto-session")
			end
		}

		-- 当前目录下跨文件替换
		use {
			"nvim-pack/nvim-spectre",
			requires = {
				"nvim-lua/plenary.nvim", -- Lua 开发模块
				"BurntSushi/ripgrep" -- 文字查找
			},
			config = function()
				require("conf.nvim-spectre")
			end
		}

		-- 内置终端
		use {
			"akinsho/toggleterm.nvim",
			config = function()
				require("conf.toggleterm")
			end
		}

		-- 关闭文件仍然可以撤销反撤销
		use {
			"mbbill/undotree",
			config = function()
				require("conf.undotree")
			end
		}

		-- 键位绑定器
		use {
			"folke/which-key.nvim",
			config = function()
				require("conf.which-key")
			end
		}

		-- 模糊查找
		use {
			"nvim-telescope/telescope.nvim",
			requires = {
				"nvim-lua/plenary.nvim", -- Lua 开发模块
				"BurntSushi/ripgrep", -- 文字查找
				"sharkdp/fd" -- 文件查找
			},
			config = function()
				require("conf.telescope")
			end
		}

		-- LSP 基础服务
		use {
			"neovim/nvim-lspconfig",
			config = function()
				require("conf.nvim-lspconfig")
			end
		}

		-- 自动安装 LSP
		use {
			"williamboman/nvim-lsp-installer",
			config = function()
				require("conf.nvim-lsp-installer")
			end
		}

		-- LSP 进度提示
		use {
			"j-hui/fidget.nvim",
			config = function()
				require("conf.fidget")
			end
		}

		-- 显示函数信息
		use {
			"ray-x/lsp_signature.nvim",
			config = function()
				require("conf.lsp_signature")
			end
		}

		-- 灯泡提示
		use {
			"kosayoda/nvim-lightbulb",
			requires = 'antoinemadec/FixCursorHold.nvim',
			config = function()
				require("conf.nvim-lightbulb")
			end
		}

		-- 自动代码补全系列插件
		use {
			"hrsh7th/nvim-cmp",  -- 代码补全核心插件，下面都是增强补全的体验插件
			requires = {
				{"onsails/lspkind-nvim"}, -- 为补全添加类似 vscode 的图标
				{"hrsh7th/vim-vsnip"}, -- vsnip 引擎，用于获得代码片段支持
				{"hrsh7th/cmp-vsnip"}, -- 适用于 vsnip 的代码片段源
				{"hrsh7th/cmp-nvim-lsp"}, -- 替换内置 omnifunc，获得更多补全
				{"hrsh7th/cmp-path"}, -- 路径补全
				{"hrsh7th/cmp-buffer"}, -- 缓冲区补全
				{"hrsh7th/cmp-cmdline"}, -- 命令补全
				{"f3fora/cmp-spell"}, -- 拼写建议
				{"rafamadriz/friendly-snippets"}, -- 提供多种语言的代码片段
				{"lukas-reineke/cmp-under-comparator"}, -- 让补全结果的排序更加智能
				{"tzachar/cmp-tabnine", run = "./install.sh"} -- tabnine 源,提供基于 AI 的智能补全
			},
			config = function()
				require("conf.nvim-cmp")
			end
		}

		-- 语法高亮
		use {
			"nvim-treesitter/nvim-treesitter",
			run = {":TSupdate"},
			requires = {
				"p00f/nvim-ts-rainbow" -- 彩虹括号
			},
			config = function()
				require("conf.nvim-treesitter")
			end
		}

		-- 代码注释
		use {
			"numToStr/Comment.nvim",
			requires = {
				"JoosepAlviste/nvim-ts-context-commentstring"
			},
			config = function()
				require("conf.Comment")
			end
		}

		-- 代码格式化
		use {
			"sbdchd/neoformat",
			config = function()
				require("conf.neoformat")
			end
		}

		-- 文件右侧大纲
		use {
			"liuchengxu/vista.vim",
			config = function()
				require("conf.vista")
			end
		}






	end,
	-- 使用浮动窗口
	config = {
		display = {
			open_fn = require("packer.util").float
		}
	}
}
)

-- 实时生效配置
vim.cmd(
[[
augroup packer_user_config
autocmd!
autocmd BufWritePost plugins.lua source <afile> | PackerCompile
augroup end
]]
)
