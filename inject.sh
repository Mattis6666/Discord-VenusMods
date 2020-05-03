#!/usr/bin/env bash

./clean.sh
echo "Injecting VenusMods into your Discord install..."

error() {
    echo "$1" 1>&2
    exit 1
}

# Copy Injector
if cp -rf dist/injector/venus_mods ~/.config/discordcanary/0.0.103/modules/discord_desktop_core/venus_mods && cp dist/injector/index.js ~/.config/discordcanary/0.0.103/modules/discord_desktop_core/index.js; then
    echo "Successfully moved the injector."
else 
    error "Failed to move the injector!"
fi

# Copy core  
if cp -r dist/core ~/.config/venus_mods; then
    echo "Successfuly moved the base."
else
    error "Failed to move the base!"
fi

echo "Successfully injected VenusMods!"
exit 0
 