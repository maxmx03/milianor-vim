local M = {}

function M.set_italic(italic)
  if italic then
    return 'italic'
  end

  return 'NONE'
end

function M.icons()
  -- https://github.com/microsoft/vscode/blob/main/src/vs/base/common/codicons.ts
  -- go to the above and then enter <c-v>u<unicode> and the symbold should appear
  -- or go here and upload the font file: https://mathew-kurian.github.io/CharacterMap/
  -- find more here: https://www.nerdfonts.com/cheat-sheet
  return {
    kind = {
      Text = '',
      -- Method = "m",
      -- Function = "",
      -- Constructor = "",
      Method = '',
      Function = '',
      Constructor = '',
      Field = '',
      -- Variable = "",
      Variable = '',
      Class = '',
      Interface = '',
      -- Module = "",
      Module = '',
      Property = '',
      Unit = '',
      Value = '',
      Enum = '',
      -- Keyword = "",
      Keyword = '',
      -- Snippet = "",
      Snippet = '',
      Color = '',
      File = '',
      Reference = '',
      Folder = '',
      EnumMember = '',
      Constant = '',
      Struct = '',
      Event = '',
      Operator = '',
      TypeParameter = '',
    },
    type = {
      Array = '',
      Number = '',
      String = '',
      Boolean = '蘒',
      Object = '',
    },
    documents = {
      File = '',
      Files = '',
      Folder = '',
      OpenFolder = '',
    },
    git = {
      Add = '',
      Mod = '',
      Remove = '',
      Ignore = '',
      Rename = '',
      Diff = '',
      Repo = '',
    },
    ui = {
      Lock = '',
      Circle = '',
      BigCircle = '',
      BigUnfilledCircle = '',
      Close = '',
      NewFile = '',
      Search = '',
      Lightbulb = '',
      Project = '',
      Dashboard = '',
      History = '',
      Comment = '',
      Bug = '',
      Code = '',
      Telescope = '',
      Gear = '',
      Package = '',
      List = '',
      SignIn = '',
      Check = '',
      Fire = '',
      Note = '',
      BookMark = '',
      Pencil = '',
      -- ChevronRight = '',
      ChevronRight = '>',
      Table = '',
      Calendar = '',
    },
    diagnostics = {
      Error = '',
      Warning = '',
      Information = '',
      Question = '',
      Hint = '',
    },
    misc = {
      Robot = 'ﮧ',
      Squirrel = '',
      Tag = '',
      Watch = '',
    },
  }
end

return M
