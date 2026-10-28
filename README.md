# uBlue Tuxedo

### Universal Blue images for TUXEDO and Clevo laptops

[![GitHub stars](https://img.shields.io/github/stars/yavasdev/ublue-tuxedo?style=flat)](https://github.com/yavasdev/ublue-tuxedo/stargazers)
[![Build images](https://github.com/yavasdev/ublue-tuxedo/actions/workflows/build.yml/badge.svg)](https://github.com/yavasdev/ublue-tuxedo/actions/workflows/build.yml)
[![Update README](https://github.com/yavasdev/ublue-tuxedo/actions/workflows/update-readme.yml/badge.svg)](https://github.com/yavasdev/ublue-tuxedo/actions/workflows/update-readme.yml)

[🇺🇸 English](README.md) | [🇹🇷 Türkçe](docs/README-TR.md)

> [!IMPORTANT]
> This project provides experimental, community-maintained Atomic images. Check the compatibility notes and tested variants before rebasing, and keep a working rollback or recovery option.

uBlue Tuxedo provides ready-to-use [Universal Blue](https://universal-blue.org/) images with TUXEDO drivers and **Tuxedo Control Center (TCC)** included. It targets TUXEDO and Clevo-based laptops and publishes new builds automatically with [BlueBuild](https://blue-build.org/).

## Start here
| I want to... | Go to |
| --- | --- |
| Choose an image | [Available Latest Images](#available-images) |
| Install on an existing Atomic system | [Installation](#installation) |
| Check whether my laptop is a good candidate | [Potentially supported devices](#potentially-supported-devices) |
| Confirm an image is authentic | [Verification](#verification) |
| See what has been tested | [Human-tested distributions](#human-tested-distributions) |
| Report a compatibility result | [Open an issue](https://github.com/yavasdev/ublue-tuxedo/issues) |

## What you get
- **TUXEDO kernel drivers** compiled against the matching kernel.
- **Tuxedo Control Center** for hardware, fan, and power management.
- **Universal Blue choices** across Bazzite, Bluefin, Aurora, and selected Utah variants.
- **Automated updates** from daily builds and recipe changes.
- **Signed images** published to GitHub Container Registry and verifiable with Cosign.

## Available Images
Builds run automatically every day. Each badge shows the latest published tag and date; click an image name or badge to open its GitHub Container Registry package. The authoritative image definitions are in [`recipes/`](recipes/).

### Choosing an image
1. Choose the same image family and desktop environment you already use.
2. Choose an `nvidia` variant only if your laptop uses NVIDIA graphics.
3. Use `stable` for daily use when it is available; use `latest` for the newest build and `testing` for early validation.

### Bazzite Images
| Image | Latest versions | Size |
| --- | --- | --- |
| [`bazzite-deck-gnome-nvidia-tuxedo`](https://ghcr.io/yavasdev/bazzite-deck-gnome-nvidia-tuxedo) | [![Latest version](https://ghcr-badge.egpl.dev/yavasdev/bazzite-deck-gnome-nvidia-tuxedo/tags?label=release&ignore=*-*-*,*sha*,stable,latest,testing&n=3)](https://ghcr.io/yavasdev/bazzite-deck-gnome-nvidia-tuxedo) | [![Latest version](https://ghcr-badge.egpl.dev/yavasdev/bazzite-deck-gnome-nvidia-tuxedo/size?color=%2326a269&tag=stable&label=latest+image+size)](https://ghcr.io/yavasdev/bazzite-deck-gnome-nvidia-tuxedo) |
| [`bazzite-deck-gnome-tuxedo`](https://ghcr.io/yavasdev/bazzite-deck-gnome-tuxedo) | [![Latest version](https://ghcr-badge.egpl.dev/yavasdev/bazzite-deck-gnome-tuxedo/tags?label=release&ignore=*-*-*,*sha*,stable,latest,testing&n=3)](https://ghcr.io/yavasdev/bazzite-deck-gnome-tuxedo) | [![Latest version](https://ghcr-badge.egpl.dev/yavasdev/bazzite-deck-gnome-tuxedo/size?color=%2326a269&tag=stable&label=latest+image+size)](https://ghcr.io/yavasdev/bazzite-deck-gnome-tuxedo) |
| [`bazzite-deck-nvidia-tuxedo`](https://ghcr.io/yavasdev/bazzite-deck-nvidia-tuxedo) | [![Latest version](https://ghcr-badge.egpl.dev/yavasdev/bazzite-deck-nvidia-tuxedo/tags?label=release&ignore=*-*-*,*sha*,stable,latest,testing&n=3)](https://ghcr.io/yavasdev/bazzite-deck-nvidia-tuxedo) | [![Latest version](https://ghcr-badge.egpl.dev/yavasdev/bazzite-deck-nvidia-tuxedo/size?color=%2326a269&tag=stable&label=latest+image+size)](https://ghcr.io/yavasdev/bazzite-deck-nvidia-tuxedo) |
| [`bazzite-deck-tuxedo`](https://ghcr.io/yavasdev/bazzite-deck-tuxedo) | [![Latest version](https://ghcr-badge.egpl.dev/yavasdev/bazzite-deck-tuxedo/tags?label=release&ignore=*-*-*,*sha*,stable,latest,testing&n=3)](https://ghcr.io/yavasdev/bazzite-deck-tuxedo) | [![Latest version](https://ghcr-badge.egpl.dev/yavasdev/bazzite-deck-tuxedo/size?color=%2326a269&tag=stable&label=latest+image+size)](https://ghcr.io/yavasdev/bazzite-deck-tuxedo) |
| [`bazzite-dx-gnome-tuxedo`](https://ghcr.io/yavasdev/bazzite-dx-gnome-tuxedo) | [![Latest version](https://ghcr-badge.egpl.dev/yavasdev/bazzite-dx-gnome-tuxedo/tags?label=release&ignore=*-*-*,*sha*,stable,latest,testing&n=3)](https://ghcr.io/yavasdev/bazzite-dx-gnome-tuxedo) | [![Latest version](https://ghcr-badge.egpl.dev/yavasdev/bazzite-dx-gnome-tuxedo/size?color=%2326a269&tag=stable&label=latest+image+size)](https://ghcr.io/yavasdev/bazzite-dx-gnome-tuxedo) |
| [`bazzite-dx-nvidia-gnome-tuxedo`](https://ghcr.io/yavasdev/bazzite-dx-nvidia-gnome-tuxedo) | [![Latest version](https://ghcr-badge.egpl.dev/yavasdev/bazzite-dx-nvidia-gnome-tuxedo/tags?label=release&ignore=*-*-*,*sha*,stable,latest,testing&n=3)](https://ghcr.io/yavasdev/bazzite-dx-nvidia-gnome-tuxedo) | [![Latest version](https://ghcr-badge.egpl.dev/yavasdev/bazzite-dx-nvidia-gnome-tuxedo/size?color=%2326a269&tag=stable&label=latest+image+size)](https://ghcr.io/yavasdev/bazzite-dx-nvidia-gnome-tuxedo) |
| [`bazzite-dx-nvidia-tuxedo`](https://ghcr.io/yavasdev/bazzite-dx-nvidia-tuxedo) | [![Latest version](https://ghcr-badge.egpl.dev/yavasdev/bazzite-dx-nvidia-tuxedo/tags?label=release&ignore=*-*-*,*sha*,stable,latest,testing&n=3)](https://ghcr.io/yavasdev/bazzite-dx-nvidia-tuxedo) | [![Latest version](https://ghcr-badge.egpl.dev/yavasdev/bazzite-dx-nvidia-tuxedo/size?color=%2326a269&tag=stable&label=latest+image+size)](https://ghcr.io/yavasdev/bazzite-dx-nvidia-tuxedo) |
| [`bazzite-dx-tuxedo`](https://ghcr.io/yavasdev/bazzite-dx-tuxedo) | [![Latest version](https://ghcr-badge.egpl.dev/yavasdev/bazzite-dx-tuxedo/tags?label=release&ignore=*-*-*,*sha*,stable,latest,testing&n=3)](https://ghcr.io/yavasdev/bazzite-dx-tuxedo) | [![Latest version](https://ghcr-badge.egpl.dev/yavasdev/bazzite-dx-tuxedo/size?color=%2326a269&tag=stable&label=latest+image+size)](https://ghcr.io/yavasdev/bazzite-dx-tuxedo) |
| [`bazzite-gdx-tuxedo`](https://ghcr.io/yavasdev/bazzite-gdx-tuxedo) | [![Latest version](https://ghcr-badge.egpl.dev/yavasdev/bazzite-gdx-tuxedo/tags?label=release&ignore=*-*-*,*sha*,stable,latest,testing&n=3)](https://ghcr.io/yavasdev/bazzite-gdx-tuxedo) | [![Latest version](https://ghcr-badge.egpl.dev/yavasdev/bazzite-gdx-tuxedo/size?color=%2326a269&tag=stable&label=latest+image+size&tag=latest)](https://ghcr.io/yavasdev/bazzite-gdx-tuxedo) |
| [`bazzite-gnome-nvidia-tuxedo`](https://ghcr.io/yavasdev/bazzite-gnome-nvidia-tuxedo) | [![Latest version](https://ghcr-badge.egpl.dev/yavasdev/bazzite-gnome-nvidia-tuxedo/tags?label=release&ignore=*-*-*,*sha*,stable,latest,testing&n=3)](https://ghcr.io/yavasdev/bazzite-gnome-nvidia-tuxedo) | [![Latest version](https://ghcr-badge.egpl.dev/yavasdev/bazzite-gnome-nvidia-tuxedo/size?color=%2326a269&tag=stable&label=latest+image+size)](https://ghcr.io/yavasdev/bazzite-gnome-nvidia-tuxedo) |
| [`bazzite-gnome-tuxedo`](https://ghcr.io/yavasdev/bazzite-gnome-tuxedo) | [![Latest version](https://ghcr-badge.egpl.dev/yavasdev/bazzite-gnome-tuxedo/tags?label=release&ignore=*-*-*,*sha*,stable,latest,testing&n=3)](https://ghcr.io/yavasdev/bazzite-gnome-tuxedo) | [![Latest version](https://ghcr-badge.egpl.dev/yavasdev/bazzite-gnome-tuxedo/size?color=%2326a269&tag=stable&label=latest+image+size)](https://ghcr.io/yavasdev/bazzite-gnome-tuxedo) |
| [`bazzite-nvidia-tuxedo`](https://ghcr.io/yavasdev/bazzite-nvidia-tuxedo) | [![Latest version](https://ghcr-badge.egpl.dev/yavasdev/bazzite-nvidia-tuxedo/tags?label=release&ignore=*-*-*,*sha*,stable,latest,testing&n=3)](https://ghcr.io/yavasdev/bazzite-nvidia-tuxedo) | [![Latest version](https://ghcr-badge.egpl.dev/yavasdev/bazzite-nvidia-tuxedo/size?color=%2326a269&tag=stable&label=latest+image+size)](https://ghcr.io/yavasdev/bazzite-nvidia-tuxedo) |
| [`bazzite-tuxedo`](https://ghcr.io/yavasdev/bazzite-tuxedo) | [![Latest version](https://ghcr-badge.egpl.dev/yavasdev/bazzite-tuxedo/tags?label=release&ignore=*-*-*,*sha*,stable,latest,testing&n=3)](https://ghcr.io/yavasdev/bazzite-tuxedo) | [![Latest version](https://ghcr-badge.egpl.dev/yavasdev/bazzite-tuxedo/size?color=%2326a269&tag=stable&label=latest+image+size)](https://ghcr.io/yavasdev/bazzite-tuxedo) |

##### Bluefin Images
| Image | Latest version |
| --- | --- |
| [`bluefin-dx-nvidia-tuxedo`](https://ghcr.io/yavasdev/bluefin-dx-nvidia-tuxedo) | [![Latest version](https://ghcr-badge.egpl.dev/yavasdev/bluefin-dx-nvidia-tuxedo/tags?label=release&ignore=*-*-*,*sha*,stable,latest,testing&n=3)](https://ghcr.io/yavasdev/bluefin-dx-nvidia-tuxedo) | [![Latest version](https://ghcr-badge.egpl.dev/yavasdev/bluefin-dx-nvidia-tuxedo/size?color=%2326a269&tag=stable&label=latest+image+size)](https://ghcr.io/yavasdev/bluefin-dx-nvidia-tuxedo) |
| [`bluefin-dx-tuxedo`](https://ghcr.io/yavasdev/bluefin-dx-tuxedo) | [![Latest version](https://ghcr-badge.egpl.dev/yavasdev/bluefin-dx-tuxedo/tags?label=release&ignore=*-*-*,*sha*,stable,latest,testing&n=3)](https://ghcr.io/yavasdev/bluefin-dx-tuxedo) | [![Latest version](https://ghcr-badge.egpl.dev/yavasdev/bluefin-dx-tuxedo/size?color=%2326a269&tag=stable&label=latest+image+size)](https://ghcr.io/yavasdev/bluefin-dx-tuxedo) |
| [`bluefin-nvidia-tuxedo`](https://ghcr.io/yavasdev/bluefin-nvidia-tuxedo) | [![Latest version](https://ghcr-badge.egpl.dev/yavasdev/bluefin-nvidia-tuxedo/tags?label=release&ignore=*-*-*,*sha*,stable,latest,testing&n=3)](https://ghcr.io/yavasdev/bluefin-nvidia-tuxedo) | [![Latest version](https://ghcr-badge.egpl.dev/yavasdev/bluefin-nvidia-tuxedo/size?color=%2326a269&tag=stable&label=latest+image+size)](https://ghcr.io/yavasdev/bluefin-nvidia-tuxedo) |
| [`bluefin-tuxedo`](https://ghcr.io/yavasdev/bluefin-tuxedo) | [![Latest version](https://ghcr-badge.egpl.dev/yavasdev/bluefin-tuxedo/tags?label=release&ignore=*-*-*,*sha*,stable,latest,testing&n=3)](https://ghcr.io/yavasdev/bluefin-tuxedo) | [![Latest version](https://ghcr-badge.egpl.dev/yavasdev/bluefin-tuxedo/size?color=%2326a269&tag=stable&label=latest+image+size)](https://ghcr.io/yavasdev/bluefin-tuxedo) |
| [`utah-nvidia-tuxedo`](https://ghcr.io/yavasdev/utah-nvidia-tuxedo) | [![Latest version](https://ghcr-badge.egpl.dev/yavasdev/utah-nvidia-tuxedo/tags?label=release&ignore=*-*-*,*sha*,stable,latest,testing&n=3)](https://ghcr.io/yavasdev/utah-nvidia-tuxedo) | [![Latest version](https://ghcr-badge.egpl.dev/yavasdev/utah-nvidia-tuxedo/size?color=%2326a269&tag=stable&label=latest+image+size)](https://ghcr.io/yavasdev/utah-nvidia-tuxedo) |
| [`utah-tuxedo`](https://ghcr.io/yavasdev/utah-tuxedo) | [![Latest version](https://ghcr-badge.egpl.dev/yavasdev/utah-tuxedo/tags?label=release&ignore=*-*-*,*sha*,stable,latest,testing&n=3)](https://ghcr.io/yavasdev/utah-tuxedo) | [![Latest version](https://ghcr-badge.egpl.dev/yavasdev/utah-tuxedo/size?color=%2326a269&tag=stable&label=latest+image+size)](https://ghcr.io/yavasdev/utah-tuxedo) |

##### Aurora Images
| Image | Latest version |
| --- | --- |
| [`aurora-tuxedo`](https://ghcr.io/yavasdev/aurora-tuxedo) | [![Latest version](https://ghcr-badge.egpl.dev/yavasdev/aurora-tuxedo/tags?label=release&ignore=*-*-*,*sha*,stable,latest,testing&n=3)](https://ghcr.io/yavasdev/aurora-tuxedo) | [![Latest version](https://ghcr-badge.egpl.dev/yavasdev/aurora-tuxedo/size?color=%2326a269&tag=stable&label=latest+image+size)](https://ghcr.io/yavasdev/aurora-tuxedo) |
| [`aurora-nvidia-open-tuxedo`](https://ghcr.io/yavasdev/aurora-nvidia-open-tuxedo) | [![Latest version](https://ghcr-badge.egpl.dev/yavasdev/aurora-nvidia-open-tuxedo/tags?label=release&ignore=*-*-*,*sha*,stable,latest,testing&n=3)](https://ghcr.io/yavasdev/aurora-nvidia-open-tuxedo) | [![Latest version](https://ghcr-badge.egpl.dev/yavasdev/aurora-nvidia-open-tuxedo/size?color=%2326a269&tag=stable&label=latest+image+size)](https://ghcr.io/yavasdev/aurora-nvidia-open-tuxedo) |

This repository builds custom **Atomic (immutable) Linux** images with TUXEDO drivers and applications on compatible [Universal Blue](https://universal-blue.org/) bases. Separate recipes support multiple Universal Blue families.

The recipes integrate the following features on top of their selected base image:
- **Tuxedo Drivers:** Up-to-date kernel modules compiled from source and baked directly into the system.
- **Tuxedo Control Center (TCC):** Hardware, fan, and power management tool.

The recipes use BlueBuild's `dnf` module for package installation. TCC is downloaded during the image build, unpacked without running service-management scripts, and its systemd units are linked into the standard systemd directory. Kernel modules are compiled against the matching kernel development tree; when the base repositories do not provide it, the build resolves the kernel's Fedora release and downloads the exact `kernel-devel` package from Fedora Koji.

## About this repository
This repository turns popular Universal Blue images into TUXEDO/Clevo-friendly images with Tuxedo drivers and Tuxedo Control Center included. It is built with [BlueBuild](https://blue-build.org/) recipes and publishes signed images to its own GitHub Container Registry repository.

The workflow runs every day at **06:00 UTC**, shortly after the upstream images usually begin building. This keeps the images up to date without requiring users to maintain a local build.

Because the recipes use BlueBuild's `dnf` module, this approach can extend to most popular Universal Blue images that include DNF support in their system, subject to compatible packages and kernel sources.

### Why uBlue Tuxedo?
- Performs daily scheduled builds.
- Supports Bazzite, Bluefin, Aurora, and selected Utah variants, as well as potential other ublue images.
- Provides images signed with Cosign that can be verified using the public key in this repository.
- Provides drivers compiled for the matching kernel and allows for a Tuxedo Control Center installation without relying on installation scripts.

### Why choose this over other TCC github repos?
This repository is better suited for those who want a maintained, recipe-based image set: it covers more Universal Blue variants, uses the current BlueBuild workflow, builds daily, and publishes its own signed images. 

Older projects like the [ublue-tuxedo-tcc project](https://github.com/BrickMan240/ublue-tuxedo-tcc) still provide a useful reference; however, their goal was to offer a temporary workaround until upstream support improved. Since this issue remains unresolved today, I created this repo that generates images every day.

| Repository | GitHub stars | Latest activity | Build trigger | Registry | Signing | Scope |
| --- | ---: | --- | --- | --- | --- | --- |
| [yavasdev/ublue-tuxedo](https://github.com/yavasdev/ublue-tuxedo) | [![GitHub stars](https://img.shields.io/github/stars/yavasdev/ublue-tuxedo?style=flat)](https://github.com/yavasdev/ublue-tuxedo/stargazers) | [Repository activity](https://github.com/yavasdev/ublue-tuxedo/commits/main) | Daily 06:00 UTC and recipe changes | Own [GHCR packages](https://ghcr.io/yavasdev/bazzite-dx-nvidia-tuxedo) | Cosign key in [`cosign.pub`](cosign.pub) | BlueBuild recipes for multiple popular Universal Blue families |
| [BrickMan240/ublue-tuxedo-tcc](https://github.com/BrickMan240/ublue-tuxedo-tcc) | [![GitHub stars](https://img.shields.io/github/stars/BrickMan240/ublue-tuxedo-tcc?style=flat)](https://github.com/BrickMan240/ublue-tuxedo-tcc/stargazers) | [Last repository update](https://github.com/BrickMan240/ublue-tuxedo-tcc/commits/main) | Shell/build-script based | Own GHCR images | Cosign key in repository | Legacy TCC and driver integration |

The star counts in the table are loaded live from GitHub.

> [!WARNING]
> Custom images are an [experimental Fedora feature](https://www.fedoraproject.org/wiki/Changes/OstreeNativeContainerStable). Rebasing changes your operating system deployment. Read the upstream documentation for your base image and make sure you understand how to roll back.

## Installation

> [!WARNING]
> This process will replace your current Atomic Fedora or Universal Blue operating system image. Make sure that the image variant you choose matches your hardware, base image, and current installation.
> You are responsible for any system breakages caused by selecting the wrong image.

> [!TIP]
> Before rebasing, record your current deployment with `rpm-ostree status` and confirm that you have a working bootable fallback.

### Rebase an existing Atomic installation

Before rebasing, removing layered packages recommended:

```bash
rpm-ostree reset
```

Choose an image that matches your hardware and keep the same desktop environment as your current installation. Replace `<image>` and `<tag>` below with one of the names in [Available images](#available-images) or [Recent tagged image versions](#recent-tagged-image-versions).

To rebase an existing Atomic Fedora installation to a published image, replace `<image>` and `<tag>` with the name of the recipe-built image you want to use:

- First rebase to the unsigned image to install the signing keys and policies:
  ```bash
  rpm-ostree rebase ostree-unverified-registry:ghcr.io/yavasdev/<image>:<tag>
  ```
- Reboot to complete the rebase:
  ```bash
  systemctl reboot
  ```
- Then switch to the signed image:
  ```bash
  rpm-ostree rebase ostree-image-signed:docker://ghcr.io/yavasdev/<image>:<tag>
  ```
- Reboot again to complete the installation:
  ```bash
  systemctl reboot
  ```

Image names and supported variants are defined by the files in [`recipes/`](recipes/); The `latest` tag points to the latest, The `stable` tag points to the last stable and The `testing` tag points to the last testing build for their configured Fedora version.

### Roll back

If you need to return to the previous deployment, select it from the boot menu or run:

```bash
rpm-ostree rollback
systemctl reboot
```

## Recipe and base image notes

Recipes cover multiple Universal Blue families, including Bazzite, Bluefin, Aurora, and selected Project Bluefin images. Each recipe defines its base image, packages, image name, and supported variant. The authoritative list is in [`recipes/`](recipes/).

The Utah recipes use Utah's Hummingbird-based kernel. The images like this patched in script with resolving matching kernel development files dynamically during the build instead of relying on a fixed Fedora release or a generic `kernel-devel` package.

Project Bluefin Dakota is not currently compatible with these BlueBuild recipes. Dakota is assembled with BuildStream rather than the DNF package-management model used here.

## Human-tested distributions

The following table tracks variants that have been installed and used on physical hardware. A successful CI build does not count as a human test.

| Distribution | Variant | Test status |
| --- | --- | --- |
| [Bazzite](https://bazzite.gg/) | Bazzite KDE | Not tested yet |
| [Bazzite](https://bazzite.gg/) | Bazzite GNOME | Not tested yet |
| [Bazzite](https://bazzite.gg/) | Bazzite NVIDIA | Not tested yet |
| [Bazzite](https://bazzite.gg/) | Bazzite GNOME NVIDIA | Not tested yet |
| [Bazzite](https://bazzite.gg/) | Bazzite DX KDE | Not tested yet |
| [Bazzite](https://bazzite.gg/) | Bazzite DX GNOME | Not tested yet |
| [Bazzite](https://bazzite.gg/) | **Bazzite DX NVIDIA** | [**Human tested**](docs/tests/bazzite-dx-nvidia-tuxedo/) |
| [Bazzite](https://bazzite.gg/) | **Bazzite DX GNOME NVIDIA** | [**Human tested**](docs/tests/bazzite-dx-nvidia-gnome-tuxedo/) |
| [Bazzite](https://bazzite.gg/) | Bazzite GDX KDE | Not tested yet |
| [Bazzite](https://bazzite.gg/) | Bazzite Deck KDE | Not tested yet |
| [Bazzite](https://bazzite.gg/) | Bazzite Deck GNOME | Not tested yet |
| [Bazzite](https://bazzite.gg/) | Bazzite Deck NVIDIA | Not tested yet |
| [Bazzite](https://bazzite.gg/) | Bazzite Deck GNOME NVIDIA | Not tested yet |
| [Bluefin](https://projectbluefin.io/) | Bluefin | Not tested yet |
| [Bluefin](https://projectbluefin.io/) | Bluefin NVIDIA | Not tested yet |
| [Bluefin](https://projectbluefin.io/) | Bluefin DX | Not tested yet |
| [Bluefin](https://projectbluefin.io/) | Bluefin DX NVIDIA | Not tested yet |
| [Bluefin](https://projectbluefin.io/) | Bluefin Utah | Not tested yet |
| [Bluefin](https://projectbluefin.io/) | Bluefin Utah NVIDIA | Not tested yet |
| [Aurora](https://getaurora.dev/) | Aurora | Not tested yet |
| [Aurora](https://getaurora.dev/) | Aurora NVIDIA | Not tested yet |

Human-tested status depends on the specific laptop, GPU, kernel, and desktop variant. Project Bluefin Dakota is excluded because it is not compatible with the current BlueBuild recipes.

Want to help expand hardware coverage? If you can test one of the unverified variants on your hardware, please [open an issue](https://github.com/yavasdev/ublue-tuxedo/issues) with the image variant, laptop model, GPU, and your test results.


## Verification

These images are digitally signed using [Sigstore](https://www.sigstore.dev/)'s [cosign](https://github.com/sigstore/cosign) tool. To verify the authenticity of the image, you can download the `cosign.pub` file from this repository and run the following command:

```bash
cosign verify --key cosign.pub ghcr.io/yavasdev/<image>:<tag>
```

## Creating your own cosign.pub when forking
its actually easy to create and use your cosign.key and cosign.pub files, here is the guide:

### install cosign tool
you can install it from package managers default repos or cosign's github releases.

#### direct release:
```sh
curl -O -L "https://github.com/sigstore/cosign/releases/latest/download/cosign-linux-amd64"
# or arm64 if you have one (maybe arm pc's future is coming!?)
# curl -O -L "https://github.com/sigstore/cosign/releases/latest/download/cosign-linux-arm64"
```

#### make it executable:
After downloading, you need to rename the binary and grant it execution permissions so your system can run it:
```sh
mv cosign-linux-* cosign
chmod +x cosign
```

### generate the keys
Now, you can generate your key pair using the binary you just downloaded. 

**Crucial Step:** When the tool prompts you for a password, **leave it completely blank and press `Enter`!** If you set a password, the automated GitHub Actions workflow won't be able to decrypt and use the key to sign your image.

```sh
./cosign generate-key-pair
```
This command will create two new files in your repository root: `cosign.pub` (public key) and `cosign.key` (private key).

### setup your repository
Now that your keys are generated, they need to go to their respective places.

**1. The Public Key (`cosign.pub`)**
This file is used to verify your image's integrity. It needs to be committed directly to the root of your repository.
```sh
git add cosign.pub
git commit -m "add: cosign public key"
git push
```

**2. The Private Key (`cosign.key`)**

This key is used by the workflow to actually sign the image. It must be kept secret.
- Go to your repository on GitHub.
- Navigate to **Settings** -> **Secrets and variables** -> **Actions**.
- Click **New repository secret**.
- Name the secret **`SIGNING_SECRET`**.
- Open your local `cosign.key` file with a text editor, copy its **entire contents**, and paste it into the Secret value box.
- Click "Add secret".

### cleanup
Since your public key is pushed and your private key is safely stored in GitHub Secrets, you no longer need the local private key or the binary. Delete them so you don't accidentally commit your private key in the future:
```sh
rm cosign.key cosign
```
You are all set! Your builds should now successfully sign your images.

###

## Create an installation ISO

To install an image from scratch using a USB drive, generate an ISO on a
Fedora Atomic-based system by following the [BlueBuild ISO
Guide](https://blue-build.org/how-to/generate-iso/#_top). ISO files are not
provided by this repository.

## Potentially supported devices

These device families are potential candidates because they are TUXEDO laptops or use Clevo chassis. This is not a compatibility guarantee: the exact model, CPU/GPU configuration, firmware, and kernel all matter.

### TUXEDO laptops

- **InfinityBook:** InfinityBook Pro and InfinityBook Max families
- **Stellaris:** Stellaris 16 and other Stellaris configurations
- **Polaris:** Polaris 15/16 and other Polaris configurations
- **Sirius:** Sirius 16 and other Sirius configurations
- **Pulse:** Pulse 14/16 and other Pulse configurations
- **Aura:** Aura 14/15 and other Aura configurations

See the current [TUXEDO laptops](https://www.tuxedocomputers.com/index.php) for exact models and configurations.

### Clevo-based laptops

Clevo laptops are sold under many different brands, so the Clevo chassis identifier is often more useful than the retailer's model name. Potential families include:

- **NH series:** NH50, NH55, NH57, NH58, NH70, NH77, and NH79
- **NS series:** NS50, NS51, NS70, and NS7x
- **P series:** P150, P151, P157, P170, and P7xx
- **V series:** V140, V150, V15x, and V17x

Known companies that have sold Clevo-based laptops, including historical or model-specific offerings, include:

- **Turkey:** Monster Notebook
- **North America:** Sager, Eurocom, HIDevolution, Eluktronics, Origin PC, Xotic PC, Prostar, LPC Digital, Maingear, Digital Storm, and System76
- **United Kingdom and Ireland:** PCSpecialist and Scan
- **Germany and Central Europe:** Schenker/XMG, Medion, and PCW Polska
- **Benelux:** BTO, NovaCustom, Laptop With Linux, and Clevocenter
- **Portugal and Spain:** Obsidian-PC and Slimbook
- **Poland and Eastern Europe:** Dream Machines
- **Australia and New Zealand:** Metabox and Leader Computers
- **Singapore and Southeast Asia:** Aftershock and Illegear
- **Asia:** Thunderobot and other regional Clevo integrators and distributors

This is a broad, non-exhaustive list. Some companies use a mixture of Clevo, Tongfang, Quanta, or proprietary chassis, and sourcing can change between product generations. The exact model and chassis identifier must therefore still be checked.

For Clevo devices, check the chassis identifier reported by the firmware or `dmidecode` before opening a report. Please [open an issue](https://github.com/yavasdev/ublue-tuxedo/issues) with the exact model, Clevo chassis identifier, CPU, GPU, and test results.

## Recent tagged image versions

The badge links are static, while their displayed version and publication date come from small JSON files refreshed by GitHub Actions after each successful build. Clicking a badge opens the corresponding live GitHub Packages page. GitHub README rendering does not reliably support side-by-side Markdown tables, so the lists are split into two readable tables.

### Bazzite Images

| Image | Stable version | Testing version | Latest version | Size |
| --- | --- | --- | --- | --- |
| `bazzite-deck-gnome-nvidia-tuxedo` | [![stable version](https://ghcr-badge.egpl.dev/yavasdev/bazzite-deck-gnome-nvidia-tuxedo/latest_tag?label=stable&ignore=*-*-*,sha*,latest*,testing*,stable)](https://ghcr.io/yavasdev/bazzite-deck-gnome-nvidia-tuxedo) | [![testing version](https://img.shields.io/badge/testing-none-lightgrey)](https://ghcr.io/yavasdev/bazzite-deck-gnome-nvidia-tuxedo) | [![latest version](https://img.shields.io/badge/latest-none-lightgrey)](https://ghcr.io/yavasdev/bazzite-deck-gnome-nvidia-tuxedo) | [![latest image size](https://ghcr-badge.egpl.dev/yavasdev/bazzite-deck-gnome-nvidia-tuxedo/size?color=%2326a269&tag=stable&label=latest+image+size)](https://ghcr.io/yavasdev/bazzite-deck-gnome-nvidia-tuxedo) |
| `bazzite-deck-gnome-tuxedo` | [![stable version](https://ghcr-badge.egpl.dev/yavasdev/bazzite-deck-gnome-tuxedo/latest_tag?label=stable&ignore=*-*-*,sha*,latest*,testing*,stable)](https://ghcr.io/yavasdev/bazzite-deck-gnome-tuxedo) | [![testing version](https://img.shields.io/badge/testing-none-lightgrey)](https://ghcr.io/yavasdev/bazzite-deck-gnome-tuxedo) | [![latest version](https://img.shields.io/badge/latest-none-lightgrey)](https://ghcr.io/yavasdev/bazzite-deck-gnome-tuxedo) | [![latest image size](https://ghcr-badge.egpl.dev/yavasdev/bazzite-deck-gnome-tuxedo/size?color=%2326a269&tag=stable&label=latest+image+size)](https://ghcr.io/yavasdev/bazzite-deck-gnome-tuxedo) |
| `bazzite-deck-nvidia-tuxedo` | [![stable version](https://ghcr-badge.egpl.dev/yavasdev/bazzite-deck-nvidia-tuxedo/latest_tag?label=stable&ignore=*-*-*,sha*,latest*,testing*,stable)](https://ghcr.io/yavasdev/bazzite-deck-nvidia-tuxedo) | [![testing version](https://img.shields.io/badge/testing-none-lightgrey)](https://ghcr.io/yavasdev/bazzite-deck-nvidia-tuxedo) | [![latest version](https://img.shields.io/badge/latest-none-lightgrey)](https://ghcr.io/yavasdev/bazzite-deck-nvidia-tuxedo) | [![latest image size](https://ghcr-badge.egpl.dev/yavasdev/bazzite-deck-nvidia-tuxedo/size?color=%2326a269&tag=stable&label=latest+image+size)](https://ghcr.io/yavasdev/bazzite-deck-nvidia-tuxedo) |
| `bazzite-deck-tuxedo` | [![stable version](https://ghcr-badge.egpl.dev/yavasdev/bazzite-deck-tuxedo/latest_tag?label=stable&ignore=*-*-*,sha*,latest*,testing*,stable)](https://ghcr.io/yavasdev/bazzite-deck-tuxedo) | [![testing version](https://img.shields.io/badge/testing-none-lightgrey)](https://ghcr.io/yavasdev/bazzite-deck-tuxedo) | [![latest version](https://img.shields.io/badge/latest-none-lightgrey)](https://ghcr.io/yavasdev/bazzite-deck-tuxedo) | [![latest image size](https://ghcr-badge.egpl.dev/yavasdev/bazzite-deck-tuxedo/size?color=%2326a269&tag=stable&label=latest+image+size)](https://ghcr.io/yavasdev/bazzite-deck-tuxedo) |
| `bazzite-dx-gnome-tuxedo` | [![stable version](https://ghcr-badge.egpl.dev/yavasdev/bazzite-dx-gnome-tuxedo/latest_tag?label=stable&ignore=*-*-*,sha*,latest*,testing*,stable)](https://ghcr.io/yavasdev/bazzite-dx-gnome-tuxedo) | [![testing version](https://img.shields.io/badge/testing-none-lightgrey)](https://ghcr.io/yavasdev/bazzite-dx-gnome-tuxedo) | [![latest version](https://img.shields.io/badge/latest-none-lightgrey)](https://ghcr.io/yavasdev/bazzite-dx-gnome-tuxedo) | [![latest image size](https://ghcr-badge.egpl.dev/yavasdev/bazzite-dx-gnome-tuxedo/size?color=%2326a269&tag=stable&label=latest+image+size)](https://ghcr.io/yavasdev/bazzite-dx-gnome-tuxedo) |
| `bazzite-dx-nvidia-gnome-tuxedo` | [![stable version](https://ghcr-badge.egpl.dev/yavasdev/bazzite-dx-nvidia-gnome-tuxedo/latest_tag?label=stable&ignore=*-*-*,sha*,latest*,testing*,stable)](https://ghcr.io/yavasdev/bazzite-dx-nvidia-gnome-tuxedo) | [![testing version](https://img.shields.io/badge/testing-none-lightgrey)](https://ghcr.io/yavasdev/bazzite-dx-nvidia-gnome-tuxedo) | [![latest version](https://img.shields.io/badge/latest-none-lightgrey)](https://ghcr.io/yavasdev/bazzite-dx-nvidia-gnome-tuxedo) | [![latest image size](https://ghcr-badge.egpl.dev/yavasdev/bazzite-dx-nvidia-gnome-tuxedo/size?color=%2326a269&tag=stable&label=latest+image+size)](https://ghcr.io/yavasdev/bazzite-dx-nvidia-gnome-tuxedo) |
| `bazzite-dx-nvidia-tuxedo` | [![stable version](https://ghcr-badge.egpl.dev/yavasdev/bazzite-dx-nvidia-tuxedo/latest_tag?label=stable&ignore=*-*-*,sha*,latest*,testing*,stable)](https://ghcr.io/yavasdev/bazzite-dx-nvidia-tuxedo) | [![testing version](https://img.shields.io/badge/testing-none-lightgrey)](https://ghcr.io/yavasdev/bazzite-dx-nvidia-tuxedo) | [![latest version](https://ghcr-badge.egpl.dev/yavasdev/bazzite-dx-nvidia-tuxedo/latest_tag?label=latest&ignore=*-*-*,sha*,stable*,testing*,latest)](https://ghcr.io/yavasdev/bazzite-dx-nvidia-tuxedo) | [![latest image size](https://ghcr-badge.egpl.dev/yavasdev/bazzite-dx-nvidia-tuxedo/size?color=%2326a269&tag=stable&label=latest+image+size)](https://ghcr.io/yavasdev/bazzite-dx-nvidia-tuxedo) |
| `bazzite-dx-tuxedo` | [![stable version](https://ghcr-badge.egpl.dev/yavasdev/bazzite-dx-tuxedo/latest_tag?label=stable&ignore=*-*-*,sha*,latest*,testing*,stable)](https://ghcr.io/yavasdev/bazzite-dx-tuxedo) | [![testing version](https://img.shields.io/badge/testing-none-lightgrey)](https://ghcr.io/yavasdev/bazzite-dx-tuxedo) | [![latest version](https://ghcr-badge.egpl.dev/yavasdev/bazzite-dx-tuxedo/latest_tag?label=latest&ignore=*-*-*,sha*,stable*,testing*,latest)](https://ghcr.io/yavasdev/bazzite-dx-tuxedo) | [![latest image size](https://ghcr-badge.egpl.dev/yavasdev/bazzite-dx-tuxedo/size?color=%2326a269&tag=stable&label=latest+image+size)](https://ghcr.io/yavasdev/bazzite-dx-tuxedo) |
| `bazzite-gdx-tuxedo` | [![stable version](https://img.shields.io/badge/stable-none-lightgrey)](https://ghcr.io/yavasdev/bazzite-gdx-tuxedo) | [![testing version](https://img.shields.io/badge/testing-none-lightgrey)](https://ghcr.io/yavasdev/bazzite-gdx-tuxedo) | [![latest version](https://ghcr-badge.egpl.dev/yavasdev/bazzite-gdx-tuxedo/latest_tag?label=latest&ignore=*-*-*,sha*,stable*,testing*,latest)](https://ghcr.io/yavasdev/bazzite-gdx-tuxedo) | [![latest image size](https://ghcr-badge.egpl.dev/yavasdev/bazzite-gdx-tuxedo/size?color=%2326a269&tag=stable&label=latest+image+size&tag=latest)](https://ghcr.io/yavasdev/bazzite-gdx-tuxedo) |
| `bazzite-gnome-nvidia-tuxedo` | [![stable version](https://ghcr-badge.egpl.dev/yavasdev/bazzite-gnome-nvidia-tuxedo/latest_tag?label=stable&ignore=*-*-*,sha*,latest*,testing*,stable)](https://ghcr.io/yavasdev/bazzite-gnome-nvidia-tuxedo) | [![testing version](https://img.shields.io/badge/testing-none-lightgrey)](https://ghcr.io/yavasdev/bazzite-gnome-nvidia-tuxedo) | [![latest version](https://img.shields.io/badge/latest-none-lightgrey)](https://ghcr.io/yavasdev/bazzite-gnome-nvidia-tuxedo) | [![latest image size](https://ghcr-badge.egpl.dev/yavasdev/bazzite-gnome-nvidia-tuxedo/size?color=%2326a269&tag=stable&label=latest+image+size)](https://ghcr.io/yavasdev/bazzite-gnome-nvidia-tuxedo) |
| `bazzite-gnome-tuxedo` | [![stable version](https://ghcr-badge.egpl.dev/yavasdev/bazzite-gnome-tuxedo/latest_tag?label=stable&ignore=*-*-*,sha*,latest*,testing*,stable)](https://ghcr.io/yavasdev/bazzite-gnome-tuxedo) | [![testing version](https://img.shields.io/badge/testing-none-lightgrey)](https://ghcr.io/yavasdev/bazzite-gnome-tuxedo) | [![latest version](https://img.shields.io/badge/latest-none-lightgrey)](https://ghcr.io/yavasdev/bazzite-gnome-tuxedo) | [![latest image size](https://ghcr-badge.egpl.dev/yavasdev/bazzite-gnome-tuxedo/size?color=%2326a269&tag=stable&label=latest+image+size)](https://ghcr.io/yavasdev/bazzite-gnome-tuxedo) |
| `bazzite-nvidia-tuxedo` | [![stable version](https://ghcr-badge.egpl.dev/yavasdev/bazzite-nvidia-tuxedo/latest_tag?label=stable&ignore=*-*-*,sha*,latest*,testing*,stable)](https://ghcr.io/yavasdev/bazzite-nvidia-tuxedo) | [![testing version](https://img.shields.io/badge/testing-none-lightgrey)](https://ghcr.io/yavasdev/bazzite-nvidia-tuxedo) | [![latest version](https://img.shields.io/badge/latest-none-lightgrey)](https://ghcr.io/yavasdev/bazzite-nvidia-tuxedo) | [![latest image size](https://ghcr-badge.egpl.dev/yavasdev/bazzite-nvidia-tuxedo/size?color=%2326a269&tag=stable&label=latest+image+size)](https://ghcr.io/yavasdev/bazzite-nvidia-tuxedo) |
| `bazzite-tuxedo` | [![stable version](https://ghcr-badge.egpl.dev/yavasdev/bazzite-tuxedo/latest_tag?label=stable&ignore=*-*-*,sha*,latest*,testing*,stable)](https://ghcr.io/yavasdev/bazzite-tuxedo) | [![testing version](https://img.shields.io/badge/testing-none-lightgrey)](https://ghcr.io/yavasdev/bazzite-tuxedo) | [![latest version](https://img.shields.io/badge/latest-none-lightgrey)](https://ghcr.io/yavasdev/bazzite-tuxedo) | [![latest image size](https://ghcr-badge.egpl.dev/yavasdev/bazzite-tuxedo/size?color=%2326a269&tag=stable&label=latest+image+size)](https://ghcr.io/yavasdev/bazzite-tuxedo) |

### Bluefin Images

| Image | Stable version | Testing version | Latest version | Size |
| --- | --- | --- | --- | --- |
| `bluefin-dx-nvidia-tuxedo` | [![stable version](https://ghcr-badge.egpl.dev/yavasdev/bluefin-dx-nvidia-tuxedo/latest_tag?label=stable&ignore=*-*-*,sha*,latest*,testing*,stable)](https://ghcr.io/yavasdev/bluefin-dx-nvidia-tuxedo) | [![testing version](https://img.shields.io/badge/testing-none-lightgrey)](https://ghcr.io/yavasdev/bluefin-dx-nvidia-tuxedo) | [![latest version](https://img.shields.io/badge/latest-none-lightgrey)](https://ghcr.io/yavasdev/bluefin-dx-nvidia-tuxedo) | [![latest image size](https://ghcr-badge.egpl.dev/yavasdev/bluefin-dx-nvidia-tuxedo/size?color=%2326a269&tag=stable&label=latest+image+size)](https://ghcr.io/yavasdev/bluefin-dx-nvidia-tuxedo) |
| `bluefin-dx-tuxedo` | [![stable version](https://ghcr-badge.egpl.dev/yavasdev/bluefin-dx-tuxedo/latest_tag?label=stable&ignore=*-*-*,sha*,latest*,testing*,stable)](https://ghcr.io/yavasdev/bluefin-dx-tuxedo) | [![testing version](https://img.shields.io/badge/testing-none-lightgrey)](https://ghcr.io/yavasdev/bluefin-dx-tuxedo) | [![latest version](https://img.shields.io/badge/latest-none-lightgrey)](https://ghcr.io/yavasdev/bluefin-dx-tuxedo) | [![latest image size](https://ghcr-badge.egpl.dev/yavasdev/bluefin-dx-tuxedo/size?color=%2326a269&tag=stable&label=latest+image+size)](https://ghcr.io/yavasdev/bluefin-dx-tuxedo) |
| `bluefin-nvidia-tuxedo` | [![stable version](https://ghcr-badge.egpl.dev/yavasdev/bluefin-nvidia-tuxedo/latest_tag?label=stable&ignore=*-*-*,sha*,latest*,testing*,stable)](https://ghcr.io/yavasdev/bluefin-nvidia-tuxedo) | [![testing version](https://img.shields.io/badge/testing-none-lightgrey)](https://ghcr.io/yavasdev/bluefin-nvidia-tuxedo) | [![latest version](https://img.shields.io/badge/latest-none-lightgrey)](https://ghcr.io/yavasdev/bluefin-nvidia-tuxedo) | [![latest image size](https://ghcr-badge.egpl.dev/yavasdev/bluefin-nvidia-tuxedo/size?color=%2326a269&tag=stable&label=latest+image+size)](https://ghcr.io/yavasdev/bluefin-nvidia-tuxedo) |
| `bluefin-tuxedo` | [![stable version](https://ghcr-badge.egpl.dev/yavasdev/bluefin-tuxedo/latest_tag?label=stable&ignore=*-*-*,sha*,latest*,testing*,stable)](https://ghcr.io/yavasdev/bluefin-tuxedo) | [![testing version](https://img.shields.io/badge/testing-none-lightgrey)](https://ghcr.io/yavasdev/bluefin-tuxedo) | [![latest version](https://img.shields.io/badge/latest-none-lightgrey)](https://ghcr.io/yavasdev/bluefin-tuxedo) | [![latest image size](https://ghcr-badge.egpl.dev/yavasdev/bluefin-tuxedo/size?color=%2326a269&tag=stable&label=latest+image+size)](https://ghcr.io/yavasdev/bluefin-tuxedo) |
| `utah-nvidia-tuxedo` | [![stable version](https://ghcr-badge.egpl.dev/yavasdev/utah-nvidia-tuxedo/latest_tag?label=stable&ignore=*-*-*,sha*,latest*,testing*,stable)](https://ghcr.io/yavasdev/utah-nvidia-tuxedo) | [![testing version](https://img.shields.io/badge/testing-none-lightgrey)](https://ghcr.io/yavasdev/utah-nvidia-tuxedo) | [![latest version](https://img.shields.io/badge/latest-none-lightgrey)](https://ghcr.io/yavasdev/utah-nvidia-tuxedo) | [![latest image size](https://ghcr-badge.egpl.dev/yavasdev/utah-nvidia-tuxedo/size?color=%2326a269&tag=stable&label=latest+image+size)](https://ghcr.io/yavasdev/utah-nvidia-tuxedo) |
| `utah-tuxedo` | [![stable version](https://ghcr-badge.egpl.dev/yavasdev/utah-tuxedo/latest_tag?label=stable&ignore=*-*-*,sha*,latest*,testing*,stable)](https://ghcr.io/yavasdev/utah-tuxedo) | [![testing version](https://img.shields.io/badge/testing-none-lightgrey)](https://ghcr.io/yavasdev/utah-tuxedo) | [![latest version](https://img.shields.io/badge/latest-none-lightgrey)](https://ghcr.io/yavasdev/utah-tuxedo) | [![latest image size](https://ghcr-badge.egpl.dev/yavasdev/utah-tuxedo/size?color=%2326a269&tag=stable&label=latest+image+size)](https://ghcr.io/yavasdev/utah-tuxedo) |

### Aurora Images

| Image | Stable version | Testing version | Latest version | Size |
| --- | --- | --- | --- | --- |
| `aurora-tuxedo` | [![stable version](https://ghcr-badge.egpl.dev/yavasdev/aurora-tuxedo/latest_tag?label=stable&ignore=*-*-*,sha*,latest*,testing*,stable)](https://ghcr.io/yavasdev/aurora-tuxedo) | [![testing version](https://img.shields.io/badge/testing-none-lightgrey)](https://ghcr.io/yavasdev/aurora-tuxedo) | [![latest version](https://img.shields.io/badge/latest-none-lightgrey)](https://ghcr.io/yavasdev/aurora-tuxedo) | [![latest image size](https://ghcr-badge.egpl.dev/yavasdev/aurora-tuxedo/size?color=%2326a269&tag=stable&label=latest+image+size)](https://ghcr.io/yavasdev/aurora-tuxedo) |
| `aurora-nvidia-open-tuxedo` | [![stable version](https://ghcr-badge.egpl.dev/yavasdev/aurora-nvidia-open-tuxedo/latest_tag?label=stable&ignore=*-*-*,sha*,latest*,testing*,stable)](https://ghcr.io/yavasdev/aurora-nvidia-open-tuxedo) | [![testing version](https://img.shields.io/badge/testing-none-lightgrey)](https://ghcr.io/yavasdev/aurora-nvidia-open-tuxedo) | [![latest version](https://img.shields.io/badge/latest-none-lightgrey)](https://ghcr.io/yavasdev/aurora-nvidia-open-tuxedo) | [![latest image size](https://ghcr-badge.egpl.dev/yavasdev/aurora-nvidia-open-tuxedo/size?color=%2326a269&tag=stable&label=latest+image+size)](https://ghcr.io/yavasdev/aurora-nvidia-open-tuxedo) |

## Limitations and future work

- The current workflow rebuilds images even when the upstream base image has not changed. An upstream update checker is needed to avoid unnecessary builds.
- Automatic discovery of changes outside the `recipes/` folder is not implemented. A robust solution would need base-repository tag checking.
- Automatic discovery of new base repositories; the latter is intentionally not promised because it is complex and unnecessary for the current scope.
- Recipes repeat similar configuration. A manifest-based or otherwise more declarative format would make maintenance cleaner.

## To-do

- [ ] Add an upstream base-image update checker to skip unchanged builds.
- [ ] Investigate repository and base-image tag checks beyond `recipes/`.
- [ ] Evaluate automatic discovery of new supported base repositories.
- [ ] Reduce repeated recipe configuration with manifests or shared declarative components.
- [ ] Expand hardware testing and document confirmed laptop models.
- [ ] Create your own "https://ghcr-badge.domain.example".
- [ ] Add Date support to `ghrc-badge` project as contribution (use it on your fork until they merge).
- [ ] Add dates columns to readme's tables.

## Credits

- [BlueBuild](https://github.com/blue-build) and the [BlueBuild GitHub Action](https://github.com/blue-build/github-action) for the recipe format and build system.
- [Universal Blue](https://github.com/ublue-os) and the maintainers of the Bazzite, Bluefin, and Aurora base images.
- [TUXEDO Computers](https://github.com/tuxedocomputers) for the drivers and Tuxedo Control Center.
- Project contributors and code owners: [@yavasdev](https://github.com/yavasdev).

## Repository history

[![Star History Chart](https://api.star-history.com/svg?repos=yavasdev/ublue-tuxedo&type=Date)](https://star-history.com/#yavasdev/ublue-tuxedo&Date)
