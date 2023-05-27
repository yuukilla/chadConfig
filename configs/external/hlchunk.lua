local present, hlchunk = pcall(require, "hlchunk")

if not present then
  return
end

hlchunk.setup {
  chunk = {
    enable = true,
    support_filetypes = {
      "*.ts",
      "*.tsx",
      "*.jsx",
      "*.js",
      "*.json",
      "*.lua",
      "*.vue",
      "*.php",
    },
    chars = {
      horizontal_line = "─",
      vertical_line = "│",
      left_top = "╭",
      left_bottom = "╰",
      right_arrow = ">",
    },
    style = "#83a598",
  },

  indent = {
    enable = false,
    use_treesitter = false,
    -- You can uncomment to get more indented line look like
    chars = {
      "│",
    },
    -- you can uncomment to get more indented line style
    style = {
      vim.fn.synIDattr(vim.fn.synIDtrans(vim.fn.hlID "Whitespace"), "fg", "gui"),
    },
    exclude_filetype = {
      dashboard = true,
      help = true,
      lspinfo = true,
      packer = true,
      checkhealth = true,
      man = true,
      mason = true,
      NvimTree = true,
      plugin = true,
    },
  },

  line_num = {
    enable = true,
    support_filetypes = {
      "...",
    },
    style = "#806d9c",
  },

  blank = {
    enable = false,
    chars = {
      "",
    },
    style = {
      vim.fn.synIDattr(vim.fn.synIDtrans(vim.fn.hlID "Whitespace"), "fg", "gui"),
    },
    exclude_filetype = "...",
  },
}
