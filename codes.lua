return {
  {
    Div = function(el)
      if el.classes:includes("codechunk") then
        if quarto.doc.isFormat("pdf") then
          return el.content:walk {
            CodeBlock = function(el)
              local env = el.classes:includes("cell-code") and "CodeInput" or "CodeOutput"
              return pandoc.RawBlock("tex", "\\begin{" .. env .. "}\n" .. el.text .. "\n\\end{" .. env .. "}")
            end,
          }
        else
          return el.content
        end
      else
        return el
      end
    end,
  },
  {
    Code = function(el)
      if quarto.doc.isFormat("pdf") then
        return pandoc.RawInline("tex", "\\code{" .. el.text .. "}")
      else
        return el
      end
    end,
    CodeBlock = function(el)
      if quarto.doc.isFormat("pdf") and el.classes:includes("cell-code") then
        return pandoc.RawBlock("tex", "\\begin{Code}\n" .. el.text .. "\n\\end{Code}")
      else
        return el
      end
    end,
  }
}