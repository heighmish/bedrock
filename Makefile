stow: check
	@echo "Attempting to symlink files..."
	stow .

check:
	@type stow

clean:
	stow -D .
