-- keymappings [view all the defaults by pressing <leader>Lk]
lvim.leader = "space"
-- add your own keymapping
lvim.keys.normal_mode["<C-s>"] = ":w<cr>"
lvim.keys.normal_mode["<S-l>"] = ":BufferLineCycleNext<CR>"
lvim.keys.normal_mode["<S-h>"] = ":BufferLineCyclePrev<CR>"
-- unmap a default keymapping
-- vim.keymap.del("n", "<C-Up>")
-- override a default keymapping
-- lvim.keys.normal_mode["<C-q>"] = ":q<cr>" -- or vim.keymap.set("n", "<C-q>", ":q<cr>" )

-- Change Telescope navigation to use j and k for navigation and n and p for history in both input and normal mode.
-- we use protected-mode (pcall) just in case the plugin wasn't loaded yet.
-- local _, actions = pcall(require, "telescope.actions")
-- lvim.builtin.telescope.defaults.mappings = {
--   -- for input mode
--   i = {
--     ["<C-j>"] = actions.move_selection_next,
--     ["<C-k>"] = actions.move_selection_previous,
--     ["<C-n>"] = actions.cycle_history_next,
--     ["<C-p>"] = actions.cycle_history_prev,
--   },
--   -- for normal mode
--   n = {
--     ["<C-j>"] = actions.move_selection_next,
--     ["<C-k>"] = actions.move_selection_previous,
--   },
-- }

-- Use which-key to add extra bindings with the leader-key prefix
lvim.builtin.which_key.mappings["P"] = { "<cmd>Telescope projects<CR>", "Projects" }
lvim.builtin.which_key.mappings["r"] = {
  name = "+Run Code",
  c = { "<cmd>RunClose<cr>", "Close run window" },
  r = { "<cmd>RunCode<cr>", "Run code" },
  p = {
    name = "+Run project",
    t = { "<cmd>RunProject toggleterm<cr>", "Run file with toggleterm" },
    T = { "<cmd>RunProject tab<cr>", "Run file in tab window" },
    f = { "<cmd>RunProject float<cr>", "Run file in floating window" },
  },
  f = {
    name = "Run file",
    t = { "<cmd>RunFile toggleterm<cr>", "Run file with toggleterm" },
    T = { "<cmd>RunFile tab<cr>", "Run file in tab window" },
    f = { "<cmd>RunFile float<cr>", "Run file in floating window" },
  },
}
lvim.builtin.which_key.mappings["t"] = {
  name = "Test",
  a = { "<cmd>lua require('neotest').run.attach()<cr>", "Attach" },
  f = { "<cmd>lua require('neotest').run.run(vim.fn.expand('%'))<cr>", "Run File" },
  F = { "<cmd>lua require('neotest').run.run({vim.fn.expand('%'), strategy = 'dap'})<cr>", "Debug File" },
  l = { "<cmd>lua require('neotest').run.run_last()<cr>", "Run Last" },
  L = { "<cmd>lua require('neotest').run.run_last({ strategy = 'dap' })<cr>", "Debug Last" },
  n = { "<cmd>lua require('neotest').run.run()<cr>", "Run Nearest" },
  N = { "<cmd>lua require('neotest').run.run({strategy = 'dap'})<cr>", "Debug Nearest" },
  o = { "<cmd>lua require('neotest').output.open({ enter = true })<cr>", "Output" },
  S = { "<cmd>lua require('neotest').run.stop()<cr>", "Stop" },
  s = { "<cmd>lua require('neotest').summary.toggle()<cr>", "Summary" },
}
lvim.builtin.which_key.mappings["n"] = {
  name = "NeoDoc",
  c = { "<cmd>lua require('neogen').generate({ type = 'class' })<CR>", "Class" },
  e = { "<cmd>lua require('neogen').generate({ type = 'file' })<CR>", "File" },
  f = { "<cmd>lua require('neogen').generate({ type = 'function' })<CR>", "Function" },
  t = { "<cmd>lua require('neogen').generate({ type = 'type' })<CR>", "Type" },
}
-- local opts = { noremap = true, silent = true }
-- vim.api.nvim_set_keymap("n", "<Leader>nf", ":lua require('neogen').generate()<CR>", opts)
-- vim.api.nvim_set_keymap("n", "<Leader>nc", ":lua require('neogen').generate({ type = 'class' })<CR>", opts)
-- mappings that are not being use right now.


-- lvim.builtin.which_key.mappings["t"] = {
--   name = "+Trouble",
--   r = { "<cmd>Trouble lsp_references<cr>", "References" },
--   f = { "<cmd>Trouble lsp_definitions<cr>", "Definitions" },
--   d = { "<cmd>Trouble document_diagnostics<cr>", "Diagnostics" },
--   q = { "<cmd>Trouble quickfix<cr>", "QuickFix" },
--   l = { "<cmd>Trouble loclist<cr>", "LocationList" },
--   w = { "<cmd>Trouble workspace_diagnostics<cr>", "Workspace Diagnostics" },
-- }
