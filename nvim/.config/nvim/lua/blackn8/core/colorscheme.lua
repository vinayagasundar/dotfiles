local status, _ = pcall(vim.cmd, "colorscheme nightfox")
if not status then
  print("colorscheme is not installed")
end
