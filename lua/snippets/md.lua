
local ls = require("luasnip")
local s = ls.snippet
local i = ls.insert_node
local f = ls.function_node

local fmt = require("luasnip.extras.fmt").fmt

ls.add_snippets("markdown", {

    s({
        trig = "log",
        name = "error log",
        dscr = "開発中のエラーログ記録テンプレート"
    },
    fmt(
[[
# 📅 {}

## エラー
```bash
{}
```

## 状況
- {}
- {}

## 仮説
- {}

## 試したこと
```bash
{}
```

## 原因
- {}

## 解決
```bash
{}
```
]],
    {
        f(function()
            return os.date("%Y-%m-%d (%a)")
        end),

        i(1, "エラー内容"),

        i(2, "docker run 実行時"),
        i(3, "初回インストール直後"),

        i(4, "daemon 止まってる？"),
        i(5, "systemctl status docker"),

        i(6, "docker daemon が起動していなかった"),
        i(7, "sudo systemctl start docker"),
    }
    )),

})
