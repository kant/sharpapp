<h1 align="center">
  <br>
  <a href="http://www.mirinsoft.com"><img src="https://github.com/mirinsoft/sharpapp/blob/master/icon.ico" alt="SharpApp" width="200"></a>
  <br>
  #app (SharpApp)
  <br>
</h1>

<h4 align="center">💩⭐️🚀A #app with cutting edge technology to minimize windows-10 telemetry and maximize privacy</h4>

<p align="center">
<a href="https://github.com/mirinsoft/sharpapp/releases/latest" target="_blank">
<img alt="Latest GitHub release" src="https://img.shields.io/github/release/mirinsoft/sharpapp.svg?style=flat-square" />
</a>
	
<a href="https://github.com/mirinsoft/sharpapp/releases" target="_blank">
<img alt="Downloads on GitHub" src="https://img.shields.io/github/downloads/mirinsoft/sharpapp/total.svg?style=flat-square" />
</a>

<a href="https://github.com/mirinsoft/sharpapp/commits/master">
<img src="https://img.shields.io/github/last-commit/mirinsoft/sharpapp.svg?style=flat-square&logo=github&logoColor=white"
alt="GitHub last commit">
<a href="https://github.com/mirinsoft/sharpapp/issues">
<img src="https://img.shields.io/github/issues-raw/mirinsoft/sharpapp.svg?style=flat-square&logo=github&logoColor=white"
alt="GitHub issues">   
  
</p>

<p align="center">
  <a href="#Features">Key Features</a> •
  <a href="#how-to-use">How To Use</a> •
  <a href="#download">Download</a> •
  <a href="#credits">Credits</a> •
  <a href="#license">License</a>
</p>

Sharpapp is a free and portable tool building upon a PowerShell engine and community powered script files for disabling telemetry functions in Windows 10, uninstalling preinstalled apps and automating other tasks after a clean Installation of Windows 10.

![screenshot](https://github.com/mirinsoft/sharpapp/blob/master/sharpapp-intro.gif)

## Features

SharpApp will cover the following areas to prepare you for the "net" after a clean install or major Windows 10 updates

* Windows
	- Run a basic privacy template and disable the most telemetry functions to improve the "real" Windows experience.
* Apps 
	- Remove preinstalled, bloatware and sponsored apps
* Telemetry
	- Block IP adresses of telemetry
* Install 
	- Install basic software with integrated for Ninite service 
* Scripting
	- Execute optional scripts in PowerShell, e.g. run advanced scripts to remove Cortana or OneDrive and disable Windows Defender. Write your own GPO's by creating simple PowerShell scripts, putting them in scripts folder of SharpApp and run them all in one go!
* More
	- 100% free (please [donate](https://www.paypal.com/cgi-bin/webscr?cmd=_donations&business=donate@mirinsoft.com&lc=US&item_name=%20Mirinsoft&no_note=0&cn=&currency_code=USD&bn=PP-DonationsBF:btn_donateCC_LG.gif:NonHosted) and support me if you like it)
	- features community powered and trending script files for your privacy, windows and apps
	- customizible (no hard-coded scripts)
	- integrated Powershell scripting engine
	- simple to use
	- portable
	- leightweight and fast

More information can be found [here](http://www.mirinsoft.com/ms-apps/sharpapp) 

## How To Use

* **[Download](https://github.com/mirinsoft/sharpapp/releases)** the latest version of SharpApp.
* **Goto Navigation > # windows > Choose Privacy template** and download: `Basic template (for Beginners)`
  * Goto Navigation > # scripting > Select `basicPrivacyTemplate` from dropdown menu > **Run script**.
  * Do the same with `appsPrivacyTemplate`(optional).
* **Goto Navigation > # apps > Remove preinstalled apps manually**
  * or **download the Advanced Privacy template** (named `Windows10Debloater`) which will guide you with interactive prompts through the     removal of bloatware and locking down other parts of Windows 10.
 * **Goto Navigation > # telemetry > Block IP adresses of telemetry**
   * You can add here optional community rules provided by [crazy-max/WindowsSpyBlocker](https://github.com/crazy-max/WindowsSpyBlocker)
 * **Goto Navigation > # install > Install software packages**
   * This should be self explanatory! SharpApp uses here the [Ninite service](https://ninite.com/)
   * Optional you can also include a PowerShell GUI package for Ninite. Just hit **Add more packages** and select `Ninite PowerShellGUI`
 
* **[PROFFESIONAL TEMPLATE]** This template includes script files provided by **[W4RH4WK/Debloat-Windows-10](https://github.com/W4RH4WK/Debloat-Windows-10/tree/master/scripts)**. **It's execution is done completely silent!**
 **SharpApp support six of these script files** All script files are descriped when selected.
  * `block-telemetry` for blocking related domains via hosts file and Windows Firewall
  * `disable-services` for disabling unwanted telemetry services
  * `disable-windows-defender` for disabling Windows Defender via Group policies
  * `install-basic-software` for installing software packages with chocolatey package manager
  * `remove-default-apps` for removing bloatware shipped with Windows
  * `remove-onedrive` for removing OneDrive Integration

## Download

(Latest release) [Download](https://github.com/mirinsoft/sharpapp/releases) 

## Credits

This software uses the following packages:

- [W4RH4WK/Debloat-Windows-10](https://github.com/W4RH4WK/Debloat-Windows-10/)
- [Sycnex/Windows10Debloater](https://github.com/Sycnex/Windows10Debloater)
- [MinersWin / Ninite](https://github.com/MinersWin/Ninite)

## License

Donationware

---

> [mirinsoft.com](https://www.mirinsoft.com) &nbsp;&middot;&nbsp;
> GitHub [@mirinsoft](https://github.com/mirinsoft) &nbsp;&middot;&nbsp;
> Twitter [@mirinsoft](https://twitter.com/mirinsoft)


