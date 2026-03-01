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
        gemini_cli = function()
          return require("codecompanion.adapters").extend("gemini_cli", {
            env = {
              GEMINI_API_KEY = os.getenv("GEMINI_API_KEY"),
            },
            schema = {
              model = {
                default = "gemini-3.1-pro", -- Latest flagship model (Feb 2026)
              },
              max_output_tokens = {
                default = 16384,
              },
            },
          })
        end,
      },
      strategies = {
        chat = {
          adapter = "gemini_cli",
          model = "gemini-3.1-pro",
          tools = {
            ["cmd_runner"] = { enabled = true },
            ["files"] = { enabled = true },
          },
        },
        inline = {
          adapter = "gemini_cli",
          model = "gemini-3.1-pro",
        },
        agent = {
          adapter = "gemini_cli",
          model = "gemini-3.1-pro",
        },
        cmd = {
          adapter = "gemini_cli",
          model = "gemini-3.1-pro",
        },
      },
      display = {
        chat = {
          show_settings = true,
          render_distilled = true,
          window = {
            layout = "vertical",
            width = 0.4,
          },
        },
      },
      opts = {
        log_level = "DEBUG",
      },
    })
  end,
}



