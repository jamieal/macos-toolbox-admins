# macOS Toolbox for Admins

> Modular Bash scripts for managing, onboarding, and automating Apple devices in a professional IT environment.

---

## 📁 Script Categories Roadmap

### 🧳 Onboarding
- `onboard_user.sh`: Create users, configure settings, prep the environment 

### ⚙️ Launch Agents & Daemons
- `create_launch_agent.sh`: Automate building and loading a LaunchAgent
- `create_launch_daemon.sh`: Automate building and loading a LaunchDaemon

### 👤 User Management
- `get_logged_in_user.sh`: Grab the current console user at any time
- `add_user_to_admin.sh`: Add a user to the admin group with checks

### 💬 Messaging & Alerts
- `slack_notify.sh`: Send alerts or logging updates to a Slack channel
- `teams_notify.sh`: Same as above, but for Microsoft Teams

### 🔧 Utilities
- `helpers.sh`: Shared functions (e.g., logging, error handling, confirmations)

### 🧹 Maintenence
- update_nonstandard_apps.sh: Find and update apps installed outside of /Applications (e.g., user-space apps in ~/Applications, /opt, or /usr/local)
- cleanup_user_cache.sh: Optional script to remove common cache files and free up space
- relaunch_finder_dock.sh: Script to safely restart core user processes like Finder and Dock during troubleshooting

---

