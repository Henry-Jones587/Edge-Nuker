# Edge Nuker

**Author:** Henry Jones  
**License:** [Creative Commons BY-SA](https://creativecommons.org/licenses/by-sa/4.0/)  

---

## 🚀 About
Edge Nuker is a powerful batch script designed to *fully disable* Microsoft Edge from Windows systems. Whether you're reclaiming control, minimizing bloat, or just tired of pop-ups asking you to "try Edge," this tool is your ticket to freedom.

## ⚠️ Disclaimer
> Use at your own risk. This tool directly modifies system files and registry entries. It is highly recommended to create a **system restore point** before proceeding.

## 🛠 What It Does
- Terminates Edge processes (manually).
- Takes ownership of the Edge executable.
- Renames `msedge.exe` to `msedge.bak` (effectively disabling it).
- Removes Start Menu shortcuts for Edge.
- Disables Bing web search integration in the Start Menu.

## 📋 Prerequisites
- Windows 10 or 11 (64-bit)
- Administrator privileges

## 📦 Features
- Batch-based, lightweight, portable.
- No external dependencies.
- Open-source and editable.

## 🧪 How to Use
1. Backup your system and create a system restore point.
2. Right-click the script (`edgenuke.bat`) and **Run as administrator**.
3. Follow the on-screen instructions.

## 💡 Optional Additions
- Integrate `taskkill` to kill `msedge.exe` if it's running.
- Add command-line flags (like `/silent` or `/no-restore-warning`).
- Include logging for each operation.

## 🧯 Restore (if needed)
1. Open the Start Menu, search **"Restore Point"** and choose *System Restore*.
2. Select the restore point you created before running Edge Nuker.
3. Follow the prompts to revert your system.

## 📁 File Structure
```
EdgeNuker/
├── edgenuke.bat
├── LICENSE.txt
└── README.md
```

## 🙌 Acknowledgements
- Inspiration from the frustration of being told what browser to use 😉
- Built with pure love for command-line chaos.

## 📢 Contributions
Pull requests, suggestions, and improvements are welcome!

---

**Enjoy your Edge-free life.** 🎉

