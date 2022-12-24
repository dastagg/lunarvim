local function setup_vim_test()
  vim.api.nvim_exec(
    [[
        " Test config
        let test#strategy = "neovim"
        let test#neovim#term_position = "belowright"
        let g:test#preserve_screen = 1
        let g:test#echo_command = 1
        " javascript
        " let g:test#javascript#runner = 'karma'
    ]],
    false
  )
end

local test = require "neotest"
test.setup {
  adapters = {
    require("neotest-python")({
      dap = { justMyCode = false },
      runner = "pytest",
    }),
    require("neotest-vim-test")({
      -- It is recommended to add any filetypes that are covered by another adapter to the ignore list
      ignore_file_types = { "python", "vim", "lua" },
    }),
    -- Or to only allow specified file types
    -- require("neotest-vim-test")({ allow_file_types = { "haskell", "elixir" } }),
  },
  setup_vim_test()
}
