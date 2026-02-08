-- more infor: https://codecompanion.olimorris.dev
return {
  "olimorris/codecompanion.nvim",
  version = "^18.0.0",
  opts = {},
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-treesitter/nvim-treesitter",
    "ravitemer/mcphub.nvim"
  },
  config = function()
    require("codecompanion").setup({
      adapters = {
        gemini = function()
          return require("codecompanion.adapters").extend("gemini", {
            schema = { model = { default = "gemini-3-flash" } },
          })
        end,
      },
      strategies = { chat = { adapter = "gemini" }, inline = { adapter = "gemini" } },
    })
  end
}
