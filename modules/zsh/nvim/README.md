# nvim initialization

1. Install nvim via homebrew

    ```sh
    brew install nvim
    ```

2. Install base16-manager via homebrew

    ```sh
    brew tap chrokh/tap
    brew install base16-manager
    ```

3. Install base16-manager themes

    ```sh
    base16-manager install chriskempson/base16-shell
    base16-manager install chriskempson/base16-vim
    base16-manager install nicodebo/base16-fzf
    ```

4. Open nvim and source rc file

    ```sh
    :source ~/.nvimrc
    ```

5. Install plugins while inside nvim

    ```sh
    :PlugInstall
    ```
