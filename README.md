# niri-dotfiles

A niri rice: niri + waybar + swaync + rofi.

Solarized dark theme (`#002B36`) with accent `#ffb52a`, "gotham-forest" wallpaper.

## Components

| Part | Repo path | Description |
|---|---|---|
| niri | `niri/config.kdl` | WM: autostart, keybindings, focus-follows-mouse, overview backdrop |
| waybar | `waybar/` | Bar: workspaces, focused window, notifications, mpris, volume, brightness, network, clock |
| swaync | `swaync/` | Notification daemon + notification center |
| rofi | `rofi/` | App launcher with Tela icons, based on solarized_alternate |
| wallpaper | `wallpapers/` | gotham-forest (3840x2160) |

## Dependencies

- `niri` `waybar` `swaync` `rofi` `swaybg` `swaylock` `swayidle` `cliphist`
- `wl-clipboard` `brightnessctl` `playerctl` `wpctl` (pipewire)
- Icon theme: `tela-nord-dark` (Tela icons)

## Setup

1. Copy the folders into `~/.config/`:
   ```bash
   cp -r niri ~/.config/
   cp -r waybar ~/.config/
   cp -r swaync ~/.config/
   cp -r rofi ~/.config/
   ```
2. Wallpaper:
   ```bash
   mkdir -p ~/.local/share/wallpapers
   cp wallpapers/gotham-forest.png ~/.local/share/wallpapers/
   ```
3. Adjust the user path in `~/.config/niri/config.kdl` (replace `/home/soft` with your user).
4. Select the **niri** session in your display manager.

## Keybindings

| Shortcut | Action |
|---|---|
| `Mod+T` | Terminal (alacritty) |
| `Mod+D` | App launcher (rofi) |
| `Mod+Ctrl+V` | Clipboard history (cliphist + rofi) |
| `Mod+O` | Overview |
| `Mod+Q` | Close window |
| `Mod+J/K/L/H` | Window navigation |
| `Super+Alt+L` | Lock screen (swaylock) |
| `Mod+Shift+V` | Toggle floating |

`Mod` = Super (Windows key).

## Notes

- Add `amdgpu.dc=0` to the kernel command line if you get a black screen with amdgpu.
- Scroll over volume/brightness modules in waybar to adjust.
- `focus-follows-mouse` is enabled: move your cursor to change focus.
