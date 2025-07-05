return {
  "saghen/blink.cmp",
  version = "1.*",
  opts = {
    -- C-space: Open menu or open docs if already open
    -- C-n/C-p or Up/Down: Select next/previous item
    -- C-e: Hide menu
    -- C-k: Toggle signature help (if signature.enabled = true)
    keymap = { preset = "super-tab" },

    appearance = {
      nerd_font_variant = "mono",
    },
    completion = {
      documentation = { auto_show = true, auto_show_delay_ms = 0 },
      ghost_text = { enabled = true },
      keyword = { range = "full" },
    },
    sources = {
      default = { "lazydev", "lsp", "path", "snippets" },
      providers = {
        lazydev = {
          name = "LazyDev",
          module = "lazydev.integrations.blink",
          score_offset = 100,
        },
      },
    },
    fuzzy = { implementation = "rust" },
  },
  opts_extend = { "sources.default" },
}
