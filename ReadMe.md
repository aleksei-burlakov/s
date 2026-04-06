Basic helper (add to ~/.bashrc)
```
myinstall() {
  for pkg in "$@"; do
    echo "Installing $pkg"
    curl -fsSL "https://github.com/aleksei-burlakov/s/raw/main/$pkg" | bash
  done
}
```
