{
  description = "flake to install main system";

  inputs = {
   nixpkgs.url = "nixpkgs/nixos-24.11";
  };

  outputs = {self, nixpkgs, ...}:
  let
    lib = nixpkgs.lib;
  in {
  nixosConfigurations = {
    vrust = lib.nixosSystem {
      system = "x86_64-linux";
      odules = [
        ./configuration.nix
      ];
    };
  };
}
