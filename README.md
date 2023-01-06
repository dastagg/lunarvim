# Lunarvim Configuration

In this configuration, I am trying to replicate the same "structure" as the "Neovim from Scratch" configuration.

## Note:
I had an issue with running both LunarVim(lvim) and Neovim(nvim) configurations at the same time.
Even though they were separate configurations, they were sharing the Mason interface but not it's installed programs.
So if I opened lvim and installed something, then opened nvim, Mason would show that as being installed even though it wasn't available to nvim.

So I decided to delete my nvim configuration and just focus on the lvim configuration.

## 2023-01-06:

Added neogen for automatic docstring creation.
Added Jinja2 snippets (luasnip:friendly_snippets:djangohtml)

## 2022-12-24:
It is almost all the way there. There are some things left to do, but for now, it's good.

The configuration is mostly about Python and includes:

  PyLSP (instead of Pyright)

  DAP

  Neotest


I use Pyenv for virtualenvs and created a "lvim" virtualenv and installed pynvim in that. Then I connect that with LunarVim with:

```
vim.cmd("let g:python3_host_prog = '<full path to pyenv venv here>'")
```
This gets me "all green" in the "provider: health#provider#check" section.

