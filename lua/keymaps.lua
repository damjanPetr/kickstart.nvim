-- REMAP THE NORMAL keys


vim.keymap.set("n", "1", "N", { noremap = true, silent = true })
vim.keymap.set("n", "2", "N", { noremap = true, silent = true })
vim.keymap.set("n", "3", "N", { noremap = true, silent = true })
vim.keymap.set("n", "4", "n", { noremap = true, silent = true })
vim.keymap.set("n", "5", "%", { noremap = true, silent = true })
vim.keymap.set("n", "6", "n", { noremap = true, silent = true })
vim.keymap.set("n", "7", "n", { noremap = true, silent = true })
vim.keymap.set("n", "8", "n", { noremap = true, silent = true })
vim.keymap.set("n", "9", "n", { noremap = true, silent = true })
vim.keymap.set("n", "0", "n", { noremap = true, silent = true })




vim.keymap.set("n", "o", "i", { noremap = true, silent = true })
vim.keymap.set("n", "n", "a", { noremap = true, silent = true })
vim.keymap.set("n", "e", "k", { noremap = true, silent = true })
vim.keymap.set("n", "u", "j", { noremap = true, silent = true })
vim.keymap.set("n", "i", "ge", { noremap = true, silent = true })
vim.keymap.set("n", "I", "gE", { noremap = true, silent = true })

vim.keymap.set("n", "g", "b", { noremap = true, silent = true })
vim.keymap.set("n", "c", "w", { noremap = true, silent = true })

vim.keymap.set("n", "h", "h", { noremap = true, silent = true })
vim.keymap.set("n", "t", "l", { noremap = true, silent = true })



vim.keymap.set("n", ".", "_", { noremap = true, silent = true })
vim.keymap.set("n", "p", "$", { noremap = true, silent = true })


vim.keymap.set("n", "f", "u", { noremap = true, silent = true })
vim.keymap.set("n", "F", "U", { noremap = true, silent = true })



vim.keymap.set("n", "y", "v", { noremap = true, silent = true })


vim.keymap.set("n", "m", "{", { noremap = true, silent = true })
vim.keymap.set("n", "v", "}", { noremap = true, silent = true })

vim.keymap.set("n", "b", "/", { noremap = true, silent = true })


vim.keymap.set("n", "j", "y", { noremap = true, silent = true })
vim.keymap.set("n", "k", "p", { noremap = true, silent = true })




-- DELETE KEYS FOR G TO WORK

local modes = { "n", "v", "o", "x", "s" }

for _, mode in ipairs(modes) do
    local maps = vim.api.nvim_get_keymap(mode)
    for _, map in ipairs(maps) do
        if map.lhs:match("^g") then
            -- safely delete each g-prefixed mapping (ignore errors)
            pcall(vim.keymap.del, mode, map.lhs)
        end
    end
end
