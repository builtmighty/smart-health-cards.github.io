<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">


<p align="center"><a href="{insert-codespace-url-here}" style="background-color: #32b030; color: #ffffff; font-family: Arial; font-size: 16px; letter-spacing: 2px; font-weight: bold; padding: 15px; border-radius: 5px; text-decoration: none;"><i class="fa fa-home"></i> OPEN WEBSITE</a></p>
<br>

---

<br>

<p align="center"><img src="https://i.ibb.co/kc54Bpr/330119449-3bc72fde-c07a-4e14-a456-403074ddb964.png" width="450"></p>

<h2 align="center">Welcome to Built Mighty's Codespace! 🚀</h2>

> <small>❗️**Note:**❗️ This Codespace will stop automatically after `90 minutes` of inactivity. You can restart it at any time and none of your changes will be lost. If you are inactive for `10 days` straight, the Codespace will be deleted and all changes will be lost *(Uncommited Code and DB Updates)*.</small>
---


### Developer Notes 📝

- **[Accessing the Frontend Website](#accessing-the-frontend-website)**
- **[Managing Codespaces](#managing-codespaces)**
- **[Adding Additional Build Scripts](#adding-additional-build-scripts)**
- **[Codespace Troubleshooting](#codespace-troubleshooting)**
- **[Codespace Resources](#codespace-resources)**

---

## Accessing the Frontend Website

### Access the frontend website via the *Ports* tab in the Codespace:
1. Click the `Ports` tab in the bottom left of the Codespace window.
2. Click the `Open Browser` button next to the `443` port named "**Website**"" to open the frontend website in the browser.

<p align="center"><a href="#" target="_blank"><img src="https://s12.gifyu.com/images/SD7CS.gif" width="400"></a></p>

### Access the frontend website via the *Command Palette*:
1. Open up the Command Palette by pressing`Ctrl+Shift+P`or `F1`.
2. Type `Open Port in Browser` and press `Enter`.
3. Select the `443` port named "**Website**"" to open the frontend website in the browser.

<p align="center"><a href="#" target="_blank"><img src="https://s10.gifyu.com/images/SD7yw.gif" width="400"></a></p>

---

## Managing Codespaces

### Starting a Codespace in GitHub:
1. Open the repository in GitHub.
2. Select the Branch you want to work on.
3. Click the `Code` button in the top right of the repository.
4. Click the plus icon or "Creat Codespace" button to start the Codespace.

### Starting a Codespace in VS Code:
1. Open the Command Palette by pressing `Ctrl+Shift+P` or `F1`.
2. Type `Codespaces Connect to Codespace`, Select and press `Enter`.
3. Select the Codespace you want to connect to.


### Stopping a Codespace in VS Code:
1. Click the Codespaces: button on the bottom left of the Codespace window.
2. Click the `Stop` button to stop the Codespace.


### Stopping a Codespace in GitHub:
1. Open the repository in GitHub.
2. Click the `Code` button in the top right of the repository.
3. Click the `Codespaces` tab.
4. Click the `Stop` button to stop the Codespace.
---

## Adding Additional Build Scripts

You can add additional environment build scripts by updating the `.devcontainer/setup/build.sh` file to run additional commands when the Codespace is started.

### Steps to add additional build scripts:

1. Open the `.devcontainer/setup/build.sh` file.
2. Add your additional build commands to the file.
3. Save the file.
4. Commit the changes to the repository.
5. Rebuild the Codespace to run the updated build script and confirm your changes.

## Codespace Troubleshooting

If you encounter any issues with your Codespace, you can try the following steps to resolve the issue:

1. **View Creation Logs**
   - Click the Codespaces: button on the bottom left of the Codespace window and then click `View Creation Logs` to view find the error in the Logs.
2. **Resolve the Issue**
   - If you find an error in the Logs, try to resolve the issue based on the error message. If there is no errors in the Log, Delete the Codespace and Re-create it.
3. **Rebuild Codespace**
   - Click the Codespaces: button on the bottom left of the Codespace window and then click  `Rebuild` to rebuild the Codespace.

> If you are unable to resolve the issue, you can reach out to the Built Mighty team for assistance.

## Codespace Resources

- **[Developing in a codespace](https://docs.github.com/en/codespaces/developing-in-a-codespace/developing-in-a-codespace)**
- **[GitHub Codespaces Lifecyle](https://docs.github.com/en/codespaces/getting-started/understanding-the-codespace-lifecycle)**
- **[Forwarding ports in your codespace](https://docs.github.com/en/codespaces/developing-in-a-codespace/forwarding-ports-in-your-codespace)**
- **[Working collaboratively in a codespace](https://docs.github.com/en/codespaces/developing-in-a-codespace/working-collaboratively-in-a-codespace)**
- **[Rebuilding the container in a codespace](https://docs.github.com/en/codespaces/developing-in-a-codespace/rebuilding-the-container-in-a-codespace)**
- **[Security in GitHub Codespaces](https://docs.github.com/en/codespaces/reference/security-in-github-codespaces)**
