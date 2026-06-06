set diff
set scrollbind
set splitright

let [left, right] = [
      \  argv(0),
      \  argv(1),
      \]

for file in split($FILES)

  let [leftfile, rightfile] = [
        \  join([left, file], '/'),
        \  join([right, file], '/'),
        \]

  execute 'tab' 'new' leftfile
  execute 'vertical' 'split' rightfile

endfor

tabfirst
tabnext
