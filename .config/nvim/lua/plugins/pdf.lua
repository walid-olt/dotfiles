return {
  {
    "zathura-pdf-viewer",
    virtual = true,
    lazy = false,
    config = function()
      vim.api.nvim_create_autocmd("BufReadCmd", {
        pattern = "*.pdf",
        callback = function(ev)
          local filepath = ev.file
          if filepath == "" or not filepath then
            return
          end

          -- Spawn Zathura as a detached background process
          vim.system({ "zathura", filepath }, { detach = true })

          -- Schedule clean buffer removal in Neovim
          vim.schedule(function()
            if vim.api.nvim_buf_is_valid(ev.buf) then
              vim.api.nvim_buf_delete(ev.buf, { force = true })
            end
          end)
        end,
      })
    end,
  },
}
