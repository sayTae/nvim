
local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node

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


ls.add_snippets("c",
{
	s("init",{
        t({"#include <stdio.h>"}),
        t({"","","int main()"}),
        t({"","{",""}),
        t({"	"}),
		i(1),
        t({"","","	return 0;"}),
        t({"","}"})
    }),

	s("fn1",{
        i(1,{"int"}), t({" "}), i(2,{"fn1"}), t({"("}),
        i(3,{"int a"}),
        t({")","{","	"}),
		i(5,"/* Here's your masterpiece code. */"),
        t({"","","	return "}),
        i(4,{"a"}),
        t({";","}"})
    }),

	s("fn2",{
        i(1,{"int"}), t({" "}), i(2,{"fn2"}), t({"("}),
        i(3,{"int a"}), t({", "}), i(4,{"int b"}),
		t({")","{","	"}),
		i(6,"/* Here's your masterpiece code. */"),
        t({"","","	return "}),
        i(5,{"a + b"}),
        t({";","}"})
    }),

	s("fn3",{
		i(1,{"int"}), t({" "}), i(2,{"fn3"}), t({"("}),
		i(3,{"int a"}), t({", "}), i(4,{"int b"}), t({", "}), i(5,{"int c"}),
		t({")","{","	"}),
		i(7,"/* Here's your masterpiece code. */"),
		t({"","","    return "}),
		i(6,{"a + b + c"}),
		t({";","}"})
	}),

	s("vf1",{
        t({"void "}), i(1,{"vf1"}), t({"("}),
        i(2,{"int a"}),
        t({")","{","	"}),
		i(3,"/* Here's your masterpiece code. */"),
        t({"", "}"}),
    }),

	s("vf2",{
        t({"void "}), i(1,{"vf2"}), t({"("}),
        i(2,{"int a"}), t({", "}), i(3,{"int b"}),
        t({")","{","	"}),
		i(4,"/* Here's your masterpiece code. */"),
        t({"", "}"}),
	}),

	s("vf3",{
        t({"void "}), i(1,{"vf3"}), t({"("}),
        i(2,{"int a"}), t({", "}), i(3,{"int b"}), t({", "}), i(4,{"int c"}),
        t({")","{","	"}),
		i(5,"/* Here's your masterpiece code. */"),
        t({"", "}"}),
	}),

	-- s("trigger",{
	-- 	t({"After expanding, the cursor is here ->"}), i(1),
	-- 	t({"","After jumping forward once, cursor is here ->"}), i(2),
	-- 	t({"","After jumping once more, the snippet is exited there ->"}), i(0),
	-- })
})
