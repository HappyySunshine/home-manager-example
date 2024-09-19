export NIXPKGS_ALLOW_UNFREE=1
nix build --experimental-features 'nix-command flakes' --impure .#home.activationPackage
./result/activate

