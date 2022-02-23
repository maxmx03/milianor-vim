Promise = require('utils.promise')

Promise
  :new(function(resolve, reject)
    local success, result = pcall(function()
      require('plugins')
    end)

    if not success then
      reject(Promise, result)
      return
    end

    resolve(Promise, 'success')
  end)
  :next(function()
    local success, notify = pcall(require, 'notify')

    if not success then
      vim.notify = function(msg, level)
        print(string.format('Error: %s, Level: %s', msg, level))
      end

      error('Error in vim.notify')
      return
    end

    vim.notify = notify
    require('user.config')
    require('user.settings')
    require('user.mapping')
  end)
  :catch(function(error_message)
    print(string.format('Something went wrong: %s', error_message))
  end)
  :finally(function()
    user:setup({
      theme = {
        colorscheme = 'vscode',
        transparent = false,
        style = 'dark',
        sidebar = 'left',
      },
    })

    require('user.theme')
  end)

vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerCompile
  augroup end
]])
