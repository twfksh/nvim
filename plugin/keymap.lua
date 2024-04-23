local nnoremap = require("toufiq.keymap_utils").nnoremap

-- General keymaps
nnoremap("-", vim.cmd.Ex, { desc = "Reveal netrw file/directory explorer" })
nnoremap("<Esc>", "<cmd>nohlsearch<CR>", { desc = "Clear search hl on pressing <Esc> in normal mode" })

-- Diagnostic keymaps
nnoremap("[d", vim.diagnostic.goto_prev, { desc = "Go to previous [D]iagnostic message" })
nnoremap("]d", vim.diagnostic.goto_next, { desc = "Go to next [D]iagnostic message" })
nnoremap("<leader>e", vim.diagnostic.open_float, { desc = "Show diagnostic [E]rror messages" })
nnoremap("<leader>q", vim.diagnostic.setloclist, { desc = "Open diagnostic [Q]uickfix list" })
