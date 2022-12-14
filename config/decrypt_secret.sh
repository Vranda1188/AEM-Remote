#!/bin/sh

# Decrypt the file
mkdir $HOME/secrets
# --batch to prevent interactive command
# --yes to assume "yes" for questions
gpg --quiet --batch --yes --decrypt --passphrase="$PASSPHRASE" --output $HOME/secrets/config.json config.json.gpg
gpg --quiet --batch --yes --decrypt --passphrase="$PK" --output $HOME/secrets/private.key private.key.gpg
