.PHONY = install install_pkgs

PKGS := $(shell ./scripts/load_txt.sh vars/pkgs.txt)

install: install_pkgs

install_pkgs:
	@echo "Installing pkgs..."
	@yaourt -S ${PKGS} --needed --noconfirm > /dev/null 2>&1 || /bin/true

.stamps:
	mkdir .stamps

.stamps/pkgs:
	mkdir -p .stamps/pkgs

