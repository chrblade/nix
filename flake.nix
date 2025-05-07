{
  description = "furry flake";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    
    disko = {
      url = "github:nix-community/disko";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { self, nixpkgs, home-manager, disko, ... }@inputs: 
    let
      system = "x86_64-linux";
      host = "nix-fox";
      nick = "chronoblade";
    in {
      nixosConfigurations.${host} = inputs.nixpkgs.lib.nixosSystem {
	specialArgs = { inherit inputs; };
	modules = [ ./system/default.nix disko.nixosModules.disko ];
      };
      
      homeConfigurations.${nick} = inputs.home-manager.lib.homeManagerConfiguration {
	pkgs = inputs.nixpkgs.legacyPackages.${system};
	extraSpecialArgs = { inherit inputs; };
	modules = [ ./homeManager/default.nix ];
      };
    };
}
