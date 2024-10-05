{
  description = "hey :D";
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    home-manager.url = "github:nix-community/home-manager";
    nix-colors.url = "github:misterio77/nix-colors";


  };
  outputs = {self, nix-colors, nixpkgs, home-manager}: let 
    system = "x86_64-linux";
    pkgs = import nixpkgs {inherit system;};
    name = "gabriel";
    in{
      home = home-manager.lib.homeManagerConfiguration {
        inherit pkgs;
         extraSpecialArgs = { inherit name;  inherit nix-colors;}; 

        #stateVersion = "24.05";
    modules = [ ./home.nix];
      };
    };
}


