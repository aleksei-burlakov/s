Basic helper (add to ~/.bashrc)
```
myinstall() {
  for pkg in "$@"; do
    echo "Installing $pkg"
    curl -fsSL "https://github.com/aleksei-burlakov/s/raw/main/$pkg" -o $pkg
    bash $pkg
    echo "Don't forget to remove the leftover $PWD/$pkg"
  done
}
```

Keep in mind: piping the script into bash would break the stdin and there will be no interaction with the user.
For example 'curl -fsSL "https://github.com/aleksei-burlakov/s/raw/main/hawk-gems" | bash' will fail
when asking credentials.
