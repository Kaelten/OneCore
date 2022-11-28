-- linting rule setup
max_line_length = false

ignore = {
    -- these locals are intentially created at the top level to ensure no bleeding between addons
    "211/_",
    "211/k",
    "211/v",
    -- allow unused locals that start with a _
    "211/_.+",
    -- allow member methods that don't use self
    "212/self",
    -- allow unused loop variables that start with a _
    "213/_.+",
    -- shadowing these is an intentional thing
    "431/k",
    "431/v",
}

files["**/localization/*.lua"].ignore = {
    "211/L", -- L will appare unused in the native locale file
    "542" -- empty conditionals are expected in localization files
}

-- project configuration

exclude_files = {
    -- don't scan external code
    "OneCore-1.0/libs",

    -- only exists when testing packaging locally
    ".release",
}

-- language and global configurations

std = "lua51"
globals = {
    -- library globals
    "LibStub",

    -- Addon Specific API Globals
    "BagSearch_OnChar",
    "BankFrameItemButton_Update",
    "ContainerFrame_UpdateCooldowns",
    "SmallMoneyFrame_OnLoad",
    "SearchBoxTemplate_OnTextChanged",

    -- FrameXML/UI Related WoW API
    "getglobal",
    "BackdropTemplateMixin",
    "CreateFrame",
    "PlaySound",
    "UIParent",
    "UISpecialFrames",

    -- Lua51 for WoW Standard API
    "abs",
    "acos",
    "asin",
    "atan",
    "atan2",
    "bit",
    "ceil",
    "cos",
    "date",
    "debuglocals",
    "debugprofilestart",
    "debugprofilestop",
    "debugstack",
    "deg",
    "difftime",
    "exp",
    "fastrandom",
    "floor",
    "forceinsecure",
    "foreach",
    "foreachi",
    "format",
    "frexp",
    "geterrorhandler",
    "getn",
    "gmatch",
    "gsub",
    "hooksecurefunc",
    "issecure",
    "issecurevariable",
    "ldexp",
    "log",
    "log10",
    "max",
    "min",
    "mod",
    "rad",
    "random",
    "scrub",
    "securecall",
    "seterrorhandler",
    "sin",
    "sort",
    "sqrt",
    "strbyte",
    "strchar",
    "strcmputf8i",
    "strconcat",
    "strfind",
    "string.join",
    "strjoin",
    "strlen",
    "strlenutf8",
    "strlower",
    "strmatch",
    "strrep",
    "strrev",
    "strsplit",
    "strsub",
    "strtrim",
    "strupper",
    "table.wipe",
    "tan",
    "time",
    "tconcat",
    "tinsert",
    "tremove",
    "wipe",
}
