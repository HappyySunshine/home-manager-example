{ nixpkgs, home-manager, name, pkgs, ... }:
{
      home.username = "${name}";
      home.homeDirectory = /home/${name};
      home.stateVersion = "24.11";
      home.packages = with pkgs; [
        whatsapp-for-linux
        telegram-desktop
        android-tools
        qbittorrent
        neofetch
        spotify
        discord
    ];
      programs.zsh={
          enable = true;
            autosuggestion = {
                enable = true;
            };
           initExtra = ''
                clear
                neofetch
        '';
        dotDir = ".config/zsh";
          oh-my-zsh={
              enable = true;
              theme = "jonathan";
              extraConfig = "";
              plugins = [
                "colorize"
                "cp"
                "sudo"
                "git"
              ];
        };
    };
}

