
local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node
local fmt = require("luasnip.extras.fmt").fmt


ls.add_snippets("c",
{

	-- init 文:
	s("init", fmt([[
	#include <stdio.h>

	int main() {{

		{}

		return 0;
	}}
	]], { i(1, "") })),

	-- if 文:
	s("if", fmt([[
	if ({}) {{
		{}
	}}
	]], { i(1, "condition"), i(2, "// body") })),

	-- for 文:
	s("for", fmt([[
	for ({}; {}; {}) {{
		{} 
	}}
	]], {
		i(1, "int i = 0"),     -- 初期化
		i(2, "i < 10"),        -- 条件式
		i(3, "i++"),           -- 更新式
		i(4, "sum += i;")      -- 繰り返し処理
	})),

	-- while 文:
	s("wh", fmt([[
	while ({}) {{
		{}
	}}
	]], { i(1, "condition"), i(2, "// body") })),

	-- pnf 文:
	s("pnf", fmt([[printf("{}{}", {});]], {
		i(1, ""),           -- 문자열 부분
		i(2, ""),           -- 추가 포맷 지정 가능 (옵션)
		i(3)                -- 출력 변수
	})),

	-- pnf_s 文:
	s("pnf_s", fmt([[printf("{}{}", {});]], {
		i(1, "sentence"),   -- 출력 문자열
		i(2, ""),           -- 포맷 옵션 필요 없으면 빈 문자열
		i(3, "var")         -- 변수
	})),

	-- scf 文:
	s("scf", fmt([[scanf("{}",&{});]], {
		i(1, "format"),     -- scanf 문자열
		i(2, "var")         -- 변수
	})),


	-- 関数 fn1: 引数1個
	s("fn1", fmt([[
	{} {}({}) {{ 
		{5} 
		return {4}; 
	}}
	]], {
		i(1, "int"),                    -- 戻り値型
		i(2, "fn1"),                    -- 関数名
		i(3, "int a"),                  -- 引数1
		i(4, "b"),                      -- 戻り値 변수
		i(5, "/* 処理内容 */")          -- 処理内容
	})),


	-- 関数 fn2: 引数2個
	s("fn2", fmt([[
	{} {}({}, {}) {{
		{6}
		return {5}; 
	}}
	]], {
		i(1, "int"),                    -- 戻り値型
		i(2, "fn2"),                    -- 関数名
		i(3, "int a"),                  -- 引数1
		i(4, "int b"),                  -- 引数2
		i(5, "a + b"),                  -- 戻り値
		i(6, "/* 処理内容の例 */"),     -- 処理内容
	})),

	-- 関数 fn3: 引数3個
	s("fn3", fmt([[
	{} {}({}, {}, {}) {{
		{7}
		return {6};
	}}
	]], {
		i(1, "int"),                    -- 戻り値型
		i(2, "fn3"),                    -- 関数名
		i(3, "int a"),                  -- 引数1
		i(4, "int b"),                  -- 引数2
		i(5, "int c"),                  -- 引数3
		i(6, "a + b + c"),              -- 戻り値
		i(7, "/* 処理内容の例 */"),     -- 処理内容
	})),

	-- fn1: 引数1個
	s("ff1", fmt([[
	void {}({}) {{
		{}
	}}
	]], {
		i(1, "fn1"),       -- 関数名
		i(2, "int a"),     -- 引数1
		i(3, "/* 処理内容 */")
	})),

	-- fn2: 引数2個
	s("ff2", fmt([[
	void {}({}, {}) {{
		{}
	}}
	]], {
		i(1, "fn2"),       -- 関数名
		i(2, "int a"),     -- 引数1
		i(3, "int b"),     -- 引数2
		i(4, "/* 処理内容 */")
	})),

	-- fn3: 引数3개
	s("ff3", fmt([[
	void {}({}, {}, {}) {{
		{}
	}}
	]], {
		i(1, "fn3"),       -- 関数명
		i(2, "int a"),     -- 引数1
		i(3, "int b"),     -- 引数2
		i(4, "int c"),     -- 引数3
		i(5, "/* 処理内容 */")
	})),

})
