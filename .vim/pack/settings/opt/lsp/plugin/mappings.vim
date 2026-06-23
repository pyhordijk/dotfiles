autocmd User LspAttached {
  nnoremap <buffer> <Space>r <Cmd>LspShowReferences<CR>
  nnoremap <buffer>  ]d      <Cmd>LspDiagNext<CR>
  nnoremap <buffer>  [d      <Cmd>LspDiagPrev<CR>
  nnoremap <buffer>  ]D      <Cmd>LspDiagLast<CR>
  nnoremap <buffer>  [D      <Cmd>LspDiagFirst<CR>
}

autocmd User LspDetached {
  silent! unmap <buffer> <Space>r
  silent! unmap <buffer>  ]d
  silent! unmap <buffer>  [d
  silent! unmap <buffer>  ]D
  silent! unmap <buffer>  [D
}
