if not (which fnm | is-empty) {
  ^fnm env --json | from json | load-env
  let node_path = match $nu.os-info.name {
    "windows" => $"($env.FNM_MULTISHELL_PATH)",
    _ => $"($env.FNM_MULTISHELL_PATH)/bin",
  }

  $env.PATH = ($env.PATH | prepend $node_path)
}
