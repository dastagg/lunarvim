-- Additional Plugins
lvim.plugins = {
  {
    "folke/trouble.nvim",
    cmd = "TroubleToggle",
  },
  "mfussenegger/nvim-dap-python",
  {
    "CRAG666/code_runner.nvim",
    config = function()
      require("code_runner").setup {
        -- put here the commands by filetype
        filetype = {
          c = "gcc $fileName -o $fileNameWithoutExt && ./$fileNameWithoutExt",
          cpp = "g++ $fileName -o $fileNameWithoutExt && ./$fileNameWithoutExt",
          java = "cd $dir && javac $fileName && java $fileNameWithoutExt",
          python = "python -u",
          go = "go run .",
          javascript = "bun $fileName",
          typescript = "deno run",
          rust = "cd $dir && rustc $fileName && $dir/$fileNameWithoutExt",
        },
      }
    end,
    requires = "nvim-lua/plenary.nvim",
  },
  {
    "nvim-neotest/neotest",
    requires = {
      "nvim-lua/plenary.nvim",
      "nvim-treesitter/nvim-treesitter",
      "antoinemadec/FixCursorHold.nvim",
    },
  },
  -- neotest runners
  -- https://github.com/nvim-neotest/neotest#supported-runners
  { "nvim-neotest/neotest-python", },

  --[[ For any runner without an adapter you can use neotest-vim-test
  which supports any runner that vim-test supports. The vim-test adapter
  does not support some of the more advanced features such as
  error locations or per-test output. --]]
  -- https://github.com/vim-test/vim-test/
  { "vim-test/vim-test", },
  { "nvim-neotest/neotest-vim-test" },
  {
    -- You can generate docstrings automatically.
    "danymat/neogen",
    config = function()
      require("neogen").setup {
        enabled = true,
        languages = {
          python = {
            template = {
              annotation_convention = "reST",
            },
          },
        },
      }
    end,
  },
}
