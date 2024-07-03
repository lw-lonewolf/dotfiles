# LoneWolf's NeoVim Configuration Requirements
 `(This is incomplete, install the bloody thing yourselves)`
- Copy over the nvim config folder to ~/.config/nvim
- Install the following packages:

    ```sh
    cppcheck stylua luarocks ripgrep tree-sitter npm

    ```

- coc.nvim (Conquer of Completion) requires nodejs, run the following as root:

    ```sh
    curl -sL install-node.vercel.app/lts | bash
    ```

- cd into ~/.local/share/nvim/lazy/coc.nvim
- run the following commands:

  ```sh
     yarn install 
     yarn build
  ```

(make sure you have yarn installed with `npm install yarn`)
