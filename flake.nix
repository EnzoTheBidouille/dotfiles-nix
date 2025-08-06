{
  description = "NixOS base environment";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-25.05";
    home-manager.url = "github:nix-community/home-manager";
    home-manager.inputs.nixpkgs.follows = "nixpkgs";
  };

  outputs = { self, nixpkgs, home-manager, ... }: {
    nixosConfigurations.thebidouille = nixpkgs.lib.nixosSystem {
      system = "x86_64-linux";
      modules = [
        ./hosts/thebidouille/configuration.nix
        home-manager.nixosModules.home-manager
        {
          home-manager.users.enzo = import ./home/enzo/home.nix;
        }
      ];
    };
  };
}
