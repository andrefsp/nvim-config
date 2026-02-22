require("codecompanion").setup({
  interactions = {
    chat = {
      adapter = "gemini_cli",
    },
    inline = {
      adapter = "gemini_cli",
    },
    cmd = {
      adapter = "gemini_cli"
    },
  },
  --strategies = {
  --  chat = {
  --    adapter = {
  --      name = "mistral",
  --      model = "mistral-large-latest",
  --    },
  --  },
  --  inline = {
  --    adapter = "mistral",
  --    model = "mistral-large-latest",
  --  },
  --  cmd = {
  --    adapter = "mistral",
  --    model = "mistral-large-latest",
  --  }
  --},
  display = {
    action_palette = {
      provider = "default",
    },
    inline = {
      layout = "vertical", -- vertical|horizontal|buffer
    },
  },
  opts = {
    log_level = "DEBUG", -- or "TRACE"
  },
  adapters = {
    acp = {
      gemini_cli = function()
        return require("codecompanion.adapters").extend("gemini_cli", {
          defaults = {
            auth_method = "oauth-personal", -- "oauth-personal"|"gemini-api-key"|"vertex-ai"
            timeout = 20000,                -- 20s
          },
          env = {
            GOOGLE_CLOUD_PROJECT = "dp-eng-productivity",
          },
        })
      end,
      --mistral_vibe = {

      --},
    },
    --http = {
    --  opts = {
    --    show_model_choices = true,
    --  },
    --  -- Define your custom adapters here
    --},
  },
})
