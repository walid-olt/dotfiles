return {
  "L3MON4D3/LuaSnip",
  config = function()
    local ls = require("luasnip")
    local s = ls.snippet
    local f = ls.function_node

    -- Helper function to generate the 42 file header block safely
    local function generate_42_header()
      local filename = vim.fn.expand("%:t")
      if filename == "" then
        filename = "unknown.c"
      end

      -- The available width between "/*   " and the trailing section is 49 characters
      if #filename > 49 then
        filename = filename:sub(1, 46) .. "..."
      end

      local padding = string.rep(" ", 49 - #filename)
      local filename_line = "/*   " .. filename .. padding .. "   :+:      :+:    :+:   */"

      local year = os.date("%Y")
      local month = os.date("%m")
      local day = os.date("%d")
      local user = vim.env.USER or "user"

      return {
        "/* ************************************************************************** */",
        "/*                                                                            */",
        "/*                                                        :::      ::::::::   */",
        filename_line,
        "/*                                                    +:+ +:+         +:+     */",
        "/*   By: " .. user .. " <" .. user .. "@student.42.fr>" .. string.rep(" ", math.max(0, 31 - #user * 2)) .. "++#  +:+       +#+        */",
        "/*                                                +#+#+#+#+#+   +#+           */",
        "/*   Created: " .. year .. "/" .. month .. "/" .. day .. " 00:00:00 by " .. user .. "       #+#    #+#             */",
        "/*   Updated: " .. year .. "/" .. month .. "/" .. day .. " 00:00:00 by " .. user .. "      ###   ########.fr       */",
        "/*                                                                            */",
        "/* ************************************************************************** */",
        "",
      }
    end

    -- Define snippets for C and C++
    local c_snippets = {
      s("doc", {
        f(generate_42_header, {}),
      }),
    }

    ls.add_snippets("c", c_snippets)
    ls.add_snippets("cpp", c_snippets)
  end,
}
