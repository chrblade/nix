{
  description = "furry flake";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { nixpkgs, home-manager, ... }@inputs: 
    let
      system = "x86_64-linux";
      host = "nix-fox";
      nick = "chronoblade";
    in {
      nixosConfigurations.${host} = inputs.nixpkgs.lib.nixosSystem {
	specialArgs = { inherit inputs; };
	modules = [ ./system/default.nix ];
      };
      
      homeConfigurations.${nick} = inputs.home-manager.lib.homeManagerConfiguration {
	pkgs = inputs.nixpkgs.legacyPackages.${system};
	extraSpecialArgs = { inherit inputs; };
	modules = [ ./home/default.nix ];
      };
    };
}
