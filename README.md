# AstroNvim Template Bad4iz

## keymaps

| операция                | сочетание клавиш |
| ----------------------- | ---------------- |
| Закрыть nvim            | `<leader>Q`      |
| Показать дерево истории | `gh`             |
| Найти историю           | `<Leader>fu`     |
|                         | ``               |

### Перемещение

| операция                                      | сочетание клавиш |
| --------------------------------------------- | ---------------- |
| чтобы вернуться к предыдущему местоположению. | `Ctrl` + `o`     |
| чтобы снова вернуться вперед.                 | `Ctrl` + `i`     |
| переход в нутри текущего файла                | `''`             |
| переход в начало строки                       | `0`              |
| переход к первому символу строки              | `_`              |
| переход к концу строки                        | `$`              |

---

**NOTE:** This is for AstroNvim v4+

A template for getting started with [AstroNvim](https://github.com/AstroNvim/AstroNvim)

## 🛠️ Installation

#### Make a backup of your current nvim and shared folder

```shell
mv ~/.config/nvim ~/.config/nvim.bak
mv ~/.local/share/nvim ~/.local/share/nvim.bak
mv ~/.local/state/nvim ~/.local/state/nvim.bak
mv ~/.cache/nvim ~/.cache/nvim.bak
```

#### Create a new user repository from this template

Press the "Use this template" button above to create a new repository to store your user configuration.

You can also just clone this repository directly if you do not want to track your user configuration in GitHub.

#### Clone the repository

```shell
git clone https://github.com/<your_user>/<your_repository> ~/.config/nvim
```

#### Start Neovim

```shell
nvim
```

## 🛠️ remove cache

```shell
rm -rf ~/.local/share/nvim
rm -rf  ~/.local/state/nvim
rm -rf  ~/.cache/nvim
```

## Создание отдельной конфигурации

### По шагам

#### 1. Установите нужную конфигурацию в соответствующую директорию. Например:
```shell
git clone https://github.com/bad4iz/AstroNVim_v4_config ~/.config/bad4izNvim
```

#### 2. Запуск с разными конфигурациями
```shell
NVIM_APPNAME=bad4izNvim nvim
```

#### 3. Удобство с alias
```shell
alias bn="NVIM_APPNAME=bad4izNvim nvim"
```
Перезапустите терминал или выполните:
```shell
source ~/.bashrc  # или source ~/.zshrc
```
Теперь вы можете запускать конфигурации просто так:
```shell
bn
```
### Или все вместе
```shell
git clone https://github.com/bad4iz/AstroNVim_v4_config ~/.config/bad4izNvim
echo 'alias bn="NVIM_APPNAME=bad4izNvim nvim"' >> ~/.zshrc
source ~/.zshrc
```

Теперь вы можете запускать конфигурации просто так:
```shell
bn
```






