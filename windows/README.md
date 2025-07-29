# Windows shortcuts

## Copy-paste

Ctrl+Shift+c/v

### Windows Terminal
Should automatically be set to this. But if not:
- Open Windows terminal
- Do `Ctrl+,` to open terminal settings
- Go to Actions and check that copy text and paste text are set to Ctrl+Shift+c/v.
- This should apparently work across powershell and command prompt too.

### WSL + Ubuntu/Nix
- Open Ubuntu/Nix via the **desktop icons**. NOT via right-clicking on terminal and selecting Ubuntu/Nix. (idk man, don't ask why)
- Click on the **Top left icon -> Properties**.
- In Edit Options, enable Copy/Paste.
- Do this for all wsl + distro.

### Git Bash
- Search for Git Bash, right click and **run as Administrator**. Do NOT open via right-clicking on terminal and selecting Git Bash.
- Click on the **Top left icon -> Options**.
- In the 'Keys' section, enable **'Ctrl+Shift+letter shortcuts'** option.
- Save and exit.

---

## Screenshots

### Disable Windows Snipping Tool on PrtSc
- Open **Windows Settings**.
- Go to **Accessibility → Keyboard**.
- Find the setting:  **"Use the Print screen button to open screen snipping"**
- **Turn it OFF**.

That will stop Windows from launching the Snipping Tool when you press `PrtSc`.

---

## AutoHotKey Shortcut setup

Install AutoHotKey v2.

`shortcuts.ahk` and `screenshot.ahk` are the two scripts.

### Add scripts to startup

Add all these scripts to startup.

1. **Press `Win + R`**, type:
```
shell:startup
```
and press **Enter**.

> This opens your user’s **Startup folder** — everything here runs at login.

2. In that folder, **create a shortcut** to your AHK script:

- Right-click in the folder → **New > Shortcut**
- Browse to or enter the path of your script, for example:
```
"C:\Program Files\AutoHotkey\v2\AutoHotkey64.exe" "C:\Users\RamyaKottapalli\OneDrive - Echo IQ\Desktop\shortcuts\shortcuts.ahk"
```

⚠️ You **must specify both**:

- The full path to the AHK interpreter (`AutoHotkey64.exe`)
- Your script path in quotes as the **argument**

3. Click **Next**, give the shortcut a name like `Shortcuts`, and click **Finish**.