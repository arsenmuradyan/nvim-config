return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      ocamllsp = {
        get_language_id = function(_, ftype)
          return "ocaml"
        end,
        root_dir = function(fname)
          return require("lspconfig.util").root_pattern(
            "*.opam",
            "esy.json",
            "package.json",
            ".git",
            "dune-project",
            "dune-workspace",
            "*.ml"
          )(fname)
        end,
      },
    },
  },
}
