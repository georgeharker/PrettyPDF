-- notes-box.lua
function Div(el)
  if el.classes:includes("notes") then
    return {
      pandoc.RawBlock("latex", "\\begin{speakernotes}"),
      table.unpack(el.content),
      pandoc.RawBlock("latex", "\\end{speakernotes}"),
    }
  end
end

