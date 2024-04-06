-- AstroCommunity: import any community modules here
-- We import this file in `lazy_setup.lua` before the `plugins/` folder.
-- This guarantees that the specs are processed before any user plugins.

---@type LazySpec
return {
  "AstroNvim/astrocommunity",
  { import = "astrocommunity.colorscheme.catppuccin" },
  -- use Alt + {h, j, k, l} to move visually selected blocks
  { import = "astrocommunity.editing-support.vim-move" },
  -- Allows cycling through a history of yanks after pasting
  { import = "astrocommunity.editing-support.yanky-nvim" },
  {
    "gbprod/yanky.nvim",
    opts = {
      ring = {
        storage = "memory",
      },
    },
  },
  -- Type s + two-character patterns to jump anywhere in the current view
  { import = "astrocommunity.indent.mini-indentscope" },
  -- Live Markdown preview
  { import = "astrocommunity.markdown-and-latex.peek-nvim" },
  -- Filetype plugin for LaTeX files
  { import = "astrocommunity.markdown-and-latex.vimtex" },
  -- Operate on indent scope. Use "ii" or "ai" to select "inside indent" or "around indent" and "]i" and "[i" for goto top/bottom
  { import = "astrocommunity.motion.leap-nvim" },
  -- "w", "e", "b" moves by subwords and skips insignificant punctuation
  { import = "astrocommunity.motion.nvim-spider" },
  -- "ys{motion}{char}" to add, "ds{motion}{char}" to delete and "cs{motion}{char}" to change surround characters
  { import = "astrocommunity.motion.nvim-surround" },
  -- Extends "%" functionality to include language specific keywords and adds motions for matched pairs (e.g. i%)
  { import = "astrocommunity.motion.vim-matchup" },
  -- extension packs for language support
  { import = "astrocommunity.pack.bash" },
  { import = "astrocommunity.pack.cmake" },
  { import = "astrocommunity.pack.cpp" },
  { import = "astrocommunity.pack.json" },
  { import = "astrocommunity.pack.lua" },
  { import = "astrocommunity.pack.markdown" },
  { import = "astrocommunity.pack.python-ruff" },
  { import = "astrocommunity.pack.toml" },
  { import = "astrocommunity.pack.yaml" },
  -- Disable search highlighting when done searching and re-enable it when seraching again
  { import = "astrocommunity.syntax.vim-cool" },
  -- Synchronize clipboards of os, tmux and vim. Requires "set -g set-clipboard on" in tmux.conf
  { import = "astrocommunity.terminal-integration.vim-tmux-yank" },
  -- Blocks repeated keys and prints hints about more efficient commands
  { import = "astrocommunity.workflow.hardtime-nvim", enabled = false },

  -- import/override with your plugins folder
}
