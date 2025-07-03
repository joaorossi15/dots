local ls  = require('luasnip')
local s   = ls.snippet
local t,i = ls.text_node, ls.insert_node

ls.add_snippets('go', {
  s('ie', {
    t({'if err != nil {', '\t'}),
    i(0, 'return err'),
    t({'', '}'})
  }),
})
