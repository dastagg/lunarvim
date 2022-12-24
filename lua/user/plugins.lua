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
          python = "python3 -u",
          go = "go run .",
          javascript = "bun $fileName",
          typescript = "deno run",
          rust = "cd $dir && rustc $fileName && $dir/$fileNameWithoutExt",
        },
      }
    end,
    requires = "nvim-lua/plenary.nvim",
  },
}

