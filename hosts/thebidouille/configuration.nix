{ config, pkgs, ... }:

{
	imports = [ ./hardware-configuration.nix ];

	boot.loader.systemd-boot.enable = true;
	boot.loader.efi.canTouchEfiVariables = true;

	networking.hostName = "thebidouille";

	networking.networkmanager.enable = true;

	time.timeZone = "Europe/Paris";

	services.xserver.xkb.layout = "fr";

	users.users.enzo = {
		isNormalUser = true;
		extraGroups = ["wheel" "networkmanager"];
		shell = pkgs.zsh;
	};

	services.xserver.enable = true;
	services.displayManager.sddm.enable = true;
	services.flatpak.enable = true;

	programs.hyprland.enable = true;
	programs.zsh.enable = true;	
	programs.zsh.ohMyZsh = {
		enable = true;
		theme = "agnoster";
		plugins = ["git" "docker" "sudo"];
	};

	environment.systemPackages = with pkgs; [
		# Core utils
		coreutils
		findutils
		gnugrep
		gnused
		gawk
		less
		diffutils

		# Process et systèmes
		psmisc
		procps
		util-linux

		# Réseau
		iproute2
		nettools
		curl
		wget
		
		# Compression / archives
		unzip
		zip
		p7zip
		gzip
		xz
		bzip2
		gnutar		
			
		gcc
		cmake
		pkg-config
		openssl.dev
		boost
		zlib

		htop
		eza
		bat

		# Dev
		nano
		git
		
		# Custom
		zsh
		oh-my-zsh
		oh-my-posh
		fastfetch
		hyprland
		kitty
		waybar
		rofi-wayland
		swww
		wl-clipboard
		brightnessctl
		pamixer
		font-awesome
		material-design-icons
		nerd-fonts.jetbrains-mono
	];

	system.stateVersion = "25.05";
}