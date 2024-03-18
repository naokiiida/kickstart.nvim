return {
  "epwalsh/obsidian.nvim",
  version = "*",  -- recommended, use latest release instead of latest commit
  lazy = false,
  ft = "markdown",
  -- Replace the above line with this if you only want to load obsidian.nvim for markdown files in your vault:
  -- event = {
  --   -- If you want to use the home shortcut '~' here you need to call 'vim.fn.expand'.
  --   -- E.g. "BufReadPre " .. vim.fn.expand "~" .. "/my-vault/**.md"
  --   "BufReadPre path/to/my-vault/**.md",
  --   "BufNewFile path/to/my-vault/**.md",
  -- },
  dependencies = {
    -- Required.
    "nvim-lua/plenary.nvim",

    -- see below for full list of optional dependencies 👇
  },
  opts = {
    workspaces = {
      {
        name = "personal",
        path = "~/vaults/personal",
      },
      -- {
      --   name = "work",
      --   path = "~/vaults/work",
      -- },
    },
    notes_subdir = "Umami",
    daily_notes =  {
      folder = "DailyNote",
      template = 'template, dailyNote.md',
    },
    new_notes_location = "notes_subdir",
    templates = {
      subdir =  "Templates",
      date_format = "%Y-%m-%d",
      time_format = "%H:%M"
    },
    attatchments = {
      img_folder = "Sources/Images"
    }
    -- see below for full list of options 👇
  },
  keys = {
    { "<leader>od", "<cmd>ObsidianDailies<cr>", desc = "Search Obsidian Dailies" },
    { "<leader>os", "<cmd>ObsidianSearch<cr>", desc = "Search Obsidian notes" },
    { "<leader>oo", "<cmd>ObsidianQuickSwitch<cr>", desc = "Switch Obsidian files" },
    { "<leader>ot", "<cmd>ObsidianTemplate<cr>", desc = "Search Obsidian Templates" },
    { "<leader>o#", "<cmd>ObsidianTags<cr>", desc = "Search Obsidian Tags" },
    { "<leader>o0", "<cmd>ObsidianToday<cr>", desc = "Open Today's note" },
    { "<leader>o1", "<cmd>ObsidianYesterday<cr>", desc = "Open Yesterday's note" },
    { "<leader>o2", "<cmd>ObsidianTomorrow<cr>", desc = "Open Tomorrow's note" },
    { "<leader>on", "<cmd>ObsidianNew<cr>", desc = "Open New note" },
  },
}
