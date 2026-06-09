if [[ "$TERM_PROGRAM" == "vscode" ]] && [[ -z "$CLAUDE_CODE_ENTRYPOINT" ]]; then
  autoload -Uz add-zle-hook-widget 2>/dev/null
  function _launch_clau_zle_init() {
    add-zle-hook-widget -d line-init _launch_clau_zle_init 2>/dev/null
    clear
    env -u VSCODE_GIT_ASKPASS_MAIN \
      -u VSCODE_GIT_ASKPASS_NODE \
      -u VSCODE_GIT_IPC_HANDLE \
      claude --dangerously-skip-permissions
    zle reset-prompt
  }
  add-zle-hook-widget line-init _launch_clau_zle_init 2>/dev/null
fi
