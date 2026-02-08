return {
  "olimorris/codecompanion.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-treesitter/nvim-treesitter",
    "hrsh7th/nvim-cmp",
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
        chat = { adapter = "gemini", model = "gemini-3-flash" },
        inline = { adapter = "gemini", model = "gemini-3-flash" },
        agent = { adapter = "gemini", model = "gemini-3-flash" },
        cmd = { adapter = "gemini", model = "gemini-3-flash" },
      },
    })
  end,
}
