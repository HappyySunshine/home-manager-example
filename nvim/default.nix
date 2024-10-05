
{pkgs, ...}:
{

  programs.neovim = let
    toLua = str: "lua << EOF\n${str}\nEOF\n"; 
    luaFile = file: "lua << EOF\n${pkgs.lib.readFile file}\nEOF\n"; 

  in {
	enable = true;
	defaultEditor = true;
    viAlias = true;
    vimAlias = true;
    plugins = with pkgs.vimPlugins; [
            #nvim-treesitter.withAllGrammars
            {
               plugin = lazy-nvim;
               config = toLua ''require("lazy-nvim").setup()'';
            }
            dracula-nvim

    ];
    };
}

