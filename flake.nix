{
  description = "flake to install main system";

  inputs = {
   nixpkgs.url = "nixpkgs/nixos-24.11";
   home-manager.url = "github:nix-community/home-manager/release-24.11";
   home-manager.inputs.nixpkgs.follows = "nixpkgs";
  };

  outputs = {self, nixpkgs, home-manager, ...}:
  let
    system = "x86_64-linux";
    lib = nixpkgs.lib;
    pkgs = nixpkgs.legacyPackages.${system};
  in {
  nixosConfigurations = {
      vrust = lib.nixosSystem {
        inherit system;
        modules = [
          ./configuration.nix
        ];
      };
    };
  homeConfigurations = {
      tom = home-manager.lib.homeManagerConfiguration {
        inherit pkgs;
        modules = [
          ./home.nix
        ];
      };
    };
  };
}
