<h1 align="center">
  <img src=".github/logo.png" alt="Quickgui" width="256" />
  <br />
  Quickgui
</h1>

<p align="center">A Flutter frontend for `quickget` and [quickemu](https://github.com/wimpysworld/quickemu).</p>
<div align="center"><img src="assets/github/screenshot1.png" alt="Quickgui screenshot"></div>

This project is discussed mainly on [![Discord](https://img.shields.io/discord/712850672223125565?color=87a556&label=WimpysWorld%20Discord&logo=discord&logoColor=ffffff&style=flat-square)](https://discord.gg/sNmz3uw) server

## Install

### quickemu

For this tool to work, you need to have `quickget`, from the `quickemu` 
package, in your current `path`.
Go to the `quickemu` [github page](https://github.com/wimpysworld/quickemu)
for more information about installing the tool.

### Standard package

On Ubuntu, `quickgui` can be installed as a standard package.

First, add this ppa (this only needs to be done once) :

```
sudo add-apt-repository ppa:yannick-mauray/quickgui
sudo apt update
```

Then, install the pacakge : 
```
sudo apt install quickgui
```

### Pre-compiled binary

* [Download](https://github.com/ymauray/quickgui/releases/) the binary.
* Uncompress the tarball wherever you want.
* From anywhere on the filesystem, run the app.

```bash
xz quickgui-a.b.c-d.tar.xz
tar xvf quickgui-a.b.c-d.tar
/path/to/quickgui
```

Alternativelly, use `update-alternatives` to install `quickgui` system-wide :

```bash
sudo update-alternatives --install /usr/local/bin/quickgui quickgui /path/to/quickgui 50
```

## Build

If you don't want to run the binary, you can rebuild the application yourself :

* [Set up Flutter](https://ubuntu.com/blog/getting-started-with-flutter-on-ubuntu)
* Clone this repo,
* Switch to the project's directory,
* Build the project,
* Run the app.

```bash
git clone https://github.com/ymauray/quickgui.git
cd quickgui
flutter build linux --release
./build/linux/x64/release/bundle/quickgui
```

You can also use `update-alternatives` for easier access to the app.

## Usage

From the main screen, select the operating system you want to use. The list can be filtered.


<div align="center"><img src="assets/github/screenshot1.png" alt="Main screen"></div>

<div align="center"><img src="assets/github/screenshot2.png" alt="List of supported operating systems"></div>

<div align="center"><img src="assets/github/screenshot3.png" alt="Search a distribution"></div>

Then, select the version :

<div align="center"><img src="assets/github/screenshot4.png" alt="Main screen after selection of the operating system"></div>

<div align="center"><img src="assets/github/screenshot5.png" alt="Versions of the selected operating system"></div>

If there are some options (Windows language, Pop!_OS nvidia or Intel, etc..), they will be displayed :

<div align="center"><img src="assets/github/screenshot8.png" alt="Choose an option"></div>

<div align="center"><img src="assets/github/screenshot9.png" alt="Option is diplayed"></div>

Then click "Download". The ISO will be downloaded in the current working directory, in 99% of cases that will be the directory where `quickgui` was invoked from.

<div align="center"><img src="assets/github/screenshot10.png" alt="Waiting for download"></div>

<div align="center"><img src="assets/github/screenshot11.png" alt="Downloading"></div>

<div align="center"><img src="assets/github/screenshot12.png" alt="Download finished"></div>
