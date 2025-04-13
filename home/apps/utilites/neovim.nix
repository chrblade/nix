{ pkgs, ... }: {
  programs.neovim = {
    enable = true;
    package = pkgs.neovim-unwrapped;
    defaultEditor = true;
    plugins = with pkgs.vimPlugins; [
		  vim-plug
			gruvbox-nvim
			yuck-vim
			bufferline-nvim
			nvim-web-devicons
			nvim-lspconfig
    ];
    extraConfig = ''
			 colorscheme gruvbox
       set tabstop=2
       set softtabstop=2
       set shiftwidth=2
			 set laststatus=0
			 set number
			 set shortmess+=I
    '';
  };
}
