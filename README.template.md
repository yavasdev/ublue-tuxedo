# uBlue Tuxedo

### Universal Blue images for TUXEDO and Clevo laptops

[![GitHub stars](https://img.shields.io/github/stars/{{AUTHOR}}/{{REPO_NAME}}?style=flat)](https://github.com/{{AUTHOR}}/{{REPO_NAME}}/stargazers)
[![Build images](https://github.com/{{AUTHOR}}/{{REPO_NAME}}/actions/workflows/build.yml/badge.svg)](https://github.com/{{AUTHOR}}/{{REPO_NAME}}/actions/workflows/build.yml)
[![Update README](https://github.com/{{AUTHOR}}/{{REPO_NAME}}/actions/workflows/update-readme.yml/badge.svg)](https://github.com/{{AUTHOR}}/{{REPO_NAME}}/actions/workflows/update-readme.yml)

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
| Report a compatibility result | [Open an issue](https://github.com/{{AUTHOR}}/{{REPO_NAME}}/issues) |

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
| Image | Latest version / date |
| --- | --- |
| [`bazzite-deck-gnome-nvidia-tuxedo`](https://ghcr.io/{{AUTHOR}}/bazzite-deck-gnome-nvidia-tuxedo) | [![Latest version]({{BADGE_URL}}/{{AUTHOR}}/bazzite-deck-gnome-nvidia-tuxedo/{{TAGS}})](https://ghcr.io/{{AUTHOR}}/bazzite-deck-gnome-nvidia-tuxedo) |
| [`bazzite-deck-gnome-tuxedo`](https://ghcr.io/{{AUTHOR}}/bazzite-deck-gnome-tuxedo) | [![Latest version]({{BADGE_URL}}/{{AUTHOR}}/bazzite-deck-gnome-tuxedo/{{TAGS}})](https://ghcr.io/{{AUTHOR}}/bazzite-deck-gnome-tuxedo) |
| [`bazzite-deck-nvidia-tuxedo`](https://ghcr.io/{{AUTHOR}}/bazzite-deck-nvidia-tuxedo) | [![Latest version]({{BADGE_URL}}/{{AUTHOR}}/bazzite-deck-nvidia-tuxedo/{{TAGS}})](https://ghcr.io/{{AUTHOR}}/bazzite-deck-nvidia-tuxedo) |
| [`bazzite-deck-tuxedo`](https://ghcr.io/{{AUTHOR}}/bazzite-deck-tuxedo) | [![Latest version]({{BADGE_URL}}/{{AUTHOR}}/bazzite-deck-tuxedo/{{TAGS}})](https://ghcr.io/{{AUTHOR}}/bazzite-deck-tuxedo) |
| [`bazzite-dx-gnome-tuxedo`](https://ghcr.io/{{AUTHOR}}/bazzite-dx-gnome-tuxedo) | [![Latest version]({{BADGE_URL}}/{{AUTHOR}}/bazzite-dx-gnome-tuxedo/{{TAGS}})](https://ghcr.io/{{AUTHOR}}/bazzite-dx-gnome-tuxedo) |
| [`bazzite-dx-nvidia-gnome-tuxedo`](https://ghcr.io/{{AUTHOR}}/bazzite-dx-nvidia-gnome-tuxedo) | [![Latest version]({{BADGE_URL}}/{{AUTHOR}}/bazzite-dx-nvidia-gnome-tuxedo/{{TAGS}})](https://ghcr.io/{{AUTHOR}}/bazzite-dx-nvidia-gnome-tuxedo) |
| [`bazzite-dx-nvidia-tuxedo`](https://ghcr.io/{{AUTHOR}}/bazzite-dx-nvidia-tuxedo) | [![Latest version]({{BADGE_URL}}/{{AUTHOR}}/bazzite-dx-nvidia-tuxedo/{{TAGS}})](https://ghcr.io/{{AUTHOR}}/bazzite-dx-nvidia-tuxedo) |
| [`bazzite-dx-tuxedo`](https://ghcr.io/{{AUTHOR}}/bazzite-dx-tuxedo) | [![Latest version]({{BADGE_URL}}/{{AUTHOR}}/bazzite-dx-tuxedo/{{TAGS}})](https://ghcr.io/{{AUTHOR}}/bazzite-dx-tuxedo) |
| [`bazzite-gdx-tuxedo`](https://ghcr.io/{{AUTHOR}}/bazzite-gdx-tuxedo) | [![Latest version]({{BADGE_URL}}/{{AUTHOR}}/bazzite-gdx-tuxedo/{{TAGS}})](https://ghcr.io/{{AUTHOR}}/bazzite-gdx-tuxedo) |
| [`bazzite-gnome-nvidia-tuxedo`](https://ghcr.io/{{AUTHOR}}/bazzite-gnome-nvidia-tuxedo) | [![Latest version]({{BADGE_URL}}/{{AUTHOR}}/bazzite-gnome-nvidia-tuxedo/{{TAGS}})](https://ghcr.io/{{AUTHOR}}/bazzite-gnome-nvidia-tuxedo) |
| [`bazzite-gnome-tuxedo`](https://ghcr.io/{{AUTHOR}}/bazzite-gnome-tuxedo) | [![Latest version]({{BADGE_URL}}/{{AUTHOR}}/bazzite-gnome-tuxedo/{{TAGS}})](https://ghcr.io/{{AUTHOR}}/bazzite-gnome-tuxedo) |
| [`bazzite-nvidia-tuxedo`](https://ghcr.io/{{AUTHOR}}/bazzite-nvidia-tuxedo) | [![Latest version]({{BADGE_URL}}/{{AUTHOR}}/bazzite-nvidia-tuxedo/{{TAGS}})](https://ghcr.io/{{AUTHOR}}/bazzite-nvidia-tuxedo) |
| [`bazzite-tuxedo`](https://ghcr.io/{{AUTHOR}}/bazzite-tuxedo) | [![Latest version]({{BADGE_URL}}/{{AUTHOR}}/bazzite-tuxedo/{{TAGS}})](https://ghcr.io/{{AUTHOR}}/bazzite-tuxedo) |

##### Bluefin Images
| Image | Latest version / date |
| --- | --- |
| [`bluefin-dx-nvidia-tuxedo`](https://ghcr.io/{{AUTHOR}}/bluefin-dx-nvidia-tuxedo) | [![Latest version]({{BADGE_URL}}/{{AUTHOR}}/bluefin-dx-nvidia-tuxedo/{{TAGS}})](https://ghcr.io/{{AUTHOR}}/bluefin-dx-nvidia-tuxedo) |
| [`bluefin-dx-tuxedo`](https://ghcr.io/{{AUTHOR}}/bluefin-dx-tuxedo) | [![Latest version]({{BADGE_URL}}/{{AUTHOR}}/bluefin-dx-tuxedo/{{TAGS}})](https://ghcr.io/{{AUTHOR}}/bluefin-dx-tuxedo) |
| [`bluefin-nvidia-tuxedo`](https://ghcr.io/{{AUTHOR}}/bluefin-nvidia-tuxedo) | [![Latest version]({{BADGE_URL}}/{{AUTHOR}}/bluefin-nvidia-tuxedo/{{TAGS}})](https://ghcr.io/{{AUTHOR}}/bluefin-nvidia-tuxedo) |
| [`bluefin-tuxedo`](https://ghcr.io/{{AUTHOR}}/bluefin-tuxedo) | [![Latest version]({{BADGE_URL}}/{{AUTHOR}}/bluefin-tuxedo/{{TAGS}})](https://ghcr.io/{{AUTHOR}}/bluefin-tuxedo) |
| [`utah-nvidia-tuxedo`](https://ghcr.io/{{AUTHOR}}/utah-nvidia-tuxedo) | [![Latest version]({{BADGE_URL}}/{{AUTHOR}}/utah-nvidia-tuxedo/{{TAGS}})](https://ghcr.io/{{AUTHOR}}/utah-nvidia-tuxedo) |
| [`utah-tuxedo`](https://ghcr.io/{{AUTHOR}}/utah-tuxedo) | [![Latest version]({{BADGE_URL}}/{{AUTHOR}}/utah-tuxedo/{{TAGS}})](https://ghcr.io/{{AUTHOR}}/utah-tuxedo) |

##### Aurora Images
| Image | Latest version / date |
| --- | --- |
| [`aurora-tuxedo`](https://ghcr.io/{{AUTHOR}}/aurora-tuxedo) | [![Latest version]({{BADGE_URL}}/{{AUTHOR}}/aurora-tuxedo/{{TAGS}})](https://ghcr.io/{{AUTHOR}}/aurora-tuxedo) |
| [`aurora-nvidia-open-tuxedo`](https://ghcr.io/{{AUTHOR}}/aurora-nvidia-open-tuxedo) | [![Latest version]({{BADGE_URL}}/{{AUTHOR}}/aurora-nvidia-open-tuxedo/{{TAGS}})](https://ghcr.io/{{AUTHOR}}/aurora-nvidia-open-tuxedo) |

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
| [{{AUTHOR}}/{{REPO_NAME}}](https://github.com/{{AUTHOR}}/{{REPO_NAME}}) | [![GitHub stars](https://img.shields.io/github/stars/{{AUTHOR}}/{{REPO_NAME}}?style=flat)](https://github.com/{{AUTHOR}}/{{REPO_NAME}}/stargazers) | [Repository activity](https://github.com/{{AUTHOR}}/{{REPO_NAME}}/commits/main) | Daily 06:00 UTC and recipe changes | Own [GHCR packages](https://ghcr.io/{{AUTHOR}}/bazzite-dx-nvidia-tuxedo) | Cosign key in [`cosign.pub`](cosign.pub) | BlueBuild recipes for multiple popular Universal Blue families |
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
  rpm-ostree rebase ostree-unverified-registry:ghcr.io/{{AUTHOR}}/<image>:<tag>
  ```
- Reboot to complete the rebase:
  ```bash
  systemctl reboot
  ```
- Then switch to the signed image:
  ```bash
  rpm-ostree rebase ostree-image-signed:docker://ghcr.io/{{AUTHOR}}/<image>:<tag>
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

Want to help expand hardware coverage? If you can test one of the unverified variants on your hardware, please [open an issue](https://github.com/{{AUTHOR}}/{{REPO_NAME}}/issues) with the image variant, laptop model, GPU, and your test results.


## Verification

These images are digitally signed using [Sigstore](https://www.sigstore.dev/)'s [cosign](https://github.com/sigstore/cosign) tool. To verify the authenticity of the image, you can download the `cosign.pub` file from this repository and run the following command:

```bash
cosign verify --key cosign.pub ghcr.io/{{AUTHOR}}/<image>:<tag>
```

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

For Clevo devices, check the chassis identifier reported by the firmware or `dmidecode` before opening a report. Please [open an issue](https://github.com/{{AUTHOR}}/{{REPO_NAME}}/issues) with the exact model, Clevo chassis identifier, CPU, GPU, and test results.

## Recent tagged image versions

The badge links are static, while their displayed version and publication date come from small JSON files refreshed by GitHub Actions after each successful build. Clicking a badge opens the corresponding live GitHub Packages page. GitHub README rendering does not reliably support side-by-side Markdown tables, so the lists are split into two readable tables.

### Bazzite Images

| Image | Stable version / date | Testing version / date | Latest version / date |
| --- | --- | --- | --- |
| `bazzite-deck-gnome-nvidia-tuxedo` | [![stable version]({{BADGE_URL}}/{{AUTHOR}}/bazzite-deck-gnome-nvidia-tuxedo/stable)](https://ghcr.io/{{AUTHOR}}/bazzite-deck-gnome-nvidia-tuxedo) | [![testing version]({{BADGE_URL}}/{{AUTHOR}}/bazzite-deck-gnome-nvidia-tuxedo/testing)](https://ghcr.io/{{AUTHOR}}/bazzite-deck-gnome-nvidia-tuxedo) | [![latest version]({{BADGE_URL}}/{{AUTHOR}}/bazzite-deck-gnome-nvidia-tuxedo/latest)](https://ghcr.io/{{AUTHOR}}/bazzite-deck-gnome-nvidia-tuxedo) |
| `bazzite-deck-gnome-tuxedo` | [![stable version]({{BADGE_URL}}/{{AUTHOR}}/bazzite-deck-gnome-tuxedo/stable)](https://ghcr.io/{{AUTHOR}}/bazzite-deck-gnome-tuxedo) | [![testing version]({{BADGE_URL}}/{{AUTHOR}}/bazzite-deck-gnome-tuxedo/testing)](https://ghcr.io/{{AUTHOR}}/bazzite-deck-gnome-tuxedo) | [![latest version]({{BADGE_URL}}/{{AUTHOR}}/bazzite-deck-gnome-tuxedo/latest)](https://ghcr.io/{{AUTHOR}}/bazzite-deck-gnome-tuxedo) |
| `bazzite-deck-nvidia-tuxedo` | [![stable version]({{BADGE_URL}}/{{AUTHOR}}/bazzite-deck-nvidia-tuxedo/stable)](https://ghcr.io/{{AUTHOR}}/bazzite-deck-nvidia-tuxedo) | [![testing version]({{BADGE_URL}}/{{AUTHOR}}/bazzite-deck-nvidia-tuxedo/testing)](https://ghcr.io/{{AUTHOR}}/bazzite-deck-nvidia-tuxedo) | [![latest version]({{BADGE_URL}}/{{AUTHOR}}/bazzite-deck-nvidia-tuxedo/latest)](https://ghcr.io/{{AUTHOR}}/bazzite-deck-nvidia-tuxedo) |
| `bazzite-deck-tuxedo` | [![stable version]({{BADGE_URL}}/{{AUTHOR}}/bazzite-deck-tuxedo/stable)](https://ghcr.io/{{AUTHOR}}/bazzite-deck-tuxedo) | [![testing version]({{BADGE_URL}}/{{AUTHOR}}/bazzite-deck-tuxedo/testing)](https://ghcr.io/{{AUTHOR}}/bazzite-deck-tuxedo) | [![latest version]({{BADGE_URL}}/{{AUTHOR}}/bazzite-deck-tuxedo/latest)](https://ghcr.io/{{AUTHOR}}/bazzite-deck-tuxedo) |
| `bazzite-dx-gnome-tuxedo` | [![stable version]({{BADGE_URL}}/{{AUTHOR}}/bazzite-dx-gnome-tuxedo/stable)](https://ghcr.io/{{AUTHOR}}/bazzite-dx-gnome-tuxedo) | [![testing version]({{BADGE_URL}}/{{AUTHOR}}/bazzite-dx-gnome-tuxedo/testing)](https://ghcr.io/{{AUTHOR}}/bazzite-dx-gnome-tuxedo) | [![latest version]({{BADGE_URL}}/{{AUTHOR}}/bazzite-dx-gnome-tuxedo/latest)](https://ghcr.io/{{AUTHOR}}/bazzite-dx-gnome-tuxedo) |
| `bazzite-dx-nvidia-gnome-tuxedo` | [![stable version]({{BADGE_URL}}/{{AUTHOR}}/bazzite-dx-nvidia-gnome-tuxedo/stable)](https://ghcr.io/{{AUTHOR}}/bazzite-dx-nvidia-gnome-tuxedo) | [![testing version]({{BADGE_URL}}/{{AUTHOR}}/bazzite-dx-nvidia-gnome-tuxedo/testing)](https://ghcr.io/{{AUTHOR}}/bazzite-dx-nvidia-gnome-tuxedo) | [![latest version]({{BADGE_URL}}/{{AUTHOR}}/bazzite-dx-nvidia-gnome-tuxedo/latest)](https://ghcr.io/{{AUTHOR}}/bazzite-dx-nvidia-gnome-tuxedo) |
| `bazzite-dx-nvidia-tuxedo` | [![stable version]({{BADGE_URL}}/{{AUTHOR}}/bazzite-dx-nvidia-tuxedo/stable)](https://ghcr.io/{{AUTHOR}}/bazzite-dx-nvidia-tuxedo) | [![testing version]({{BADGE_URL}}/{{AUTHOR}}/bazzite-dx-nvidia-tuxedo/testing)](https://ghcr.io/{{AUTHOR}}/bazzite-dx-nvidia-tuxedo) | [![latest version]({{BADGE_URL}}/{{AUTHOR}}/bazzite-dx-nvidia-tuxedo/latest)](https://ghcr.io/{{AUTHOR}}/bazzite-dx-nvidia-tuxedo) |
| `bazzite-dx-tuxedo` | [![stable version]({{BADGE_URL}}/{{AUTHOR}}/bazzite-dx-tuxedo/stable)](https://ghcr.io/{{AUTHOR}}/bazzite-dx-tuxedo) | [![testing version]({{BADGE_URL}}/{{AUTHOR}}/bazzite-dx-tuxedo/testing)](https://ghcr.io/{{AUTHOR}}/bazzite-dx-tuxedo) | [![latest version]({{BADGE_URL}}/{{AUTHOR}}/bazzite-dx-tuxedo/latest)](https://ghcr.io/{{AUTHOR}}/bazzite-dx-tuxedo) |
| `bazzite-gdx-tuxedo` | [![stable version]({{BADGE_URL}}/{{AUTHOR}}/bazzite-gdx-tuxedo/stable)](https://ghcr.io/{{AUTHOR}}/bazzite-gdx-tuxedo) | [![testing version]({{BADGE_URL}}/{{AUTHOR}}/bazzite-gdx-tuxedo/testing)](https://ghcr.io/{{AUTHOR}}/bazzite-gdx-tuxedo) | [![latest version]({{BADGE_URL}}/{{AUTHOR}}/bazzite-gdx-tuxedo/latest)](https://ghcr.io/{{AUTHOR}}/bazzite-gdx-tuxedo) |
| `bazzite-gnome-nvidia-tuxedo` | [![stable version]({{BADGE_URL}}/{{AUTHOR}}/bazzite-gnome-nvidia-tuxedo/stable)](https://ghcr.io/{{AUTHOR}}/bazzite-gnome-nvidia-tuxedo) | [![testing version]({{BADGE_URL}}/{{AUTHOR}}/bazzite-gnome-nvidia-tuxedo/testing)](https://ghcr.io/{{AUTHOR}}/bazzite-gnome-nvidia-tuxedo) | [![latest version]({{BADGE_URL}}/{{AUTHOR}}/bazzite-gnome-nvidia-tuxedo/latest)](https://ghcr.io/{{AUTHOR}}/bazzite-gnome-nvidia-tuxedo) |
| `bazzite-gnome-tuxedo` | [![stable version]({{BADGE_URL}}/{{AUTHOR}}/bazzite-gnome-tuxedo/stable)](https://ghcr.io/{{AUTHOR}}/bazzite-gnome-tuxedo) | [![testing version]({{BADGE_URL}}/{{AUTHOR}}/bazzite-gnome-tuxedo/testing)](https://ghcr.io/{{AUTHOR}}/bazzite-gnome-tuxedo) | [![latest version]({{BADGE_URL}}/{{AUTHOR}}/bazzite-gnome-tuxedo/latest)](https://ghcr.io/{{AUTHOR}}/bazzite-gnome-tuxedo) |
| `bazzite-nvidia-tuxedo` | [![stable version]({{BADGE_URL}}/{{AUTHOR}}/bazzite-nvidia-tuxedo/stable)](https://ghcr.io/{{AUTHOR}}/bazzite-nvidia-tuxedo) | [![testing version]({{BADGE_URL}}/{{AUTHOR}}/bazzite-nvidia-tuxedo/testing)](https://ghcr.io/{{AUTHOR}}/bazzite-nvidia-tuxedo) | [![latest version]({{BADGE_URL}}/{{AUTHOR}}/bazzite-nvidia-tuxedo/latest)](https://ghcr.io/{{AUTHOR}}/bazzite-nvidia-tuxedo) |
| `bazzite-tuxedo` | [![stable version]({{BADGE_URL}}/{{AUTHOR}}/bazzite-tuxedo/stable)](https://ghcr.io/{{AUTHOR}}/bazzite-tuxedo) | [![testing version]({{BADGE_URL}}/{{AUTHOR}}/bazzite-tuxedo/testing)](https://ghcr.io/{{AUTHOR}}/bazzite-tuxedo) | [![latest version]({{BADGE_URL}}/{{AUTHOR}}/bazzite-tuxedo/latest)](https://ghcr.io/{{AUTHOR}}/bazzite-tuxedo) |

### Bluefin Images

| Image | Stable version / date | Testing version / date | Latest version / date |
| --- | --- | --- | --- |
| `bluefin-dx-nvidia-tuxedo` | [![stable version]({{BADGE_URL}}/{{AUTHOR}}/bluefin-dx-nvidia-tuxedo/stable)](https://ghcr.io/{{AUTHOR}}/bluefin-dx-nvidia-tuxedo) | [![testing version]({{BADGE_URL}}/{{AUTHOR}}/bluefin-dx-nvidia-tuxedo/testing)](https://ghcr.io/{{AUTHOR}}/bluefin-dx-nvidia-tuxedo) | [![latest version]({{BADGE_URL}}/{{AUTHOR}}/bluefin-dx-nvidia-tuxedo/latest)](https://ghcr.io/{{AUTHOR}}/bluefin-dx-nvidia-tuxedo) |
| `bluefin-dx-tuxedo` | [![stable version]({{BADGE_URL}}/{{AUTHOR}}/bluefin-dx-tuxedo/stable)](https://ghcr.io/{{AUTHOR}}/bluefin-dx-tuxedo) | [![testing version]({{BADGE_URL}}/{{AUTHOR}}/bluefin-dx-tuxedo/testing)](https://ghcr.io/{{AUTHOR}}/bluefin-dx-tuxedo) | [![latest version]({{BADGE_URL}}/{{AUTHOR}}/bluefin-dx-tuxedo/latest)](https://ghcr.io/{{AUTHOR}}/bluefin-dx-tuxedo) |
| `bluefin-nvidia-tuxedo` | [![stable version]({{BADGE_URL}}/{{AUTHOR}}/bluefin-nvidia-tuxedo/stable)](https://ghcr.io/{{AUTHOR}}/bluefin-nvidia-tuxedo) | [![testing version]({{BADGE_URL}}/{{AUTHOR}}/bluefin-nvidia-tuxedo/testing)](https://ghcr.io/{{AUTHOR}}/bluefin-nvidia-tuxedo) | [![latest version]({{BADGE_URL}}/{{AUTHOR}}/bluefin-nvidia-tuxedo/latest)](https://ghcr.io/{{AUTHOR}}/bluefin-nvidia-tuxedo) |
| `bluefin-tuxedo` | [![stable version]({{BADGE_URL}}/{{AUTHOR}}/bluefin-tuxedo/stable)](https://ghcr.io/{{AUTHOR}}/bluefin-tuxedo) | [![testing version]({{BADGE_URL}}/{{AUTHOR}}/bluefin-tuxedo/testing)](https://ghcr.io/{{AUTHOR}}/bluefin-tuxedo) | [![latest version]({{BADGE_URL}}/{{AUTHOR}}/bluefin-tuxedo/latest)](https://ghcr.io/{{AUTHOR}}/bluefin-tuxedo) |
| `utah-nvidia-tuxedo` | [![stable version]({{BADGE_URL}}/{{AUTHOR}}/utah-nvidia-tuxedo/stable)](https://ghcr.io/{{AUTHOR}}/utah-nvidia-tuxedo) | [![testing version]({{BADGE_URL}}/{{AUTHOR}}/utah-nvidia-tuxedo/testing)](https://ghcr.io/{{AUTHOR}}/utah-nvidia-tuxedo) | [![latest version]({{BADGE_URL}}/{{AUTHOR}}/utah-nvidia-tuxedo/latest)](https://ghcr.io/{{AUTHOR}}/utah-nvidia-tuxedo) |
| `utah-tuxedo` | [![stable version]({{BADGE_URL}}/{{AUTHOR}}/utah-tuxedo/stable)](https://ghcr.io/{{AUTHOR}}/utah-tuxedo) | [![testing version]({{BADGE_URL}}/{{AUTHOR}}/utah-tuxedo/testing)](https://ghcr.io/{{AUTHOR}}/utah-tuxedo) | [![latest version]({{BADGE_URL}}/{{AUTHOR}}/utah-tuxedo/latest)](https://ghcr.io/{{AUTHOR}}/utah-tuxedo) |

### Aurora Images

| Image | Stable version / date | Testing version / date | Latest version / date |
| --- | --- | --- | --- |
| `aurora-tuxedo` | [![stable version]({{BADGE_URL}}/{{AUTHOR}}/aurora-tuxedo/stable)](https://ghcr.io/{{AUTHOR}}/aurora-tuxedo) | [![testing version]({{BADGE_URL}}/{{AUTHOR}}/aurora-tuxedo/testing)](https://ghcr.io/{{AUTHOR}}/aurora-tuxedo) | [![latest version]({{BADGE_URL}}/{{AUTHOR}}/aurora-tuxedo/latest)](https://ghcr.io/{{AUTHOR}}/aurora-tuxedo) |
| `aurora-nvidia-open-tuxedo` | [![stable version]({{BADGE_URL}}/{{AUTHOR}}/aurora-nvidia-open-tuxedo/stable)](https://ghcr.io/{{AUTHOR}}/aurora-nvidia-open-tuxedo) | [![testing version]({{BADGE_URL}}/{{AUTHOR}}/aurora-nvidia-open-tuxedo/testing)](https://ghcr.io/{{AUTHOR}}/aurora-nvidia-open-tuxedo) | [![latest version]({{BADGE_URL}}/{{AUTHOR}}/aurora-nvidia-open-tuxedo/latest)](https://ghcr.io/{{AUTHOR}}/aurora-nvidia-open-tuxedo) |

## Limitations and future work

- The current workflow rebuilds images even when the upstream base image has not changed. An upstream update checker is needed to avoid unnecessary builds.
- Automatic discovery of changes outside the `recipes/` folder is not implemented. A robust solution would need base-repository tag checking and automatic discovery of new base repositories; the latter is intentionally not promised because it is complex and unnecessary for the current scope.
- Recipes repeat similar configuration. A manifest-based or otherwise more declarative format would make maintenance cleaner.

## To-do

- [ ] Add an upstream base-image update checker to skip unchanged builds.
- [ ] Investigate repository and base-image tag checks beyond `recipes/`.
- [ ] Evaluate automatic discovery of new supported base repositories.
- [ ] Reduce repeated recipe configuration with manifests or shared declarative components.
- [ ] Expand hardware testing and document confirmed laptop models.

## Credits

- [BlueBuild](https://github.com/blue-build) and the [BlueBuild GitHub Action](https://github.com/blue-build/github-action) for the recipe format and build system.
- [Universal Blue](https://github.com/ublue-os) and the maintainers of the Bazzite, Bluefin, and Aurora base images.
- [TUXEDO Computers](https://github.com/tuxedocomputers) for the drivers and Tuxedo Control Center.
- Project contributors and code owners: [@{{AUTHOR}}](https://github.com/{{AUTHOR}}).

## Repository history

[![Star History Chart](https://api.star-history.com/svg?repos={{AUTHOR}}/{{REPO_NAME}}&type=Date)](https://star-history.com/#{{AUTHOR}}/{{REPO_NAME}}&Date)