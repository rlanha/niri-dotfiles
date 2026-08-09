# niri-dotfiles

Ricing niri + waybar + swaync + rofi on CachyOS (Lenovo G50-45 / AMD A8-6410).

Theme: solarized dark (`#002B36`), accent `#ffb52a`, wallpaper "gotham-forest".

## Komponen

| Bagian | Path di repo | Keterangan |
|---|---|---|
| niri | `niri/config.kdl` | WM, autostart, keybindings, focus-follows-mouse, overview backdrop |
| waybar | `waybar/` | Bar: workspace, window title, notifikasi, mpris, volume, brightness, network, jam |
| swaync | `swaync/` | Notification daemon + notification center |
| rofi | `rofi/` | App launcher dengan icon Tela, import tema solarized_alternate |
| wallpaper | `wallpapers/` | gotham-forest (3840x2160) |

## Dependensi

- `niri` `waybar` `swaync` `rofi` `swaybg` `swaylock` `swayidle` `cliphist`
- `wl-clipboard` `brightnessctl` `playerctl` `wpctl` (pipewire)
- Icon theme: `tela-nord-dark` (Tela icons via KDE store)

## Setup

1. Salin isi folder ke `~/.config/`:
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
3. Sesuaikan path user di `~/.config/niri/config.kdl` (`/home/soft` → user kamu).
4. Pilih sesi **niri** di sddm.

## Keybindings penting

| Shortcut | Aksi |
|---|---|
| `Mod+T` | Terminal (alacritty) |
| `Mod+D` | Launcher (rofi) |
| `Mod+Ctrl+V` | Clipboard history (cliphist + rofi) |
| `Mod+O` | Overview |
| `Mod+Q` | Tutup window |
| `Mod+J/K/L/H` | Navigasi window |
| `Super+Alt+L` | Lock screen (swaylock) |
| `Mod+Shift+V` | Toggle floating |

`Mod` = Super (Windows key).

## Catatan

- AMD Beema (Radeon R5): tambahkan `amdgpu.dc=0` di kernel cmdline kalau black screen.
- Scroll wheel di waybar: volume & brightness naik/turun.
- `focus-follows-mouse` aktif - arahkan kursor untuk pindah fokus.
