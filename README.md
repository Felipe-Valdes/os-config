# ❄️ Mi Configuración de NixOS

Configuración modular del sistema siguiendo una estructura organizada por servicios y entornos.

## 📂 Estructura del Proyecto
.
├── configuration.nix           # Archivo principal del sistema
├── hardware-configuration.nix  # Configuración de hardware (específica de la máquina)
├── modules/
│   ├── core/                   # Configuraciones base y del sistema
│   │   └── default.nix
│   ├── environment/            # Configuración de la terminal y editores
│   │   ├── default.nix
│   │   ├── neovim.nix
│   │   └── shell.nix           # Zsh, Starship y Aliases
│   ├── gui/                    # Entorno gráfico (i3wm)
│   │   ├── configs/            # Archivos de configuración (.conf)
│   │   │   ├── i3.conf         # Configuración de i3 (Atajos, Bloqueo)
│   │   │   └── i3status.conf   # Barra de estado
│   │   ├── default.nix         # Servidor X, LightDM e i3 setup
│   │   ├── audio.nix           # Pipewire / PulseAudio
│   │   ├── fonts.nix           # Fuentes del sistema
│   │   └── terminal.nix        # Alacritty setup
│   ├── hardware/               # Drivers y microcódigo
│   │   └── default.nix
│   ├── services/               # Servicios (SSH, Docker, etc.)
│   │   └── default.nix
│   └── users/                  # Gestión de usuarios (fvaldes)
│       └── default.nix
└── README.md
