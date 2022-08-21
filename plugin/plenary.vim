
" Create command for running busted
com!  -nargs=1 -complete=file
     \ PlenaryBustedFile
      \ lua require('plenary.busted').run(vim.fn.expand("<args>"))

com!  -nargs=+ -complete=file
      \ PlenaryBustedDirectory
      \ lua require('plenary.test_harness').test_directory_command(vim.fn.expand("<args>"))

nno  <Plug>PlenaryTestFile
       \:lua require('plenary.test_harness').test_directory(vim.fn.expand("%:p"))<CR>
