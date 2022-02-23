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
    vim.notify = require('notify')

    require('user.config')
    require('user.settings')
    require('user.theme')
    require('user.mapping')
  end)
  :catch(function(value)
    print(string.format('this is my error: %s', value))
  end)

vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerCompile
  augroup end
]])
