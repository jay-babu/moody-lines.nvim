rockspec_format = "3.0"
package = "moody-lines"
version = "scm-1"
source = {
  -- TODO: Update this URL
  url = "git+https://github.com/jay-babu/moody-lines.nvim",
}
dependencies = {
  -- Add runtime dependencies here
  -- e.g. "plenary.nvim",
}
test_dependencies = {
  "nlua",
  "bit",
}
build = {
  type = "builtin",
  copy_directories = {
    -- Add runtimepath directories, like
    -- 'plugin', 'ftplugin', 'doc'
    -- here. DO NOT add 'lua' or 'lib'.
  },
}
