return require("packer").startup(function(use)
	use("wbthomason/packer.nvim")
	use("Mofiqul/vscode.nvim")
	use("lukas-reineke/indent-blankline.nvim")
	use("nvim-tree/nvim-web-devicons")
	use("lewis6991/gitsigns.nvim")
	use("williamboman/mason.nvim")
	use("williamboman/mason-lspconfig.nvim")
	use("neovim/nvim-lspconfig")
	use("mhartington/formatter.nvim")
	use("hrsh7th/nvim-cmp")
	use("hrsh7th/cmp-nvim-lsp")
	use("hrsh7th/cmp-buffer")
	use("hrsh7th/cmp-path")
	use("hrsh7th/cmp-vsnip")
	use("hrsh7th/vim-vsnip")
	use("hrsh7th/cmp-nvim-lsp-signature-help")
	use({
		"nvim-treesitter/nvim-treesitter",
		run = function()
			require("nvim-treesitter.install").update({ with_sync = true })
		end,
	})
	use("nvim-lua/plenary.nvim")
	use("nvim-telescope/telescope.nvim")
	use({ "nvim-telescope/telescope-fzf-native.nvim", run = "make" })
	use("numToStr/Comment.nvim")
	use("noib3/nvim-cokeline")
	use("windwp/nvim-autopairs")
	use({
		"kylechui/nvim-surround",
		tag = "*",
	})
	use({
		"nvim-neo-tree/neo-tree.nvim",
		branch = "v2.x",
		requires = {
			"nvim-lua/plenary.nvim",
			"nvim-tree/nvim-web-devicons",
			"MunifTanjim/nui.nvim",
		},
	})
	use("github/copilot.vim")
end)
