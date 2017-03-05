# ref: https://github.com/magicmonty/bash-git-prompt
# git clone https://github.com/magicmonty/bash-git-prompt.git .bash-git-prompt
# source ~/.bash-git-prompt/gitprompt.sh
override_git_prompt_colors() {
  GIT_PROMPT_THEME_NAME="Custom"

  GIT_PROMPT_START_USER="${Yellow}${Time12a}${ResetColor} ${Blue}${PathShort}${ResetColor}"
  GIT_PROMPT_START_ROOT="${GIT_PROMPT_START_USER}"
  GIT_PROMPT_END_USER=" $ "
  GIT_PROMPT_END_ROOT=" # "
}
reload_git_prompt_colors "Custom"
