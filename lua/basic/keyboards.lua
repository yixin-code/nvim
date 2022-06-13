-- 改建
-- lua vim.keybinds.gmap == vim.api.nvim_set_keymap
vim.keybinds = {
	gmap = vim.api.nvim_set_keymap,
	bmap = vim.api.nvim_buf_set_keymap,
	dgmap = vim.api.nvim_del_keymap,
	dbmap = vim.api.nvim_buf_del_keymap,
	opts = {noremap = true, silent = true}
}

-- 拆分窗口 vs横 ss纵 s+hjkl切换窗口 atl+方向键改变窗口大小
vim.keybinds.gmap("n","vs",":vsplit<Return><C-w>w",vim.keybinds.opts)
vim.keybinds.gmap("n","ss",":split<Return><C-w>w",vim.keybinds.opts)

vim.keybinds.gmap("n","<C-h>","<C-w>h",vim.keybinds.opts)
vim.keybinds.gmap("n","<C-j>","<C-w>j",vim.keybinds.opts)
vim.keybinds.gmap("n","<C-k>","<C-w>k",vim.keybinds.opts)
vim.keybinds.gmap("n","<C-l>","<C-w>l",vim.keybinds.opts)

vim.keybinds.gmap("n","<M-left>","<C-w><",vim.keybinds.opts)
vim.keybinds.gmap("n","<M-right>","<C-w>>",vim.keybinds.opts)
vim.keybinds.gmap("n","<M-up>","<C-w>+",vim.keybinds.opts)
vim.keybinds.gmap("n","<M-down>","<C-w>-",vim.keybinds.opts)

-- 插入模式下 CTRL+hjkl 移动
-- vim.keybinds.gmap("i","<C-h>","<Left>",vim.keybinds.opts)
-- vim.keybinds.gmap("i","<C-j>","<Down>",vim.keybinds.opts)
-- vim.keybinds.gmap("i","<C-k>","<Up>",vim.keybinds.opts)
-- vim.keybinds.gmap("i","<C-l>","<Right>",vim.keybinds.opts)

-- 正常模式下 CTRL+jk 移动五行
vim.keybinds.gmap("n","<C-j>","5j",vim.keybinds.opts)
vim.keybinds.gmap("n","<C-k>","5k",vim.keybinds.opts)

-- L H 跳转到行首行尾
vim.keybinds.gmap("n", "H", "^", vim.keybinds.opts)
vim.keybinds.gmap("v", "H", "^", vim.keybinds.opts)
vim.keybinds.gmap("n", "L", "$", vim.keybinds.opts)
vim.keybinds.gmap("v", "L", "$", vim.keybinds.opts)

-- 插入模式下CTRL s 保存
vim.keybinds.gmap("i", "<C-s>", "<ESC>:w<CR>", vim.keybinds.opts)

-- ctrl q 退出
vim.keybinds.gmap("n", "<C-q>", ":q<CR>", vim.keybinds.opts)

-- CTRL a全选
vim.keybinds.gmap("n", "<C-a>", "gg<S-v>G", vim.keybinds.opts)

-- ESC 取消高亮
vim.keybinds.gmap("n", "<ESC>", ":nohlsearch<CR>", vim.keybinds.opts)

-- 目录树
-- 按leader+e打开文件树
-- o打开 a添加 r重命名 x剪切 c复制 d删除 y复制 Y复制相对路径 gy复制绝对路径
-- p粘贴 tab添加到缓冲区 CTRL+x水平分屏 CTRL+r重命名 I隐藏文件
vim.keybinds.gmap("n", "<leader>e", "<cmd>NvimTreeToggle<CR>", vim.keybinds.opts)

-- 标签页
-- alt+k后一个 alt+j前一个 alt+q退出
vim.keybinds.gmap("n", "<M-j>", "<cmd>BufferLineCyclePrev<CR>", vim.keybinds.opts)
vim.keybinds.gmap("n", "<M-k>", "<cmd>BufferLineCycleNext<CR>", vim.keybinds.opts)
vim.keybinds.gmap("n", "<M-q>", "<cmd>Bdelete!<CR>", vim.keybinds.opts)

-- 快速搜索 单词<leader>sd 行<leader>sh
vim.keybinds.gmap("n", "<leader>sd", "<cmd>HopWord<CR>", vim.keybinds.opts)
vim.keybinds.gmap("n", "<leader>sh", "<cmd>HopLine<CR>", vim.keybinds.opts)

-- 当前目录下全局替换
-- 全部替换<leader>qh 只替换当前文件<leader>zh 全项目中搜索当前单词<leader>xz
-- <leader>r替换
vim.keybinds.gmap("n", "<leader>qh", "<cmd>lua require('spectre').open()<CR>", vim.keybinds.opts)
vim.keybinds.gmap("n", "<leader>zh", "viw:lua require('spectre').open_file_search()<CR>", vim.keybinds.opts)
vim.keybinds.gmap("n", "<leader>xz", "<cmd>lua require('spectre').open_visual({select_word=true})<CR>", vim.keybinds.opts)

-- 浮动窗口
-- 要需创建多个终端，可：
-- 1 <键位> leader tt
-- 2 <键位>
-- ... <键位>
-- 另外，上面我们新建了 2 个特殊终端，所以普通终端的顺序应该是从 3 开始
-- 退出终端插入模式
vim.keybinds.gmap("t", "<Esc>", "<C-\\><C-n>", vim.keybinds.opts)
-- 打开普通终端
--vim.keybinds.gmap("n", "<leader>tt", "<cmd>exe v:count.'ToggleTerm'<CR>", vim.keybinds.opts)
-- 打开浮动终端
vim.keybinds.gmap("n", "<leader>fd", "<cmd>lua require('toggleterm').float_toggle()<CR>", vim.keybinds.opts)
-- 打开lazy git 终端
--vim.keybinds.gmap("n", "<leader>tg", "<cmd>lua require('toggleterm').lazygit_toggle()<CR>", vim.keybinds.opts)
-- 打开或关闭所有终端
--vim.keybinds.gmap("n", "<leader>ta", "<cmd>ToggleTermToggleAll<CR>", vim.keybinds.opts)

-- 查看缓存
vim.keybinds.gmap("n", "<leader>hc", ":UndotreeToggle<CR>", vim.keybinds.opts)

-- 模糊搜索
-- 查找文件wj 查找文字wz  查找marks标记ma
-- <CR> 打开选中的搜索结果
-- <Tab> 选中当前的搜索结果，可搭配 <CR> 一次性打开多个
-- <C-v> 垂直拆分打开选中的搜索结果
-- <C-c> 退出搜索框
-- <C-n> 选择下一项目（插入模式下）
-- <C-p> 选择上一个项目（插入模式下）
-- j     选择下一个项目（普通模式下）
-- k     选择上一个项目（普通模式下）
vim.keybinds.gmap("n", "<leader>wj", "<cmd>Telescope find_files theme=dropdown<CR>", vim.keybinds.opts)
vim.keybinds.gmap("n", "<leader>wz", "<cmd>Telescope live_grep theme=dropdown<CR>", vim.keybinds.opts)
-- 查找特殊符号
vim.keybinds.gmap("n", "<leader>fb", "<cmd>Telescope buffers theme=dropdown<CR>", vim.keybinds.opts)
-- 查找帮助文档
vim.keybinds.gmap("n", "<leader>fh", "<cmd>Telescope help_tags theme=dropdown<CR>", vim.keybinds.opts)
-- 查找最近打开的文件
vim.keybinds.gmap("n", "<leader>fo", "<cmd>Telescope oldfiles theme=dropdown<CR>", vim.keybinds.opts)
-- 查找 marks 标记
vim.keybinds.gmap("n", "<leader>ma", "<cmd>Telescope marks theme=dropdown<CR>", vim.keybinds.opts)

-- 格式化
vim.keybinds.gmap("n", "<leader>gs", "<cmd>Neoformat<CR>", vim.keybinds.opts)

-- 右侧大纲
vim.keybinds.gmap("n", "<leader>i", "<cmd>Vista!!<CR>", vim.keybinds.opts)
