{
  description = "hey :D";
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    home-manager.url = "github:nix-community/home-manager";

  };
  outputs = { self, nixpkgs, home-manager}: let 
    system = "x86_64-linux";
    pkgs = import nixpkgs {inherit system;};
    name = "gabriel";
    in{
      home = home-manager.lib.homeManagerConfiguration {
        inherit pkgs;
         extraSpecialArgs = { inherit name; }; 

        #stateVersion = "24.05";
    modules = [ ./home.nix];
      };
    };
}


