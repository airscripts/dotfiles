local dapui = require("dapui")

dapui.setup({
  icons = { expanded = "▾", collapsed = "▸", current_frame = "▸" },
  
  mappings = {
    expand = { "<CR>", "<2-LeftMouse>" },
    open = "o",
    remove = "d",
    edit = "e",
    repl = "r",
    toggle = "t",
  },

  expand_lines = vim.fn.has("nvim-0.7"),
  
  layouts = {
    {
      elements = {
        { id = "scopes", size = 0.25 },
        "breakpoints",
        "stacks",
        "watches",
      },
  
      size = 40,
      position = "left",
    },

    {
      elements = {
        "repl",
        "console",
      },
    
      size = 0.25, 
      position = "bottom",
    },
  },

  controls = {
    enabled = true,
    element = "repl",
  
    icons = {
      pause = "",
      play = "",
      step_into = "",
      step_over = "",
      step_out = "",
      step_back = "",
      run_last = "↻",
      terminate = "□",
    },
  },

  floating = {
    max_height = nil, 
    max_width = nil, 
    border = "single",

    mappings = {
      close = { "q", "<Esc>" },
    },
  },

  windows = { indent = 1 },
  
  render = {
    max_type_length = nil, 
    max_value_lines = 100, 
  }
})

local dap = require("dap")

dap.listeners.after.event_initialized["dapui_config"] = function()
  dapui.open()
end

dap.listeners.before.event_terminated["dapui_config"] = function()
  dapui.close()
end

dap.listeners.before.event_exited["dapui_config"] = function()
  dapui.close()
end

