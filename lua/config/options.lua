local opt = vim.opt

-- Appearance
opt.number = true             -- Show line numbers
opt.relativenumber = true     -- Show relative line numbers
opt.cursorline = true         -- Highlight the current line
opt.termguicolors = true      -- Enable 24-bit RGB color in the TUI
opt.background = "dark"       -- Set the background to dark
opt.signcolumn = "yes"        -- Always show the sign column
opt.colorcolumn = "80"        -- Show a vertical line at column 80
opt.fillchars = { eob = " " } -- Change the character used for empty lines at the end of the buffer
opt.laststatus = 2            -- Always show the status line
opt.cmdheight = 1             -- Set the command-line height to 1 line
opt.showcmd = true            -- Show (partial) command in the last line of the screen
opt.scrolloff = 10            -- Minimum number of lines to keep above and below the cursor

-- Indentation and Formatting
opt.tabstop = 2        -- Number of spaces a tab counts for
opt.shiftwidth = 2     -- Number of spaces to use for each step of autoindent
opt.expandtab = true   -- Convert tabs to spaces
opt.autoindent = true  -- Copy indent from current line when starting a new line
opt.smartindent = true -- Do smart autoindenting when starting a new line
opt.breakindent = true -- Wrapped lines will be visually indented
opt.smarttab = true    -- Insert blanks according to 'shiftwidth'
opt.wrap = true        -- Wrap long lines

-- Search
opt.hlsearch = true   -- Highlight all matches of the last search pattern
opt.ignorecase = true -- Ignore case in search patterns
opt.smartcase = true  -- Override 'ignorecase' if search pattern contains uppercase characters

-- File Handling
opt.backup = false   -- Don't make a backup before overwriting a file
opt.swapfile = false -- Don't use a swapfile for the buffer
opt.undofile = true  -- Save undo history to a file

-- File Finding
opt.path:append({ "**" })                     -- Search down into subfolders for file finding
opt.wildignore:append({ "*/node_modules/*" }) -- Ignore node_modules in file and directory matching

-- Editing
opt.backspace = "indent,eol,start"  -- Allow backspacing over autoindent, line breaks, and start of insert
opt.clipboard:append("unnamedplus") -- Use the system clipboard
opt.timeoutlen = 300                -- Time in milliseconds to wait for a mapped sequence to complete
opt.updatetime = 300                -- Decrease update time for better user experience

-- Window Splitting
opt.splitright = true    -- Put new windows right of the current one
opt.splitbelow = true    -- Put new windows below the current one
opt.splitkeep = "cursor" -- Keep cursor in the same position when splitting

-- Miscellaneous
opt.mouse = ""   -- Disable mouse support
opt.list = false -- Don't show hidden characters (tabs, EOL, etc.)
