return {
  "windwp/nvim-autopairs",
  event = {"InsertEnter", },
  config = function()
    local autopair = require("nvim-autopairs")
    autopair.setup({
      fast_wrap = {
        map = "<M-e>",
        chars = { "{", "[", "(", '"', "'" },
        pattern = string.gsub([[ [%'%"%)%>%]%)%}%,] ]], "%s+", ""),
        offset = 0,
        end_key = "e",
        keys = "qwertyuiopzxcvbnmasdfghjkl",
        check_comma = true,
        hightlight = "Search",
        highlight_group = "Search",
        highlight_char = "Search",
      }
    })
  end
}

