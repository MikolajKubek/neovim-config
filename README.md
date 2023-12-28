# MikolajKubek's neovim config files
Neovim setup mostly for rust development but shouldn't have any serious issues with other stacks.
Plugins are managed with [Lazy](https://github.com/folke/lazy.nvim), each has its own lua config file under `lua/plugins` directory.

## List of plugins
- [git signs](https://github.com/lewis6991/gitsigns.nvim)
- [lsp zero](https://github.com/VonHeikemen/lsp-zero.nvim)
- [nvim tree](https://github.com/nvim-tree/nvim-tree.lua)
- [telescope](https://github.com/nvim-telescope/telescope.nvim)
- [nvim treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
- [undotree](https://github.com/mbbill/undotree)

## Important mappings

| Plugin | Mapping | Description |
| --- | --- | --- |
| telescope | `<leader>pf` | fuzzy finder |
| telescope | `<C-p>` | fuzzy finder - git files |
| telescope | `<leader>ps` | fuzzy finder with grep |
| gitsigns | `<leader>hd` | diff current file |
