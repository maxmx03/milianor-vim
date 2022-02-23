Promise = require('utils.promise')

Promise
  :new(function(resolve, reject)
    local success, result = pcall(function()
      require('plugins')
    end)

    if not success and not packer_bootstrap then
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
    else
      vim.notify = notify
    end

    require('user.config')
    require('user.settings')
    require('user.theme')
    require('user.mapping')
  end)
  :catch(function(value)
    print(string.format('Something went wrong: %s', value))
  end)

vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerCompile
  augroup end
]])
