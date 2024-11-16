local M = {}

-- Function to compile and run based on file type

M.compile_and_run = function()
  local file = vim.fn.expand "%:p"
  local file_name = vim.fn.expand "%:t:r"
  local file_extension = vim.fn.expand "%:e"
  local output_file = file_name .. ".out"
  local command = ""
  local show_output = "bat input.txt output.txt"

  -- Check if CP mode should be enabled based on file content
  local forCp = false
  for line in io.lines(file) do
    if line:find "#ifndef ONLINE_JUDGE" then
      forCp = true
      break
    end
  end

  if file_extension == "cpp" then
    command = "g++ -std=c++17 -o " .. output_file .. " " .. file .. " && ./" .. output_file
  elseif file_extension == "java" then
    command = "javac " .. file .. " && java " .. file_name
  elseif file_extension == "py" then
    command = "python3 " .. file
  elseif file_extension == "go" then
    command = "go run " .. file
  else
    print "Unsupported file type"
    return
  end

  -- Save the current file and open a new tab
  vim.cmd "w"
  vim.cmd "tabnew"

  -- Execute the command with optional CP-specific input/output redirection
  if forCp then
    vim.cmd("term " .. command .. " && " .. show_output)
  else
    vim.cmd("term " .. command)
  end
end

-- Function to paste clipboard content into input.txt

M.paste_clipboard = function()
  local input_file = "input.txt"
  local content = vim.fn.getreg "+"
  local file = io.open(input_file, "w")
  if file then
    file:write(content)
    file:close()
    print "Pasted clipboard content into input.txt"
  else
    print "Error opening input.txt"
  end
end

return M
