#!/usr/bin/env bash

set -e #если ошибка

#cdbrg = codeberg
#gthb = github
USER="chronoblade"
DIR_SECRETS="/home/$USER/Documents/secrets"
TOKEN_CODEBERG=$(cat $DIR_SECRETS/token_codeberg)
TOKEN_GITHUB=$(cat $DIR_SECRETS/token_github)
TMP="/home/$USER/.cache"
NIX_CTLG="/home/$USER/nix"
REPO_CODEBERG="$TMP/tmp_nix_codeberg"
REPO_GITHUB="$TMP/tmp_nix_github"

cp_clone_cdbrg() {
	cleaning
	mkdir $REPO_CODEBERG
	git clone https://$TOKEN_CODEBERG@codeberg.org/$USER/nix $REPO_CODEBERG
	git -C $REPO_CODEBERG pull
}

copy_add_push_cdbrg() {
	cp -r $NIX_CTLG/* $REPO_CODEBERG/
	git -C $REPO_CODEBERG add $REPO_CODEBERG/*
	git -C $REPO_CODEBERG commit -m "autocommit by script"
	git -C $REPO_CODEBERG push origin main
}

cp_clone_gthb() {
	mkdir $REPO_GITHUB
	git clone https://$TOKEN_GITHUB@github.com/chrblade/nix $REPO_GITHUB
	git -C $REPO_GITHUB pull
}

copy_add_push_gthb() {
	cp -r $NIX_CTLG/* $REPO_GITHUB/
	git -C $REPO_GITHUB add $REPO_GITHUB/*
	git -C $REPO_GITHUB commit -m "autocommit by script"
	git -C $REPO_GITHUB push origin main
}

cleaning() {
	rm -rf $TMP/tmp_nix_github $TMP/tmp_nix_codeberg
}

main() {
	cp_clone_cdbrg
	copy_add_push_cdbrg
	cp_clone_gthb
	copy_add_push_gthb
	cleaning
}

main
