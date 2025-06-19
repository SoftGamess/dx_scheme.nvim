local colors = {
Normal = {bg = "#191915" },
Visual = { bg = "#bfaa40" },
Comment = {fg = "#666666" },
["@comment"] = {link = "Comment"},
["@lsp.type.comment"] = {link = "Comment"},
Constant = {fg = "#4080bf" },
Character = {link = "Constant"},
["@constant"] = {link = "Constant"},
["@lsp.type.enumMember"] = {link = "Constant"},
Delimiter = {fg = "#40bfbf" },
Operator = {link = "Delimiter"},
["@punctuation"] = {link = "Delimiter"},
NvimColon = {link = "Delimiter"},
NvimParenthesis = {link = "Delimiter"},
NvimComma = {link = "Delimiter"},
NvimColon = {link = "Delimiter"},
NvimArrow = {link = "Delimiter"},
Identifier = {fg = "#bfbf40"},
["@parameter"] = {link = "Identifier"},
["@variable"] = {link = "Identifier"},
["@field"] = {link = "Identifier"},
["@property"] = {link = "Identifier"},
["@namespace"] = {link = "Identifier"},
["@lsp.type.parameter"] = {link = "Identifier"},
["@lsp.type.property"] = {link = "Identifier"},
["@lsp.type.variable"] = {link = "Identifier"},
NvimIdentifier = {link = "Identifier"},
Keyword = {fg = "#cf7c17" },
PreProc = {link = "Keyword"},
["@keyword"] = {link = "Keyword"},
Define = {link = "PreProc"},
Include = {link = "PreProc"},
Macro = {link = "PreProc"},
PreCondit = {link = "PreProc"},
["@preproc"] = {link = "PreProc"},
Search = {bg = "#40bfbf" },
TermCursor = {reverse = true},
Type = { link = "Constant" },
NvimNumberPrefix = { fg = "#bfbf40" },
NvimOptionSigil = {link = "Type"},
StorageClass = {link = "Type"},
Structure = {link = "Type"},
Typedef = {link = "Type"},
["@type"] = {link = "Type"},
}


vim.cmd("highlight clear")
vim.cmd("set background=dark")
vim.cmd("set t_Co=256")
vim.cmd("let g:colors_name='dx_scheme'")
vim.cmd("let colors_name='dx_scheme'")

for group, attrs in pairs(colors) do
  vim.api.nvim_set_hl(0, group, attrs)
end
