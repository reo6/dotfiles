{ pkgs, ... }:

{
  nixpkgs.overlays = [
    (import ./nix-overlays/overlay.nix)
  ];

  environment.systemPackages = with pkgs; [
    git
    vim
    neovim
    tmux
    wget
    killall
    appimage-run

    slack
    discord-screenaudio
    telegram-desktop
    element-desktop
    homebank
    obs-studio
    obs-studio-plugins.droidcam-obs
    droidcam
    teamviewer
    anytype
    
    prismlauncher-unwrapped
    jdk17

    emacs
    ripgrep
    findutils
    fd
    heroic
    ungoogled-chromium
    vivaldi
    pipx
    pciutils

    wine
    wine64
    wine-staging
    winetricks
    bottles

    python312
    nerdfonts
    samba

    zip

    cmatrix

    nebula

    libreoffice-qt6-still
    rclone

    vscode-fhs

    openssl

    android-tools
    android-studio

    icewm
    tigervnc
    vlc
    steam-run

    obsidian

    # Music
    carla
    ardour
    vital
    distrho
    reaper
    yabridge
    yabridgectl
    x42-plugins
    x42-avldrums
    bitwig-studio
  ];
}

