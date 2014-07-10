def read_write_show_hide(read_or_write, false_or_true = nil)
  return `defaults #{read_or_write} com.apple.finder AppleShowAllFiles#{" " + false_or_true if false_or_true}`
end

if read_write_show_hide("read").strip == "FALSE"
  read_write_show_hide "write", "TRUE"
else
  read_write_show_hide "write", "FALSE"
end

`killall Finder`
