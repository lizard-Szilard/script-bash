# Script-bash

- [GitHub - awesome-lists/awesome-bash: A curated list of delightful Bash scripts and resources.](https://github.com/awesome-lists/awesome-bash)
- [Bash-it/bash-it](https://github.com/Bash-it/bash-it)
- [BASH Programming - Introduction HOW-TO: Variables](https://tldp.org/HOWTO/Bash-Prog-Intro-HOWTO-5.html)
- [Writing Good Bash Scripts](https://mresetar.github.io/2020-03-25-writing-good-bash-scripts/)
- [Linux Fu: Better Bash Scripting | Hackaday](https://hackaday.com/2017/07/21/linux-fu-better-bash-scripting/)
- [💻 My Linux desktop environment (2021 update)](https://blog.wains.be/2021/2021-10-10-my-desktop-environment/)


## Store the script

1. store the script in `/opt/bash-script/` add it to environment variable path
2. make script exucatble `chmod +x <filename.sh>`
3. add `alias` to `.bash_aliases`

- [How to make a programme executable anywhere in the SHELL](https://stackoverflow.com/questions/56981754/how-to-make-a-programme-executable-anywhere-in-the-shell)
- [Where/how should I store scripts?](https://unix.stackexchange.com/questions/604818/where-how-should-i-store-scripts)

## Description per file

- `editor_export.sh` this used for set `EDITOR` env

add this to `.bash_profile` to obtaining the export
```sh
if [[ -f ~/.editor_export.sh ]]; then
    command source ~/.editor_export.sh
fi
```

- `merge_search.sh`

The user can view notes that have been commented in the configuration file by merging the relevant configuration files together.
