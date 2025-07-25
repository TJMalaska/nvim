return {
  -- NOTUSED
  'stevearc/conform.nvim',
  require('conform').setup {
    formatters_by_ft = {
      lua = { 'stylua' },
      -- Conform will run multiple formatters sequentially
      python = { 'isort', 'black' },
      -- You can customize some of the format options for the filetype (:help conform.format)
      rust = { 'rustfmt', lsp_format = 'fallback' },
      -- Conform will run the first available formatter
      javascript = { 'prettierd', 'prettier', stop_after_first = true },
      c = { 'clang-format' },
      cpp = { 'clang-format' },
      cmake = { 'cmake-format' },
    },
  },
  vim.api.nvim_create_autocmd('BufWritePre', {
    pattern = '*',
    callback = function(args)
      require('conform').format { bufnr = args.buf }
    end,
  }),
}
