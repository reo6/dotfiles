{ config, pkgs, ... }:

{
  imports = [ 
    ./packages.nix
  ];

  # Configure keymap in X11
  services.xserver.xkb = {
    layout = "us";
    variant = "";
    options = "caps:ctrl_modifier";
  };
}
