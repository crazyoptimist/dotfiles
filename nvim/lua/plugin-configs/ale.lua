-- vim.g.ale_linters_explicit = 1
vim.g.ale_fix_on_save = 1

vim.g.ale_linters = {
    [ 'javascript' ] = 'eslint',
    [ 'typescript' ] = 'eslint',
    [ 'python' ] = 'flake8'
}
vim.g.ale_fixers = {
    [ 'javascript' ] = 'prettier',
    [ 'typescript' ] = 'prettier',
    [ 'html' ] = 'prettier',
    [ 'css' ] = 'prettier',
    [ 'solidity' ] = 'prettier',
    [ 'python' ] = 'black',
    [ 'rust' ] = 'rustfmt'
}
