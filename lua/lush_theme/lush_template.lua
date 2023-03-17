--
-- Built with,
--
--        ,gggg,
--       d8" "8I                         ,dPYb,
--       88  ,dP                         IP'`Yb
--    8888888P"                          I8  8I
--       88                              I8  8'
--       88        gg      gg    ,g,     I8 dPgg,
--  ,aa,_88        I8      8I   ,8'8,    I8dP" "8I
-- dP" "88P        I8,    ,8I  ,8'  Yb   I8P    I8
-- Yb,_,d88b,,_   ,d8b,  ,d8b,,8'_   8) ,d8     I8,
--  "Y8P"  "Y888888P'"Y88P"`Y8P' "YY8P8P88P     `Y8
--

-- This is a starter colorscheme for use with Lush,
-- for usage guides, see :h lush or :LushRunTutorial

--
-- Note: Because this is a lua file, vim will append it to the runtime,
--       which means you can require(...) it in other lua code (this is useful),
--       but you should also take care not to conflict with other libraries.
--
--       (This is a lua quirk, as it has somewhat poor support for namespacing.)
--
--       Basically, name your file,
--
--       "super_theme/lua/lush_theme/super_theme_dark.lua",
--
--       not,
--
--       "super_theme/lua/dark.lua".
--
--       With that caveat out of the way...
--

-- Enable lush.ify on this file, run:
--
--  `:Lushify`
--
--  or
--
--  `:lua require('lush').ify()`

local lush = require('lush')
local hsl = lush.hsl

-- LSP/Linters mistakenly show `undefined global` errors in the spec, they may
-- support an annotation like the following. Consult your server documentation.
---@diagnostic disable: undefined-global
local theme = lush(function(injected_functions)
    local sym = injected_functions.sym

    local bg = hsl(314, 100, 3)
    local fg = hsl(314, 0, 92)

    return {
        -- The following are the Neovim (as of 0.8.0-dev+100-g371dfb174) highlight
        -- groups, mostly used for styling UI elements.
        -- Comment them out and add your own properties to override the defaults.
        -- An empty definition `{}` will clear all styling, leaving elements looking
        -- like the 'Normal' group.
        -- To be able to link to a group, it must already be defined, so you may have
        -- to reorder items as you go.
        --
        -- See :h highlight-groups
        -- ColorColumn  { }, -- Columns set with 'colorcolumn'
        Conceal      { fg = hsl(314, 100, 70) }, -- placeholder characters substituted for concealed text (see 'conceallevel')
        -- Cursor       { }, -- Character under the cursor
        -- lCursor      { }, -- Character under the cursor when |language-mapping| is used (see 'guicursor')
        -- CursorIM     { }, -- Like Cursor, but used when in IME mode |CursorIM|
        CursorColumn { bg = hsl(314, 100, 10) }, -- Screen-column at the cursor, when 'cursorcolumn' is set.
        CursorLine   { bg = hsl(314, 100, 10) }, -- Screen-line at the cursor, when 'cursorline' is set.
        -- Directory    { }, -- Directory names (and other special names in listings)
        -- DiffAdd      { }, -- Diff mode: Added line |diff.txt|
        DiffChange   { fg = hsl(270, 100, 70) }, -- Diff mode: Changed line |diff.txt|
        DiffDelete   { fg = hsl(180, 100, 40) }, -- Diff mode: Deleted line |diff.txt|
        DiffText     { fg = hsl(0, 100, 70) }, -- Diff mode: Changed text within a changed line |diff.txt|
        EndOfBuffer  { fg = hsl(314, 100, 70) }, -- filler lines (~) after the end of the buffer.  By default, this is highlighted like |hl-NonText|.
        -- TermCursor   { }, -- Cursor in a focused terminal
        -- TermCursorNC { }, -- Cursor in an unfocused terminal
        -- ErrorMsg     { }, -- Error messages on the command line
        -- VertSplit    { }, -- Column separating vertically split windows
        Folded       { fg = hsl(207, 100, 42) }, -- Line used for closed folds
        FoldColumn   { fg = hsl(207, 100, 42) }, -- 'foldcolumn'
        SignColumn   { fg = hsl(207, 100, 42) }, -- Column where |signs| are displayed
        -- IncSearch    { }, -- 'incsearch' highlighting; also used for the text replaced with ":s///c"
        -- Substitute   { }, -- |:substitute| replacement text highlighting
        LineNr       { fg = hsl(344, 100, 50) }, -- Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is set.
        -- CursorLineNr { }, -- Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line.
        MatchParen   { fg = hsl(307, 100, 42) }, -- The character under the cursor or just before it, if it is a paired bracket, and its match. |pi_paren.txt|
        -- ModeMsg      { }, -- 'showmode' message (e.g., "-- INSERT -- ")
        -- MsgArea      { }, -- Area for messages and cmdline
        -- MsgSeparator { }, -- Separator for scrolled messages, `msgsep` flag of 'display'
        -- MoreMsg      { }, -- |more-prompt|
        -- NonText      { }, -- '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line). See also |hl-EndOfBuffer|.
        Normal { fg = fg, bg = bg }, -- normal text
        -- NormalFloat  { }, -- Normal text in floating windows.
        -- NormalNC     { }, -- normal text in non-current windows
        Pmenu        { fg = fg, bg = hsl(307, 100, 42) }, -- Popup menu: normal item.
        PmenuSel     { fg = bg, bg = fg }, -- Popup menu: Selected item.
        PmenuSbar    { fg = fg, bg = bg }, -- Popup menu: Scrollbar.
        PmenuThumb   { fg = bg, bg = fg }, -- Popup menu: Thumb of the scrollbar.
        -- Question     { }, -- |hit-enter| prompt and yes/no questions
        -- QuickFixLine { }, -- Current |quickfix| item in the quickfix window. Combined with |hl-CursorLine| when the cursor is there.
        -- Search       { }, -- Last search pattern highlighting (see 'hlsearch'). Also used for similar items that need to stand out.
        -- SpecialKey   { }, -- Unprintable characters: text displayed differently from what it really is. But not 'listchars' whitespace. |hl-Whitespace|
        -- SpellBad     { }, -- Word that is not recognized by the spellchecker. |spell| Combined with the highlighting used otherwise.
        -- SpellCap     { }, -- Word that should start with a capital. |spell| Combined with the highlighting used otherwise.
        -- SpellLocal   { }, -- Word that is recognized by the spellchecker as one that is used in another region. |spell| Combined with the highlighting used otherwise.
        -- SpellRare    { }, -- Word that is recognized by the spellchecker as one that is hardly ever used. |spell| Combined with the highlighting used otherwise.
        -- StatusLine   { }, -- Status line of current window
        -- StatusLineNC { }, -- Status lines of not-current windows. Note: If this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.
        TabLine { fg = hsl(40, 80, 50), bg = bg }, -- Tab pages line, not active tab page label
        -- TabLineFill  { }, -- Tab pages line, where there are no labels
        -- TabLineSel   { }, -- Tab pages line, active tab page label
        -- Title        { }, -- Titles for output from ":set all", ":autocmd" etc.
        Visual { bg = hsl(0, 0, 0) }, -- Visual mode selection
        -- VisualNOS    { }, -- Visual mode selection when vim is "Not Owning the Selection".
        -- WarningMsg   { }, -- Warning messages
        Whitespace   { fg = hsl(250, 100, 80) }, -- "nbsp", "space", "tab" and "trail" in 'listchars'
        -- Winseparator { }, -- Separator between window splits. Inherts from |hl-VertSplit| by default, which it will replace eventually.
        -- WildMenu     { }, -- Current match in 'wildmenu' completion

        Comment { fg = hsl(30, 80, 50) },

        Constant { fg = hsl(314, 100, 68) },
        String { fg = hsl(50, 100, 80) },
        Character { fg = hsl(50, 100, 80) },
        Number { fg = hsl(0, 100, 68) },
        Boolean { fg = hsl(109, 100, 68) },
        Float { fg = hsl(0, 100, 68) },
        Identifier { fg = hsl(307, 100, 70) },
        Function { fg = hsl(250, 100, 70) },
        Statement { fg = hsl(200, 100, 60) },
        Conditional { fg = hsl(60, 100, 60) },
        Repeat { fg = hsl(110, 100, 60) },
        Label { fg = hsl(14, 100, 60) },
        Operator { fg = hsl(0, 0, 100) },
        Keyword { fg = hsl(450, 100, 60) },
        Exception { fg = hsl(0, 100, 60) },
        PreProc { fg = hsl(60, 100, 60) },
        Include { fg = hsl(60, 100, 60) },
        Define { fg = hsl(60, 100, 60) },
        Macro { fg = hsl(60, 100, 60) },
        PreCondit { fg = hsl(60, 100, 60) },

        Type { fg = hsl(230, 50, 80) },
        StorageClass { fg = hsl(230, 50, 80) },
        Structure { fg = hsl(230, 50, 80) },
        Typedef { fg = hsl(230, 50, 80) },

        Special { fg = hsl(0, 0, 100) },
        Delimiter { fg = hsl(25, 100, 60) },

        -- These groups are for the native LSP client and diagnostic system. Some
        -- other LSP clients may use these groups, or use their own. Consult your
        -- LSP client's documentation.

        -- See :h lsp-highlight, some groups may not be listed, submit a PR fix to lush-template!
        --
        -- LspReferenceText
        -- LspReferenceRead
        -- LspReferenceWrite
        -- LspCodeLens
        -- LspCodeLensSeparator
        -- LspSignatureActiveParameter

        -- See :h diagnostic-highlights, some groups may not be listed, submit a PR fix to lush-template!
        --
        DiagnosticError { fg = hsl(330, 100, 50), bg = hsl(245, 100, 10) },
        DiagnosticWarn { fg = hsl(60, 100, 50), bg = hsl(245, 100, 10) },
        DiagnosticInfo { fg = hsl(0, 0, 100), bg = hsl(0, 0, 0) },
        DiagnosticHint { fg = hsl(234, 100, 80), bg = hsl(160, 100, 5) },
        -- DiagnosticVirtualTextError { } , -- Used for "Error" diagnostic virtual text.
        -- DiagnosticVirtualTextWarn  { } , -- Used for "Warn" diagnostic virtual text.
        -- DiagnosticVirtualTextInfo  { } , -- Used for "Info" diagnostic virtual text.
        -- DiagnosticVirtualTextHint  { } , -- Used for "Hint" diagnostic virtual text.
        DiagnosticUnderlineError    { bg = hsl(245, 100, 10) }, -- Used to color "Error" diagnostic messages in diagnostics float.
        DiagnosticUnderlineWarn    { bg = hsl(245, 100, 10) }, -- Used to color "Warn" diagnostic messages in diagnostics float.
        DiagnosticUnderlineInfo    { bg = hsl(0, 0, 0) }, -- Used to color "Info" diagnostic messages in diagnostics float.
        DiagnosticUnderlineHint   { bg = hsl(314, 100, 15) }, -- Used to underline "Hint" diagnostics.
        -- DiagnosticFloatingError    { } , -- Used to color "Error" diagnostic messages in diagnostics float. See |vim.diagnostic.open_float()|
        -- DiagnosticFloatingWarn     { } , -- Used to color "Warn" diagnostic messages in diagnostics float.
        -- DiagnosticFloatingInfo     { } , -- Used to color "Info" diagnostic messages in diagnostics float.
        -- DiagnosticFloatingHint     { } , -- Used to color "Hint" diagnostic messages in diagnostics float.
        -- DiagnosticSignError        { } , -- Used for "Error" signs in sign column.
        -- DiagnosticSignWarn         { } , -- Used for "Warn" signs in sign column.
        -- DiagnosticSignInfo         { } , -- Used for "Info" signs in sign column.
        -- DiagnosticSignHint         { } , -- Used for "Hint" signs in sign column.

        -- Tree-Sitter syntax groups.
        --
        -- See :h treesitter-highlight-groups, some groups may not be listed,
        -- submit a PR fix to lush-template!
        --
        -- Tree-Sitter groups are defined with an "@" symbol, which must be
        -- specially handled to be valid lua code, we do this via the special
        -- sym function. The following are all valid ways to call the sym function,
        -- for more details see https://www.lua.org/pil/5.html
        --
        -- sym("@text.literal")
        -- sym('@text.literal')
        -- sym"@text.literal"
        -- sym'@text.literal'
        --
        -- For more information see https://github.com/rktjmp/lush.nvim/issues/109

        -- sym"@text.literal"      { }, -- Comment
        -- sym"@text.reference"    { }, -- Identifier
        -- sym"@text.title"        { }, -- Title
        -- sym"@text.uri"          { }, -- Underlined
        -- sym"@text.underline"    { }, -- Underlined
        -- sym"@text.todo"         { }, -- Todo
        -- sym"@comment"           { }, -- Comment
        -- sym"@punctuation"       { }, -- Delimiter
        -- sym"@constant"          { }, -- Constant
        -- sym"@constant.builtin"  { }, -- Special
        -- sym"@constant.macro"    { }, -- Define
        -- sym"@define"            { }, -- Define
        -- sym"@macro"             { }, -- Macro
        -- sym"@string"            { }, -- String
        -- sym"@string.escape"     { }, -- SpecialChar
        -- sym"@string.special"    { }, -- SpecialChar
        -- sym"@character"         { }, -- Character
        -- sym"@character.special" { }, -- SpecialChar
        -- sym"@number"            { }, -- Number
        -- sym"@boolean"           { }, -- Boolean
        -- sym"@float"             { }, -- Float
        -- sym"@function"          { }, -- Function
        -- sym"@function.builtin"  { }, -- Special
        -- sym"@function.macro"    { }, -- Macro
        -- sym"@parameter"         { }, -- Identifier
        -- sym"@method"            { }, -- Function
        -- sym"@field"             { }, -- Identifier
        -- sym"@property"          { }, -- Identifier
        -- sym"@constructor"       { }, -- Special
        -- sym"@conditional"       { }, -- Conditional
        -- sym"@repeat"            { }, -- Repeat
        -- sym"@label"             { }, -- Label
        -- sym"@operator"          { }, -- Operator
        -- sym"@keyword"           { }, -- Keyword
        -- sym"@exception"         { }, -- Exception
        -- sym"@variable"          { }, -- Identifier
        -- sym"@type"              { }, -- Type
        -- sym"@type.definition"   { }, -- Typedef
        -- sym"@storageclass"      { }, -- StorageClass
        -- sym"@structure"         { }, -- Structure
        -- sym"@namespace"         { }, -- Identifier
        -- sym"@include"           { }, -- Include
        -- sym"@preproc"           { }, -- PreProc
        -- sym"@debug"             { }, -- Debug
        -- sym"@tag"               { }, -- Tag
    }
end)

-- Return our parsed theme for extension or use elsewhere.
return theme

-- vi:nowrap
