local M = {
  config = nil,
  join_lines = nil,
  lsp = nil,
  move_item = nil,
  open_cargo_toml = nil,
  parent_module = nil,
  runnables = nil,
  server_status = nil,
  ssr = nil,
  workspace_refresh = nil,
  utils = nil,
}

function M.setup(opts)
  local cached_commands = require("rust-tools.cached_commands")
  M.cached_commands = cached_commands

  local commands = require("rust-tools.commands")

  local config = require("rust-tools.config")
  M.config = config

  local join_lines = require("rust-tools.join_lines")
  M.join_lines = join_lines

  local lsp = require("rust-tools.lsp")
  M.lsp = lsp

  local move_item = require("rust-tools.move_item")
  M.move_item = move_item

  local open_cargo_toml = require("rust-tools.open_cargo_toml")
  M.open_cargo_toml = open_cargo_toml

  local parent_module = require("rust-tools.parent_module")
  M.parent_module = parent_module

  local runnables = require("rust-tools.runnables")
  M.runnables = runnables

  local server_status = require("rust-tools.server_status")
  M.server_status = server_status

  local ssr = require("rust-tools.ssr")
  M.ssr = ssr

  local workspace_refresh = require("rust-tools.workspace_refresh")
  M.workspace_refresh = workspace_refresh

  local utils = require("rust-tools.utils.utils")
  M.utils = utils

  config.setup(opts)
  commands.setup_lsp_commands()
end

return M
