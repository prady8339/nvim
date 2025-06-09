local M = {}
local timer_file = ".timer_start"

-- Utility to get current epoch time
local function get_epoch()
  return os.time()
end

-- Utility to read epoch from file
local function read_timer()
  local file = io.open(timer_file, "r")
  if file then
    local t = file:read("*n")
    file:close()
    return t
  end
  return nil
end

-- Utility to write current epoch to file
local function write_timer()
  local file = io.open(timer_file, "w")
  if file then
    file:write(get_epoch())
    file:close()
  end
end

-- Utility to delete timer file (stop timer)
local function delete_timer()
  os.remove(timer_file)
end

-- Toggle timer on/off
M.toggle_timer = function()
  if read_timer() then
    delete_timer()
    print("⏹️  Timer stopped")
  else
    write_timer()
    print("▶️  Timer started")
  end
end

-- Function to compile and run based on file type
M.compile_and_run = function()
  local file = vim.fn.expand "%:p"
  local file_name = vim.fn.expand "%:t:r"
  local file_extension = vim.fn.expand "%:e"
  local output_file = file_name .. ".out"
  local command = ""
  local show_output = "bat input.txt output.txt"

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

  -- Calculate elapsed time
  local start = read_timer()
  local elapsed = ""
  if start then
    local now = os.time()
    local duration = os.difftime(now, start)
    local mins = math.floor(duration / 60)
    local secs = duration % 60
    elapsed = string.format("echo '🕒 Time Elapsed: %02d:%02d' && ", mins, secs)
  else
    elapsed = "echo '⏳ Timer not started' && "
  end

  local full_cmd = elapsed .. command
  if forCp then
    full_cmd = full_cmd .. " && " .. show_output
  end

  vim.cmd("tabnew")
  vim.cmd("term bash -c " .. vim.fn.shellescape(full_cmd))
end
-- Function to paste clipboard content into input.txt
M.paste_clipboard = function()
  local input_file = "input.txt"
  local content = vim.fn.getreg "+"
  local file = io.open(input_file, "w")
  if file then
    file:write(content)
    file:close()
    print "📋 Pasted clipboard content into input.txt"
  else
    print "❌ Error opening input.txt"
  end

  -- Start or stop timer
  M.toggle_timer()
  M.toggle_timer()
end

return M
