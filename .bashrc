#!/usr/bin/env bash
# don't edit this file manually, use the libload cli utility instead
mkbash() {
#!/usr/bin/env bash

target="$1"
if [[ -s "$target" ]]; then
	echo "$target is non empty!" >&2
	exit 1
else
	echo "#!/usr/bin/env bash" > $target
fi

chmod +x $target
vim $target
}
