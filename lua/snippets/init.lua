
-- snippets/init.lua
local ls = require("luasnip")

-- Snippets load
require("snippets.c")
require("snippets.memo")
require("snippets.md")
-- require("snippets.md")
-- require("snippets.python")
-- require("snippets.go")
-- require("snippets.lua")


-- local function matcher(line_to_cursor, trigger)
--     -- look for match which ends at the cursor.
--     -- put all results into a list, there might be many capture-groups.
--     local find_res = { line_to_cursor:find(trigger .. "$") }
 
--     if #find_res > 0 then
--         -- if there is a match, determine matching string, and the
--         -- capture-groups.
--         local captures = {}
--         -- find_res[1] is `from`, find_res[2] is `to` (which we already know
--         -- anyway).
--         local from = find_res[1]
--         local match = line_to_cursor:sub(from, #line_to_cursor)
--         -- collect capture-groups.
--         for i = 3, #find_res do
--             captures[i - 2] = find_res[i]
--         end
--         return match, captures
--     else
--         return nil
--     end
-- end

-- local function engine(trigger)
--     -- don't do any special work here, can't precompile lua-pattern.
--     return matcher
-- end
