return {
  "olimorris/codecompanion.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-treesitter/nvim-treesitter",
    { "MeanderingProgrammer/render-markdown.nvim", ft = { "markdown", "codecompanion" } }, -- Optional: for pretty chat rendering
  },
  cmd = { "CodeCompanion", "CodeCompanionChat", "CodeCompanionActions" },
  config = function()
    require("codecompanion").setup({
      adapters = {
        gemini = function()
          return require("codecompanion.adapters").extend("gemini", {
            env = {
              -- api_key = "GEMINI_API_KEY", -- Or use os.getenv("GEMINI_API_KEY")
              api_key = "cmd:echo $GEMINI_API_KEY"
            },
            schema = {
              model = {
                default = "gemini-3-flash", -- Uses the latest high-speed model
              },
              max_output_tokens = {
                  default = 8192
              }
            },
          })
        end,
      },
      strategies = {
        chat = { adapter = "gemini", mode = "gemini-3-flash" },
        inline = { adapter = "gemini", mode = "gemini-3-flash" },
        agent = { adapter = "gemini", mode = "gemini-3-flash" },
        cmd = { adapter = "gemini", mode = "gemini-3-flash" },
      },
    })

    -- NvChad-style Keybindings
    local map = vim.keymap.set
    map({ "n", "v" }, "<leader>ca", "<cmd>CodeCompanionActions<cr>", { desc = "AI Actions" })
    map({ "n", "v" }, "<leader>cc", "<cmd>CodeCompanionChat Toggle<cr>", { desc = "AI Chat" })
    map("v", "ga", "<cmd>CodeCompanionChat Add<cr>", { desc = "Add to AI Chat" })

    -- Expand 'cc' into a full command in the command line
    -- vim.cmd([[cabcc CodeCompanion]])
  end,
}
