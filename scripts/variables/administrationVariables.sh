#!/bin/zsh

localuser=$(scutil <<< "show State:/Users/ConsoleUser" | awk '/Name :/ && ! /loginwindow/ { print $3 }')

# Check if user has admin privileges
USER_IS_ADMIN=$(dscl . -read /Groups/admin GroupMembership | grep -q "$LOGGED_IN_USER" && echo "true" || echo "false")

# Check if SIP (System Integrity Protection) is enabled
SIP_STATUS=$(csrutil status | grep -q "enabled" && echo "enabled" || echo "disabled")

# Check if FileVault is enabled
FILEVAULT_STATUS=$(fdesetup status | grep -q "On" && echo "enabled" || echo "disabled")

# Check if Gatekeeper is enabled
GATEKEEPER_STATUS=$(spctl --status | grep -q "enabled" && echo "enabled" || echo "disabled")

