require "sam.launch"
require "sam.options"
require "sam.keymaps"
-- require "sam.autocmds"

spec "sam.dashboard" --keep for now for metrics
spec "sam.colorscheme" --yes
spec "sam.treesitter"
spec "sam.whichkey" --yes
spec "sam.telescope" --yes
spec "sam.harpoon" --yes
spec "sam.lualine"
spec "sam.bufferline"
-- spec "sam.breadcrumbs"
spec "sam.none-ls"
-- spec "sam.copilot"
-- spec "sam.chatgpt"
spec "sam.mason" --yes
spec "sam.nvim-surround" -- yes
spec "sam.neogit"
spec "sam.neotest"
spec "sam.gitsigns" --yes
spec "sam.comment" --yes
spec "sam.todo-comments" --yes
spec "sam.autopairs" --yes
spec "sam.indentline" --yes
spec "sam.navic"
spec "sam.illuminate" --yes
spec "sam.toggleterm"
spec "sam.cmp"
spec "sam.lspconfig"
spec "sam.undotree" --yes
spec "sam.oil" --yes
spec "sam.markdown"
spec "sam.colorizer"
-- spec "sam.mini"
spec "sam.easy-align"



require "sam.lazy"

