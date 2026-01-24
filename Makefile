.PHONY: update
update:
	home-manager switch --flake .#thiagoabreu46
.PHONY: clean
clean:
	nix-collect-garbage -d
