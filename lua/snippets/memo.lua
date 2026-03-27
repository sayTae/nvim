
local ls = require("luasnip")
local s = ls.snippet
local i = ls.insert_node
local f = ls.function_node

local fmt = require("luasnip.extras.fmt").fmt

ls.add_snippets("memo",
{

	s("「」",
	fmt("- [ ] {}", {
		i(1),
	})),

	s("link",
	fmt("[{}]({})", {
		i(1, "text"),
		i(2, "url"),
	})),


	s("きょう",
	fmt("{}", {
		f(function()
			return os.date("%Y-%m-%d")
		end),
	})),

	s("じかん",
	fmt("{}", {
		f(function()
			return os.date("%H:%M:%S")
		end),
	})),
	
	s("しょくじ",
	fmt(
		[[
		"{}"
		]], {
		f(function()
			return os.date("%y-%m-%d (%H:%M:%S)")
		end),
	})),

	s("なぜ",
	fmt(
		[[
		## {}

		### 思いつき
		〜{}

		### 違和感
		〜{}

		### 仮説
		〜{}
		]],
		{
			f(function()
				return os.date("%Y-%m-%d (%H:%M:%S)")
			end),
			i(1),
			i(2),
			i(3),
		}
	)),

	s("きょう",
	fmt(
		[[
		# {}

		## 今日やること
		- [ ] {}

		## メモ
		{}

		## 気づき
		{}
		]],
		{
			f(function()
				return os.date("%Y-%m-%d")
			end),

			i(1, ""),
			i(2, ""),
			i(3, ""),
		}
	)),


})
