{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    vim
    wget
    killall

    slack
    discord-screenaudio
    telegram-desktop
    element-desktop
    steam
    
    prismlauncher-unwrapped
    jdk17

    emacs
    ripgrep
    findutils
    fd
    heroic
    ungoogled-chromium
    pipx
    pciutils
    wine
    python312
    nerdfonts

    qbittorrent
    zip

    cmatrix
  ];
}

