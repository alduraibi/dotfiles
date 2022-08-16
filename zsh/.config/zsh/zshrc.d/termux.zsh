# termux specific

# termux-clipboard
hash termux-clipboard-set &> /dev/null && {
  alias copy="termux-clipboard-set"
  alias paste="termux-clipboard-get"
}
