<meta name="google-site-verification" content="7plxI9J4gy4xZL4KgJW1PPY-M4DJgyxxEqQnsrL4ktg" />

# uBlue Tuxedo

### TUXEDO ve Clevo dizüstü bilgisayarları için Universal Blue imajları

[![GitHub stars](https://img.shields.io/github/stars/yavasdev/ublue-tuxedo?style=flat)](https://github.com/yavasdev/ublue-tuxedo/stargazers)
[![Build images](https://github.com/yavasdev/ublue-tuxedo/actions/workflows/build.yml/badge.svg)](https://github.com/yavasdev/ublue-tuxedo/actions/workflows/build.yml)
[![Update README](https://github.com/yavasdev/ublue-tuxedo/actions/workflows/update-readme.yml/badge.svg)](https://github.com/yavasdev/ublue-tuxedo/actions/workflows/update-readme.yml)

[🇺🇸 English](README.md) | [🇹🇷 Türkçe](docs/README-TR.md)

> [!IMPORTANT]
> Bu proje deneysel ve topluluk tarafından sürdürülen Atomik imajlar sağlar. Rebase işleminden önce uyumluluk notlarını ve test edilmiş varyantları kontrol edin; çalışan bir geri alma veya kurtarma seçeneğiniz olsun.

uBlue Tuxedo, TUXEDO sürücüleri ve **Tuxedo Control Center (TCC)** içeren kullanıma hazır [Universal Blue](https://universal-blue.org/) imajları sağlar. Proje, TUXEDO ve Clevo tabanlı dizüstü bilgisayarları hedefler ve yeni imajları [BlueBuild](https://blue-build.org/) ile otomatik olarak yayımlar.

## Buradan başlayın

| Şunu yapmak istiyorum... | Şuraya gidin |
| --- | --- |
| Bir imaj seçmek | [Kullanılabilir imajlar](#kullanılabilir-imajlar) |
| Mevcut Atomik sisteme kurmak | [Kurulum](#kurulum) |
| Dizüstü bilgisayarımın uygunluğunu kontrol etmek | [Potansiyel olarak desteklenebilecek cihazlar](#potansiyel-olarak-desteklenebilecek-cihazlar) |
| İmajın gerçekliğini doğrulamak | [Doğrulama](#doğrulama) |
| Test edilenleri görmek | [İnsan tarafından test edilen dağıtımlar](#insan-tarafından-test-edilen-dağıtımlar) |
| Uyumluluk sonucu bildirmek | [Bir issue açın](https://github.com/yavasdev/ublue-tuxedo/issues) |

## Neler dahil?
- **TUXEDO çekirdek sürücüleri:** Eşleşen çekirdeğe karşı derlenir.
- **Tuxedo Control Center:** Donanım, fan ve güç yönetimi.
- **Universal Blue seçenekleri:** Bazzite, Bluefin, Aurora ve seçili Utah varyantları.
- **Otomatik güncellemeler:** Günlük derlemeler ve recipe değişiklikleri.
- **İmzalı imajlar:** GitHub Container Registry'de yayımlanır ve Cosign ile doğrulanabilir.

## Kullanılabilir imajlar
Derlemeler her gün otomatik olarak yapılır. Her badge, yayımlanan en son tag'i
ve tarihi gösterir; imajın adına veya badge'ine tıklayarak GitHub Container
Registry paketini açabilirsiniz. İmaj tanımlarının yetkili kaynağı
[`recipes/`](recipes/) klasörüdür.

### İmaj seçimi
1. Mevcut sisteminizle aynı imaj ailesini ve masaüstü ortamını seçin.
2. Yalnızca dizüstünüzde NVIDIA grafik varsa `nvidia` varyantını seçin.
3. Günlük kullanım için mevcutsa `stable`, en yeni derleme için `latest`,
   erken doğrulama için `testing` kullanın.

#### En Son Sürüm imajları

##### Bazzite İmajları
| İmaj | En son Sürüm İmajlar | Boyut |
| --- | --- | --- |
| [`bazzite-deck-gnome-nvidia-tuxedo`](https://ghcr.io/yavasdev/bazzite-deck-gnome-nvidia-tuxedo) | [![En son sürüm](https://ublue-badge-server.yavas.dev/yavasdev/bazzite-deck-gnome-nvidia-tuxedo/tags?label=release&ignore=*-*-*,*sha*,stable,latest,testing&n=3)](https://ghcr.io/yavasdev/bazzite-deck-gnome-nvidia-tuxedo) | [![Latest version](https://ublue-badge-server.yavas.dev/yavasdev/bazzite-deck-gnome-nvidia-tuxedo/size?color=%2326a269&tag=stable&label=latest+image+size)](https://ghcr.io/yavasdev/bazzite-deck-gnome-nvidia-tuxedo) |
| [`bazzite-deck-gnome-tuxedo`](https://ghcr.io/yavasdev/bazzite-deck-gnome-tuxedo) | [![En son sürüm](https://ublue-badge-server.yavas.dev/yavasdev/bazzite-deck-gnome-tuxedo/tags?label=release&ignore=*-*-*,*sha*,stable,latest,testing&n=3)](https://ghcr.io/yavasdev/bazzite-deck-gnome-tuxedo) | [![Latest version](https://ublue-badge-server.yavas.dev/yavasdev/bazzite-deck-gnome-tuxedo/size?color=%2326a269&tag=stable&label=latest+image+size)](https://ghcr.io/yavasdev/bazzite-deck-gnome-tuxedo) |
| [`bazzite-deck-nvidia-tuxedo`](https://ghcr.io/yavasdev/bazzite-deck-nvidia-tuxedo) | [![En son sürüm](https://ublue-badge-server.yavas.dev/yavasdev/bazzite-deck-nvidia-tuxedo/tags?label=release&ignore=*-*-*,*sha*,stable,latest,testing&n=3)](https://ghcr.io/yavasdev/bazzite-deck-nvidia-tuxedo) | [![Latest version](https://ublue-badge-server.yavas.dev/yavasdev/bazzite-deck-nvidia-tuxedo/size?color=%2326a269&tag=stable&label=latest+image+size)](https://ghcr.io/yavasdev/bazzite-deck-nvidia-tuxedo) |
| [`bazzite-deck-tuxedo`](https://ghcr.io/yavasdev/bazzite-deck-tuxedo) | [![En son sürüm](https://ublue-badge-server.yavas.dev/yavasdev/bazzite-deck-tuxedo/tags?label=release&ignore=*-*-*,*sha*,stable,latest,testing&n=3)](https://ghcr.io/yavasdev/bazzite-deck-tuxedo) | [![Latest version](https://ublue-badge-server.yavas.dev/yavasdev/bazzite-deck-tuxedo/size?color=%2326a269&tag=stable&label=latest+image+size)](https://ghcr.io/yavasdev/bazzite-deck-tuxedo) |
| [`bazzite-dx-gnome-tuxedo`](https://ghcr.io/yavasdev/bazzite-dx-gnome-tuxedo) | [![En son sürüm](https://ublue-badge-server.yavas.dev/yavasdev/bazzite-dx-gnome-tuxedo/tags?label=release&ignore=*-*-*,*sha*,stable,latest,testing&n=3)](https://ghcr.io/yavasdev/bazzite-dx-gnome-tuxedo) | [![Latest version](https://ublue-badge-server.yavas.dev/yavasdev/bazzite-dx-gnome-tuxedo/size?color=%2326a269&tag=stable&label=latest+image+size)](https://ghcr.io/yavasdev/bazzite-dx-gnome-tuxedo) |
| [`bazzite-dx-nvidia-gnome-tuxedo`](https://ghcr.io/yavasdev/bazzite-dx-nvidia-gnome-tuxedo) | [![En son sürüm](https://ublue-badge-server.yavas.dev/yavasdev/bazzite-dx-nvidia-gnome-tuxedo/tags?label=release&ignore=*-*-*,*sha*,stable,latest,testing&n=3)](https://ghcr.io/yavasdev/bazzite-dx-nvidia-gnome-tuxedo) | [![Latest version](https://ublue-badge-server.yavas.dev/yavasdev/bazzite-dx-nvidia-gnome-tuxedo/size?color=%2326a269&tag=stable&label=latest+image+size)](https://ghcr.io/yavasdev/bazzite-dx-nvidia-gnome-tuxedo) |
| [`bazzite-dx-nvidia-tuxedo`](https://ghcr.io/yavasdev/bazzite-dx-nvidia-tuxedo) | [![En son sürüm](https://ublue-badge-server.yavas.dev/yavasdev/bazzite-dx-nvidia-tuxedo/tags?label=release&ignore=*-*-*,*sha*,stable,latest,testing&n=3)](https://ghcr.io/yavasdev/bazzite-dx-nvidia-tuxedo) | [![Latest version](https://ublue-badge-server.yavas.dev/yavasdev/bazzite-dx-nvidia-tuxedo/size?color=%2326a269&tag=stable&label=latest+image+size)](https://ghcr.io/yavasdev/bazzite-dx-nvidia-tuxedo) |
| [`bazzite-dx-tuxedo`](https://ghcr.io/yavasdev/bazzite-dx-tuxedo) | [![En son sürüm](https://ublue-badge-server.yavas.dev/yavasdev/bazzite-dx-tuxedo/tags?label=release&ignore=*-*-*,*sha*,stable,latest,testing&n=3)](https://ghcr.io/yavasdev/bazzite-dx-tuxedo) | [![Latest version](https://ublue-badge-server.yavas.dev/yavasdev/bazzite-dx-tuxedo/size?color=%2326a269&tag=stable&label=latest+image+size)](https://ghcr.io/yavasdev/bazzite-dx-tuxedo) |
| [`bazzite-gdx-tuxedo`](https://ghcr.io/yavasdev/bazzite-gdx-tuxedo) | [![En son sürüm](https://ublue-badge-server.yavas.dev/yavasdev/bazzite-gdx-tuxedo/tags?label=release&ignore=*-*-*,*sha*,stable,latest,testing&n=3)](https://ghcr.io/yavasdev/bazzite-gdx-tuxedo) | [![Latest version](https://ublue-badge-server.yavas.dev/yavasdev/bazzite-gdx-tuxedo/size?color=%2326a269&tag=stable&label=latest+image+size&tag=latest)](https://ghcr.io/yavasdev/bazzite-gdx-tuxedo) |
| [`bazzite-gnome-nvidia-tuxedo`](https://ghcr.io/yavasdev/bazzite-gnome-nvidia-tuxedo) | [![En son sürüm](https://ublue-badge-server.yavas.dev/yavasdev/bazzite-gnome-nvidia-tuxedo/tags?label=release&ignore=*-*-*,*sha*,stable,latest,testing&n=3)](https://ghcr.io/yavasdev/bazzite-gnome-nvidia-tuxedo) | [![Latest version](https://ublue-badge-server.yavas.dev/yavasdev/bazzite-gnome-nvidia-tuxedo/size?color=%2326a269&tag=stable&label=latest+image+size)](https://ghcr.io/yavasdev/bazzite-gnome-nvidia-tuxedo) |
| [`bazzite-gnome-tuxedo`](https://ghcr.io/yavasdev/bazzite-gnome-tuxedo) | [![En son sürüm](https://ublue-badge-server.yavas.dev/yavasdev/bazzite-gnome-tuxedo/tags?label=release&ignore=*-*-*,*sha*,stable,latest,testing&n=3)](https://ghcr.io/yavasdev/bazzite-gnome-tuxedo) | [![Latest version](https://ublue-badge-server.yavas.dev/yavasdev/bazzite-gnome-tuxedo/size?color=%2326a269&tag=stable&label=latest+image+size)](https://ghcr.io/yavasdev/bazzite-gnome-tuxedo) |
| [`bazzite-nvidia-tuxedo`](https://ghcr.io/yavasdev/bazzite-nvidia-tuxedo) | [![En son sürüm](https://ublue-badge-server.yavas.dev/yavasdev/bazzite-nvidia-tuxedo/tags?label=release&ignore=*-*-*,*sha*,stable,latest,testing&n=3)](https://ghcr.io/yavasdev/bazzite-nvidia-tuxedo) | [![Latest version](https://ublue-badge-server.yavas.dev/yavasdev/bazzite-nvidia-tuxedo/size?color=%2326a269&tag=stable&label=latest+image+size)](https://ghcr.io/yavasdev/bazzite-nvidia-tuxedo) |
| [`bazzite-tuxedo`](https://ghcr.io/yavasdev/bazzite-tuxedo) | [![En son sürüm](https://ublue-badge-server.yavas.dev/yavasdev/bazzite-tuxedo/tags?label=release&ignore=*-*-*,*sha*,stable,latest,testing&n=3)](https://ghcr.io/yavasdev/bazzite-tuxedo) | [![Latest version](https://ublue-badge-server.yavas.dev/yavasdev/bazzite-tuxedo/size?color=%2326a269&tag=stable&label=latest+image+size)](https://ghcr.io/yavasdev/bazzite-tuxedo) |

##### Bluefin İmajları
| İmaj | En son sürüm | Boyut |
| --- | --- | --- |
| [`bluefin-dx-nvidia-tuxedo`](https://ghcr.io/yavasdev/bluefin-dx-nvidia-tuxedo) | [![En son sürüm](https://ublue-badge-server.yavas.dev/yavasdev/bluefin-dx-nvidia-tuxedo/tags?label=release&ignore=*-*-*,*sha*,stable,latest,testing&n=3)](https://ghcr.io/yavasdev/bluefin-dx-nvidia-tuxedo) | [![Latest version](https://ublue-badge-server.yavas.dev/yavasdev/bluefin-dx-nvidia-tuxedo/size?color=%2326a269&tag=stable&label=latest+image+size)](https://ghcr.io/yavasdev/bluefin-dx-nvidia-tuxedo) |
| [`bluefin-dx-tuxedo`](https://ghcr.io/yavasdev/bluefin-dx-tuxedo) | [![En son sürüm](https://ublue-badge-server.yavas.dev/yavasdev/bluefin-dx-tuxedo/tags?label=release&ignore=*-*-*,*sha*,stable,latest,testing&n=3)](https://ghcr.io/yavasdev/bluefin-dx-tuxedo) | [![Latest version](https://ublue-badge-server.yavas.dev/yavasdev/bluefin-dx-tuxedo/size?color=%2326a269&tag=stable&label=latest+image+size)](https://ghcr.io/yavasdev/bluefin-dx-tuxedo) |
| [`bluefin-nvidia-tuxedo`](https://ghcr.io/yavasdev/bluefin-nvidia-tuxedo) | [![En son sürüm](https://ublue-badge-server.yavas.dev/yavasdev/bluefin-nvidia-tuxedo/tags?label=release&ignore=*-*-*,*sha*,stable,latest,testing&n=3)](https://ghcr.io/yavasdev/bluefin-nvidia-tuxedo) | [![Latest version](https://ublue-badge-server.yavas.dev/yavasdev/bluefin-nvidia-tuxedo/size?color=%2326a269&tag=stable&label=latest+image+size)](https://ghcr.io/yavasdev/bluefin-nvidia-tuxedo) |
| [`bluefin-tuxedo`](https://ghcr.io/yavasdev/bluefin-tuxedo) | [![En son sürüm](https://ublue-badge-server.yavas.dev/yavasdev/bluefin-tuxedo/tags?label=release&ignore=*-*-*,*sha*,stable,latest,testing&n=3)](https://ghcr.io/yavasdev/bluefin-tuxedo) | [![Latest version](https://ublue-badge-server.yavas.dev/yavasdev/bluefin-tuxedo/size?color=%2326a269&tag=stable&label=latest+image+size)](https://ghcr.io/yavasdev/bluefin-tuxedo) |
| [`utah-nvidia-tuxedo`](https://ghcr.io/yavasdev/utah-nvidia-tuxedo) | [![En son sürüm](https://ublue-badge-server.yavas.dev/yavasdev/utah-nvidia-tuxedo/tags?label=release&ignore=*-*-*,*sha*,stable,latest,testing&n=3)](https://ghcr.io/yavasdev/utah-nvidia-tuxedo) | [![Latest version](https://ublue-badge-server.yavas.dev/yavasdev/utah-nvidia-tuxedo/size?color=%2326a269&tag=stable&label=latest+image+size)](https://ghcr.io/yavasdev/utah-nvidia-tuxedo) |
| [`utah-tuxedo`](https://ghcr.io/yavasdev/utah-tuxedo) | [![En son sürüm](https://ublue-badge-server.yavas.dev/yavasdev/utah-tuxedo/tags?label=release&ignore=*-*-*,*sha*,stable,latest,testing&n=3)](https://ghcr.io/yavasdev/utah-tuxedo) | [![Latest version](https://ublue-badge-server.yavas.dev/yavasdev/utah-tuxedo/size?color=%2326a269&tag=stable&label=latest+image+size)](https://ghcr.io/yavasdev/utah-tuxedo) |

##### Aurora İmajları
| İmaj | En son sürüm | Boyut |
| --- | --- | --- |
| [`aurora-tuxedo`](https://ghcr.io/yavasdev/aurora-tuxedo) | [![En son sürüm](https://ublue-badge-server.yavas.dev/yavasdev/aurora-tuxedo/tags?label=release&ignore=*-*-*,*sha*,stable,latest,testing&n=3)](https://ghcr.io/yavasdev/aurora-tuxedo) | [![Latest version](https://ublue-badge-server.yavas.dev/yavasdev/aurora-tuxedo/size?color=%2326a269&tag=stable&label=latest+image+size)](https://ghcr.io/yavasdev/aurora-tuxedo) |
| [`aurora-nvidia-open-tuxedo`](https://ghcr.io/yavasdev/aurora-nvidia-open-tuxedo) | [![En son sürüm](https://ublue-badge-server.yavas.dev/yavasdev/aurora-nvidia-open-tuxedo/tags?label=release&ignore=*-*-*,*sha*,stable,latest,testing&n=3)](https://ghcr.io/yavasdev/aurora-nvidia-open-tuxedo) | [![Latest version](https://ublue-badge-server.yavas.dev/yavasdev/aurora-nvidia-open-tuxedo/size?color=%2326a269&tag=stable&label=latest+image+size)](https://ghcr.io/yavasdev/aurora-nvidia-open-tuxedo) |

Bu depo, uyumlu [Universal Blue](https://universal-blue.org/) tabanları üzerinde
TUXEDO sürücüleri ve uygulamaları bulunan özel **Atomik (değişmez) Linux**
imajları oluşturur. Farklı Universal Blue aileleri ayrı tariflerle desteklenir.

Aşağıdaki özellikler, seçilen taban imajının üzerine entegre edilir:
- **Tuxedo Sürücüleri:** Kaynaktan derlenmiş ve doğrudan sisteme dahil edilmiş güncel çekirdek (kernel) modülleri.
- **Tuxedo Control Center (TCC):** Donanım, fan ve güç yönetimi aracı.

Tarifler, paket kurulumu için BlueBuild'in `dnf` modülünü kullanır. TCC,
imaj oluşturulurken indirilir; servis yönetimi yapan RPM kurulum script'leri
çalıştırılmadan açılır ve systemd unit dosyaları standart systemd dizinine
symlink olarak eklenir. Çekirdek modülleri eşleşen çekirdek geliştirme
dosyalarına karşı derlenir; base image depolarında uygun paket yoksa build
script'i çekirdeğin Fedora sürümünü dinamik olarak bulur ve tam eşleşen
`kernel-devel` paketini Fedora Koji'den indirir.

## Bu depo hakkında

Bu depo, popüler Universal Blue imajlarını TUXEDO/Clevo dizüstü
bilgisayarları için Tuxedo sürücüleri ve Tuxedo Control Center ile hazırlar.
[BlueBuild](https://blue-build.org/) tarifleri kullanılır ve imajlar bu deponun
kendi GitHub Container Registry alanına imzalı olarak yayımlanır.

İş akışı her gün **06:00 UTC (09:00 UTC+3)** saatinde, upstream imajların genellikle 
derlenmeye başlamasından kısa süre sonra çalışır. Böylece kullanıcıların yerel derleme
yapmasına gerek kalmadan imajlar güncel tutulur.

Tarifler BlueBuild'in `dnf` modülünü kullandığı için bu yaklaşım, sisteminde
DNF desteği bulunan popüler Universal Blue imajlarının çoğuna genişletilebilir.
Elbette paketlerin ve çekirdek kaynaklarının uyumlu olması gerekir.

### Neden uBlue Tuxedo?

- Günlük zamanlanmış derleme yapar.
- Bazzite, Bluefin, Aurora ve seçili Utah varyantlarını ve potansiyel diğer ublue imajlarını destekler.
- Cosign ile imzalanan ve bu depodaki açık anahtarla doğrulanabilen imajlar sağlar.
- Eşleşen çekirdek için derlenen sürücüleri ve kurulum script'lerine bağlı olmayan Tuxedo Control Center kurulumuna izin verir.

### Diğer TCC github repo'ları yerine neden bunu seçmeli?

Bu depo, bakımı yapılan tarif tabanlı bir imaj seti isteyenler için daha uygundur: 
daha fazla Universal Blue varyantı kapsar, güncel BlueBuild iş akışını kullanır, 
günlük derlenir ve kendi imzalı imajlarını yayımlar. 

Eski [ublue-tuxedo-tcc projesi](https://github.com/BrickMan240/ublue-tuxedo-tcc) gibi projeler hâlâ yararlı bir referans sağlamaktadır; ancak amaçları upstream desteği gelişene kadar geçici bir çözüm sunmaktı. Bu sorun günümüzde çözülmediği için bu hergün imaj oluşturan repo'yu kurdum.

| Depo | GitHub yıldızları | Son etkinlik | Derleme tetikleyicisi | Registry | İmzalama | Kapsam |
| --- | ---: | --- | --- | --- | --- | --- |
| [yavasdev/ublue-tuxedo](https://github.com/yavasdev/ublue-tuxedo) | [![GitHub stars](https://img.shields.io/github/stars/yavasdev/ublue-tuxedo?style=flat)](https://github.com/yavasdev/ublue-tuxedo/stargazers) | [Depo etkinliği](https://github.com/yavasdev/ublue-tuxedo/commits/main) | Her gün 06:00 UTC ve recipe değişiklikleri | Kendi [GHCR paketleri](https://ghcr.io/yavasdev/bazzite-dx-nvidia-tuxedo) | [`cosign.pub`](cosign.pub) ile Cosign | Birden fazla popüler Universal Blue ailesi için BlueBuild tarifleri |
| [BrickMan240/ublue-tuxedo-tcc](https://github.com/BrickMan240/ublue-tuxedo-tcc) | [![GitHub stars](https://img.shields.io/github/stars/BrickMan240/ublue-tuxedo-tcc?style=flat)](https://github.com/BrickMan240/ublue-tuxedo-tcc/stargazers) | [Son depo güncellemesi](https://github.com/BrickMan240/ublue-tuxedo-tcc/commits/main) | Shell/build script tabanlı | Kendi GHCR imajları | Depodaki Cosign anahtarı | Eski TCC ve sürücü entegrasyonu |

Tablodaki yıldız sayıları GitHub'dan canlı olarak yüklenir.

> [!WARNING]
> Özel imajlar [Fedora'da deneysel bir özelliktir](https://www.fedoraproject.org/wiki/Changes/OstreeNativeContainerStable). Rebase işlemi işletim sistemi deployment'ınızı değiştirir. Taban imajınızın upstream belgelerini okuyun ve geri alma yöntemini anladığınızdan emin olun.

## Kurulum

> [!WARNING]
> Bu işlem, mevcut Atomik Fedora veya Universal Blue işletim sistemi imajınızı değiştirecektir. Seçtiğiniz imaj varyantının donanımınız, taban imajınız ve mevcut kurulumunuzla uyumlu olduğundan emin olun.
> Yanlış imaj seçiminden yaşanacak sistem bozulmalarından siz sorumlusunuzdur.

> [!TIP]
> Rebase işleminden önce `rpm-ostree status` ile mevcut deployment'ınızı kaydedin ve önyüklenebilir bir geri dönüş seçeneğiniz olduğunu doğrulayın.

### Mevcut Atomik kuruluma rebase etme

Rebase işleminden önce katmanlı paketleri kaldırmanızı önerir:

```bash
rpm-ostree reset
```

Donanımınızla uyumlu bir imaj seçin ve mevcut kurulumunuzla aynı masaüstü ortamını koruyun. Aşağıdaki `<image>` ve `<tag>` yerine [Kullanılabilir imajlar](#kullanılabilir-imajlar) ya da [Son etiketlenmiş imaj sürümleri](#son-etiketlenmiş-imaj-sürümleri) bölümündeki adlardan birini yazın.

Yayımlanmış bir imaja geçmek için aşağıdaki komutlarda `<image>` ve `<tag>` yerine
kullanmak istediğiniz recipe tarafından oluşturulan imaj ve tag'larını yazın:

- İmzalama anahtarlarını ve ilkelerini yüklemek için önce varsayılan imzasız imaja rebase edin:
  ```bash
  rpm-ostree rebase ostree-unverified-registry:ghcr.io/yavasdev/<image>:<tag>
  ```
- Rebase işlemini tamamlamak için yeniden başlatın:
  ```bash
  systemctl reboot
  ```
- Ardından imzalı imaja geçiş yapın:
  ```bash
  rpm-ostree rebase ostree-image-signed:docker://ghcr.io/yavasdev/<image>:<tag>
  ```
- Kurulumu tamamlamak için tekrar yeniden başlatın:
  ```bash
  systemctl reboot
  ```

İmaj adları ve desteklenen varyantlar [`recipes/`](recipes/) klasöründeki
dosyalarla belirlenir; `latest` etiketi, yapılandırılan Fedora sürümü için en yeni imajı
gösterirken, `stable` etiketi en son çıkmış olan sağlam sürümü ve `testing` etiketi en son çıkmış olan test sürümünü gösterir. Bu tanımlar Recipes klasörü içindeki tariflerde yayımlanır.

### Geri alma

Önceki deployment'a dönmeniz gerekirse önyükleme menüsünden seçin veya:

```bash
rpm-ostree rollback
systemctl reboot
```

## Recipe ve taban imaj notları

Tarifler Bazzite, Bluefin, Aurora ve seçili Project Bluefin imajları dahil olmak 
üzere birden fazla Universal Blue ailesini kapsar. Her recipe taban imajını, 
paketleri, imaj adını ve desteklenen varyantı belirler. Güncel ve yetkili liste 
[`recipes/`](recipes/) klasöründedir.

Utah tarifleri, Utah'ın Hummingbird tabanlı çekirdeğini kullanır. Bu tarz imajlar script'de 
sabit bir Fedora sürümüne veya genel bir `kernel-devel` paketine bağlı kalmak yerine,
build sırasında eşleşen çekirdek geliştirme dosyalarını dinamik olarak bulup yamalanır.

Project Bluefin Dakota şu anda bu BlueBuild tarifleriyle uyumlu değildir.
Dakota, burada kullanılan DNF paket yönetimi yerine BuildStream ile oluşturulur.

## İnsan tarafından test edilen dağıtımlar

Aşağıdaki tablo, fiziksel donanım üzerinde kurulup kullanılmış varyantları
gösterir. CI üzerinde başarılı bir derleme, insan tarafından test edilmiş
sayılmaz.

| Dağıtım | Varyant | Test durumu |
| --- | --- | --- |
| [Bazzite](https://bazzite.gg/) | Bazzite KDE | Henüz test edilmedi |
| [Bazzite](https://bazzite.gg/) | Bazzite GNOME | Henüz test edilmedi |
| [Bazzite](https://bazzite.gg/) | Bazzite NVIDIA | Henüz test edilmedi |
| [Bazzite](https://bazzite.gg/) | Bazzite GNOME NVIDIA | Henüz test edilmedi |
| [Bazzite](https://bazzite.gg/) | Bazzite DX KDE | Henüz test edilmedi |
| [Bazzite](https://bazzite.gg/) | Bazzite DX GNOME | Henüz test edilmedi |
| [Bazzite](https://bazzite.gg/) | **Bazzite DX NVIDIA** | [**İnsan tarafından test edildi**](docs/tests/bazzite-dx-nvidia-tuxedo/) |
| [Bazzite](https://bazzite.gg/) | **Bazzite DX GNOME NVIDIA** | [**İnsan tarafından test edildi**](docs/tests/bazzite-dx-nvidia-gnome-tuxedo/) |
| [Bazzite](https://bazzite.gg/) | Bazzite GDX KDE | Henüz test edilmedi |
| [Bazzite](https://bazzite.gg/) | Bazzite Deck KDE | Henüz test edilmedi |
| [Bazzite](https://bazzite.gg/) | Bazzite Deck GNOME | Henüz test edilmedi |
| [Bazzite](https://bazzite.gg/) | Bazzite Deck NVIDIA | Henüz test edilmedi |
| [Bazzite](https://bazzite.gg/) | Bazzite Deck GNOME NVIDIA | Henüz test edilmedi |
| [Bluefin](https://projectbluefin.io/) | Bluefin | Henüz test edilmedi |
| [Bluefin](https://projectbluefin.io/) | Bluefin NVIDIA | Henüz test edilmedi |
| [Bluefin](https://projectbluefin.io/) | Bluefin DX | Henüz test edilmedi |
| [Bluefin](https://projectbluefin.io/) | Bluefin DX NVIDIA | Henüz test edilmedi |
| [Bluefin](https://projectbluefin.io/) | Bluefin Utah | Henüz test edilmedi |
| [Bluefin](https://projectbluefin.io/) | Bluefin Utah NVIDIA | Henüz test edilmedi |
| [Aurora](https://getaurora.dev/) | Aurora | Henüz test edilmedi |
| [Aurora](https://getaurora.dev/) | Aurora NVIDIA | Henüz test edilmedi |

İnsan tarafından test edilmiş olma durumu; belirli dizüstü bilgisayara, GPU'ya,
çekirdeğe ve masaüstü varyantına bağlıdır. Project Bluefin Dakota, mevcut
BlueBuild tarifleriyle uyumlu olmadığı için listeye dahil edilmemiştir.

Donanım kapsamını genişletmeye yardımcı olmak ister misiniz? Henüz
doğrulanmamış varyantlardan birini kendi donanımınızda test edebiliyorsanız,
lütfen imaj varyantını, dizüstü bilgisayar modelini, GPU'yu ve test sonuçlarınızı
belirterek [bir issue açın](https://github.com/yavasdev/ublue-tuxedo/issues).

## Doğrulama

Bu imajlar, [Sigstore](https://www.sigstore.dev/)'un [cosign](https://github.com/sigstore/cosign) aracı kullanılarak dijital olarak imzalanmıştır. İmajın orijinalliğini doğrulamak için bu depodan `cosign.pub` dosyasını indirebilir ve aşağıdaki komutu çalıştırabilirsiniz:

```bash
cosign verify --key cosign.pub ghcr.io/yavasdev/<image>:<tag>
```

## Forkladığınızda kendi cosign.pub dosyanızı oluşturma

Kendi `cosign.key` ve `cosign.pub` dosyalarınızı oluşturup kullanmak oldukça kolaydır. Aşağıdaki rehber size yardımcı olacaktır:

### cosign aracını yükleme

Aracı, dağıtımınızın varsayılan paket depolarından veya cosign'in GitHub sürümlerinden yükleyebilirsiniz.

#### Doğrudan sürüm dosyasını indirme:

```sh
curl -O -L "https://github.com/sigstore/cosign/releases/latest/download/cosign-linux-amd64"
# veya arm64 kullanıyorsanız:
# curl -O -L "https://github.com/sigstore/cosign/releases/latest/download/cosign-linux-arm64"
```

#### Çalıştırılabilir hâle getirme:

İndirdikten sonra binary dosyasını yeniden adlandırmanız ve sisteminizin çalıştırabilmesi için yürütme izni vermeniz gerekir:

```sh
mv cosign-linux-* cosign
chmod +x cosign
```

### Anahtarları oluşturma

Şimdi, az önce indirdiğiniz binary dosyasını kullanarak anahtar çiftinizi oluşturabilirsiniz.

**Önemli adım:** Araç sizden parola istediğinde parolayı **tamamen boş bırakın ve `Enter` tuşuna basın!** Parola belirlerseniz otomatik GitHub Actions iş akışı imajınızı imzalamak için anahtarı çözüp kullanamaz.

```sh
./cosign generate-key-pair
```

Bu komut depo kökünüzde iki yeni dosya oluşturur: `cosign.pub` (genel anahtar) ve `cosign.key` (özel anahtar).

### Deponuzu yapılandırma

Anahtarlarınızı artık ilgili yerlere koymanız gerekir.

**1. Genel anahtar (`cosign.pub`)**

Bu dosya imajınızın bütünlüğünü doğrulamak için kullanılır. Doğrudan deponuzun kök dizinine commit edilmelidir.

```sh
git add cosign.pub
git commit -m "add: cosign public key"
git push
```

**2. Özel anahtar (`cosign.key`)**

Bu anahtar, iş akışı tarafından imajı imzalamak için kullanılır. Gizli tutulmalıdır.

- GitHub'da deponuza gidin.
- **Settings** -> **Secrets and variables** -> **Actions** yolunu izleyin.
- **New repository secret** düğmesine tıklayın.
- Secret adını **`SIGNING_SECRET`** olarak belirleyin.
- Yerel `cosign.key` dosyanızı bir metin düzenleyiciyle açın, **tüm içeriğini** kopyalayın ve Secret value alanına yapıştırın.
- **Add secret** düğmesine tıklayın.

### Temizleme

Genel anahtarınızı push edip özel anahtarınızı GitHub Secrets içinde güvenle sakladıktan sonra, özel anahtarı ve binary dosyasını gelecekte yanlışlıkla commit etmemeniz için yerel sisteminizden silebilirsiniz:

```sh
rm cosign.key cosign
```

Artık hazırsınız! Derlemeleriniz imajlarınızı başarıyla imzalamalıdır.

## Kurulum ISO'su oluşturma

Bir imajı USB sürücüsüyle sıfırdan kurmak için Fedora Atomik tabanlı bir
sistemde [BlueBuild ISO Rehberi](https://blue-build.org/how-to/generate-iso/#_top)
ile ISO oluşturun. ISO dosyaları bu depo tarafından sağlanmaz.

## Potansiyel olarak desteklenebilecek cihazlar

Bu cihaz aileleri TUXEDO dizüstü bilgisayarları olduğu veya Clevo kasalarını
kullandığı için potansiyel adaylardır. Bu bir uyumluluk garantisi değildir;
kesin model, CPU/GPU yapılandırması, firmware ve çekirdek sürümü önemlidir.

### TUXEDO dizüstü bilgisayarları

- **InfinityBook:** InfinityBook Pro ve InfinityBook Max aileleri
- **Stellaris:** Stellaris 16 ve diğer Stellaris yapılandırmaları
- **Polaris:** Polaris 15/16 ve diğer Polaris yapılandırmaları
- **Sirius:** Sirius 16 ve diğer Sirius yapılandırmaları
- **Pulse:** Pulse 14/16 ve diğer Pulse yapılandırmaları
- **Aura:** Aura 14/15 ve diğer Aura yapılandırmaları

Kesin model ve yapılandırmalar için güncel
[TUXEDO dizüstü bilgisayar](https://www.tuxedocomputers.com/index.php)
bakabilirsiniz.

### Clevo tabanlı dizüstü bilgisayarlar

Clevo dizüstü bilgisayarları farklı markalar altında satıldığından, satıcı
model adından ziyade Clevo kasa tanımlayıcısı daha kullanışlı olabilir.
Potansiyel aileler şunlardır:

- **NH serisi:** NH50, NH55, NH57, NH58, NH70, NH77 ve NH79
- **NS serisi:** NS50, NS51, NS70 ve NS7x
- **P serisi:** P150, P151, P157, P170 ve P7xx
- **V serisi:** V140, V150, V15x ve V17x

Clevo tabanlı dizüstü bilgisayarlar satan, geçmişte satmış olan veya belirli
modellerinde Clevo kullanan bilinen şirketler şunlardır:

- **Türkiye:** Monster Notebook
- **Kuzey Amerika:** Sager, Eurocom, HIDevolution, Eluktronics, Origin PC,
  Xotic PC, Prostar, LPC Digital, Maingear, Digital Storm ve System76
- **Birleşik Krallık ve İrlanda:** PCSpecialist ve Scan
- **Almanya ve Orta Avrupa:** Schenker/XMG, Medion ve PCW Polska
- **Benelüks:** BTO, NovaCustom, Laptop With Linux ve Clevocenter
- **Portekiz ve İspanya:** Obsidian-PC ve Slimbook
- **Polonya ve Doğu Avrupa:** Dream Machines
- **Avustralya ve Yeni Zelanda:** Metabox ve Leader Computers
- **Singapur ve Güneydoğu Asya:** Aftershock ve Illegear
- **Asya:** Thunderobot ve diğer bölgesel Clevo entegratörleri ve
  distribütörleri

Bu liste geniş ancak kapsamlı değildir. Bazı şirketler Clevo kasalarının yanı
sıra Tongfang, Quanta veya kendi tasarımları olan kasaları da kullanabilir;
kasa tedariki ürün nesilleri arasında değişebilir. Bu nedenle kesin model ve
kasa tanımlayıcısı yine de kontrol edilmelidir.

Clevo cihazlarda rapor açmadan önce firmware veya `dmidecode` ile kasa
tanımlayıcısını kontrol edin. Lütfen kesin model, Clevo kasa tanımlayıcısı,
CPU, GPU ve test sonuçlarıyla [bir issue açın](https://github.com/yavasdev/ublue-tuxedo/issues).

## Tüm etiketlenmiş imaj sürümleri

Badge bağlantıları statiktir, gösterdikleri sürüm ve yayımlanma tarihi ise her başarılı derlemeden sonra GitHub Actions tarafından güncellenen küçük JSON dosyalarından gelir. Bir badge'e tıklamak, ilgili canlı GitHub Packages sayfasını açar. GitHub'ın README işleyicisi yan yana Markdown tablolarını güvenilir bir şekilde desteklemediğinden listeler okunabilir iki tabloya bölünmüştür.

### Bazzite İmajları

| İmaj | Kararlı (stable) sürüm | Test (testing) sürümü | En son (latest) sürüm | Boyut |
| --- | --- | --- | --- | --- |
| `bazzite-deck-gnome-nvidia-tuxedo` | [![stable version](https://ublue-badge-server.yavas.dev/yavasdev/bazzite-deck-gnome-nvidia-tuxedo/latest_tag?label=stable&ignore=*-*-*,sha*,latest*,testing*,stable)](https://ghcr.io/yavasdev/bazzite-deck-gnome-nvidia-tuxedo) | [![testing version](https://img.shields.io/badge/testing-none-lightgrey)](https://ghcr.io/yavasdev/bazzite-deck-gnome-nvidia-tuxedo) | [![latest version](https://img.shields.io/badge/latest-none-lightgrey)](https://ghcr.io/yavasdev/bazzite-deck-gnome-nvidia-tuxedo) | [![latest image size](https://ublue-badge-server.yavas.dev/yavasdev/bazzite-deck-gnome-nvidia-tuxedo/size?color=%2326a269&tag=stable&label=latest+image+size)](https://ghcr.io/yavasdev/bazzite-deck-gnome-nvidia-tuxedo) |
| `bazzite-deck-gnome-tuxedo` | [![stable version](https://ublue-badge-server.yavas.dev/yavasdev/bazzite-deck-gnome-tuxedo/latest_tag?label=stable&ignore=*-*-*,sha*,latest*,testing*,stable)](https://ghcr.io/yavasdev/bazzite-deck-gnome-tuxedo) | [![testing version](https://img.shields.io/badge/testing-none-lightgrey)](https://ghcr.io/yavasdev/bazzite-deck-gnome-tuxedo) | [![latest version](https://img.shields.io/badge/latest-none-lightgrey)](https://ghcr.io/yavasdev/bazzite-deck-gnome-tuxedo) | [![latest image size](https://ublue-badge-server.yavas.dev/yavasdev/bazzite-deck-gnome-tuxedo/size?color=%2326a269&tag=stable&label=latest+image+size)](https://ghcr.io/yavasdev/bazzite-deck-gnome-tuxedo) |
| `bazzite-deck-nvidia-tuxedo` | [![stable version](https://ublue-badge-server.yavas.dev/yavasdev/bazzite-deck-nvidia-tuxedo/latest_tag?label=stable&ignore=*-*-*,sha*,latest*,testing*,stable)](https://ghcr.io/yavasdev/bazzite-deck-nvidia-tuxedo) | [![testing version](https://img.shields.io/badge/testing-none-lightgrey)](https://ghcr.io/yavasdev/bazzite-deck-nvidia-tuxedo) | [![latest version](https://img.shields.io/badge/latest-none-lightgrey)](https://ghcr.io/yavasdev/bazzite-deck-nvidia-tuxedo) | [![latest image size](https://ublue-badge-server.yavas.dev/yavasdev/bazzite-deck-nvidia-tuxedo/size?color=%2326a269&tag=stable&label=latest+image+size)](https://ghcr.io/yavasdev/bazzite-deck-nvidia-tuxedo) |
| `bazzite-deck-tuxedo` | [![stable version](https://ublue-badge-server.yavas.dev/yavasdev/bazzite-deck-tuxedo/latest_tag?label=stable&ignore=*-*-*,sha*,latest*,testing*,stable)](https://ghcr.io/yavasdev/bazzite-deck-tuxedo) | [![testing version](https://img.shields.io/badge/testing-none-lightgrey)](https://ghcr.io/yavasdev/bazzite-deck-tuxedo) | [![latest version](https://img.shields.io/badge/latest-none-lightgrey)](https://ghcr.io/yavasdev/bazzite-deck-tuxedo) | [![latest image size](https://ublue-badge-server.yavas.dev/yavasdev/bazzite-deck-tuxedo/size?color=%2326a269&tag=stable&label=latest+image+size)](https://ghcr.io/yavasdev/bazzite-deck-tuxedo) |
| `bazzite-dx-gnome-tuxedo` | [![stable version](https://ublue-badge-server.yavas.dev/yavasdev/bazzite-dx-gnome-tuxedo/latest_tag?label=stable&ignore=*-*-*,sha*,latest*,testing*,stable)](https://ghcr.io/yavasdev/bazzite-dx-gnome-tuxedo) | [![testing version](https://img.shields.io/badge/testing-none-lightgrey)](https://ghcr.io/yavasdev/bazzite-dx-gnome-tuxedo) | [![latest version](https://img.shields.io/badge/latest-none-lightgrey)](https://ghcr.io/yavasdev/bazzite-dx-gnome-tuxedo) | [![latest image size](https://ublue-badge-server.yavas.dev/yavasdev/bazzite-dx-gnome-tuxedo/size?color=%2326a269&tag=stable&label=latest+image+size)](https://ghcr.io/yavasdev/bazzite-dx-gnome-tuxedo) |
| `bazzite-dx-nvidia-gnome-tuxedo` | [![stable version](https://ublue-badge-server.yavas.dev/yavasdev/bazzite-dx-nvidia-gnome-tuxedo/latest_tag?label=stable&ignore=*-*-*,sha*,latest*,testing*,stable)](https://ghcr.io/yavasdev/bazzite-dx-nvidia-gnome-tuxedo) | [![testing version](https://img.shields.io/badge/testing-none-lightgrey)](https://ghcr.io/yavasdev/bazzite-dx-nvidia-gnome-tuxedo) | [![latest version](https://img.shields.io/badge/latest-none-lightgrey)](https://ghcr.io/yavasdev/bazzite-dx-nvidia-gnome-tuxedo) | [![latest image size](https://ublue-badge-server.yavas.dev/yavasdev/bazzite-dx-nvidia-gnome-tuxedo/size?color=%2326a269&tag=stable&label=latest+image+size)](https://ghcr.io/yavasdev/bazzite-dx-nvidia-gnome-tuxedo) |
| `bazzite-dx-nvidia-tuxedo` | [![stable version](https://ublue-badge-server.yavas.dev/yavasdev/bazzite-dx-nvidia-tuxedo/latest_tag?label=stable&ignore=*-*-*,sha*,latest*,testing*,stable)](https://ghcr.io/yavasdev/bazzite-dx-nvidia-tuxedo) | [![testing version](https://img.shields.io/badge/testing-none-lightgrey)](https://ghcr.io/yavasdev/bazzite-dx-nvidia-tuxedo) | [![latest version](https://img.shields.io/badge/latest-none-lightgrey)](https://ghcr.io/yavasdev/bazzite-dx-nvidia-tuxedo) | [![latest image size](https://ublue-badge-server.yavas.dev/yavasdev/bazzite-dx-nvidia-tuxedo/size?color=%2326a269&tag=stable&label=latest+image+size)](https://ghcr.io/yavasdev/bazzite-dx-nvidia-tuxedo) |
| `bazzite-dx-tuxedo` | [![stable version](https://ublue-badge-server.yavas.dev/yavasdev/bazzite-dx-tuxedo/latest_tag?label=stable&ignore=*-*-*,sha*,latest*,testing*,stable)](https://ghcr.io/yavasdev/bazzite-dx-tuxedo) | [![testing version](https://img.shields.io/badge/testing-none-lightgrey)](https://ghcr.io/yavasdev/bazzite-dx-tuxedo) | [![latest version](https://img.shields.io/badge/latest-none-lightgrey)](https://ghcr.io/yavasdev/bazzite-dx-tuxedo) | [![latest image size](https://ublue-badge-server.yavas.dev/yavasdev/bazzite-dx-tuxedo/size?color=%2326a269&tag=stable&label=latest+image+size)](https://ghcr.io/yavasdev/bazzite-dx-tuxedo) |
| `bazzite-gdx-tuxedo` | [![stable version](https://img.shields.io/badge/stable-none-lightgrey)](https://ghcr.io/yavasdev/bazzite-gdx-tuxedo) | [![testing version](https://img.shields.io/badge/testing-none-lightgrey)](https://ghcr.io/yavasdev/bazzite-gdx-tuxedo) | [![latest version](https://ublue-badge-server.yavas.dev/yavasdev/bazzite-gdx-tuxedo/latest_tag?label=latest&ignore=*-*-*,sha*,stable*,testing*,latest)](https://ghcr.io/yavasdev/bazzite-gdx-tuxedo) | [![latest image size](https://ublue-badge-server.yavas.dev/yavasdev/bazzite-gdx-tuxedo/size?color=%2326a269&tag=stable&label=latest+image+size&tag=latest)](https://ghcr.io/yavasdev/bazzite-gdx-tuxedo) |
| `bazzite-gnome-nvidia-tuxedo` | [![stable version](https://ublue-badge-server.yavas.dev/yavasdev/bazzite-gnome-nvidia-tuxedo/latest_tag?label=stable&ignore=*-*-*,sha*,latest*,testing*,stable)](https://ghcr.io/yavasdev/bazzite-gnome-nvidia-tuxedo) | [![testing version](https://img.shields.io/badge/testing-none-lightgrey)](https://ghcr.io/yavasdev/bazzite-gnome-nvidia-tuxedo) | [![latest version](https://img.shields.io/badge/latest-none-lightgrey)](https://ghcr.io/yavasdev/bazzite-gnome-nvidia-tuxedo) | [![latest image size](https://ublue-badge-server.yavas.dev/yavasdev/bazzite-gnome-nvidia-tuxedo/size?color=%2326a269&tag=stable&label=latest+image+size)](https://ghcr.io/yavasdev/bazzite-gnome-nvidia-tuxedo) |
| `bazzite-gnome-tuxedo` | [![stable version](https://ublue-badge-server.yavas.dev/yavasdev/bazzite-gnome-tuxedo/latest_tag?label=stable&ignore=*-*-*,sha*,latest*,testing*,stable)](https://ghcr.io/yavasdev/bazzite-gnome-tuxedo) | [![testing version](https://img.shields.io/badge/testing-none-lightgrey)](https://ghcr.io/yavasdev/bazzite-gnome-tuxedo) | [![latest version](https://img.shields.io/badge/latest-none-lightgrey)](https://ghcr.io/yavasdev/bazzite-gnome-tuxedo) | [![latest image size](https://ublue-badge-server.yavas.dev/yavasdev/bazzite-gnome-tuxedo/size?color=%2326a269&tag=stable&label=latest+image+size)](https://ghcr.io/yavasdev/bazzite-gnome-tuxedo) |
| `bazzite-nvidia-tuxedo` | [![stable version](https://ublue-badge-server.yavas.dev/yavasdev/bazzite-nvidia-tuxedo/latest_tag?label=stable&ignore=*-*-*,sha*,latest*,testing*,stable)](https://ghcr.io/yavasdev/bazzite-nvidia-tuxedo) | [![testing version](https://img.shields.io/badge/testing-none-lightgrey)](https://ghcr.io/yavasdev/bazzite-nvidia-tuxedo) | [![latest version](https://img.shields.io/badge/latest-none-lightgrey)](https://ghcr.io/yavasdev/bazzite-nvidia-tuxedo) | [![latest image size](https://ublue-badge-server.yavas.dev/yavasdev/bazzite-nvidia-tuxedo/size?color=%2326a269&tag=stable&label=latest+image+size)](https://ghcr.io/yavasdev/bazzite-nvidia-tuxedo) |
| `bazzite-tuxedo` | [![stable version](https://ublue-badge-server.yavas.dev/yavasdev/bazzite-tuxedo/latest_tag?label=stable&ignore=*-*-*,sha*,latest*,testing*,stable)](https://ghcr.io/yavasdev/bazzite-tuxedo) | [![testing version](https://img.shields.io/badge/testing-none-lightgrey)](https://ghcr.io/yavasdev/bazzite-tuxedo) | [![latest version](https://img.shields.io/badge/latest-none-lightgrey)](https://ghcr.io/yavasdev/bazzite-tuxedo) | [![latest image size](https://ublue-badge-server.yavas.dev/yavasdev/bazzite-tuxedo/size?color=%2326a269&tag=stable&label=latest+image+size)](https://ghcr.io/yavasdev/bazzite-tuxedo) |

### Bluefin İmajları

| İmaj | Kararlı (stable) sürüm | Test (testing) sürümü | En son (latest) sürüm | Boyut |
| --- | --- | --- | --- | --- |
| `bluefin-dx-nvidia-tuxedo` | [![stable version](https://ublue-badge-server.yavas.dev/yavasdev/bluefin-dx-nvidia-tuxedo/latest_tag?label=stable&ignore=*-*-*,sha*,latest*,testing*,stable)](https://ghcr.io/yavasdev/bluefin-dx-nvidia-tuxedo) | [![testing version](https://img.shields.io/badge/testing-none-lightgrey)](https://ghcr.io/yavasdev/bluefin-dx-nvidia-tuxedo) | [![latest version](https://img.shields.io/badge/latest-none-lightgrey)](https://ghcr.io/yavasdev/bluefin-dx-nvidia-tuxedo) | [![latest image size](https://ublue-badge-server.yavas.dev/yavasdev/bluefin-dx-nvidia-tuxedo/size?color=%2326a269&tag=stable&label=latest+image+size)](https://ghcr.io/yavasdev/bluefin-dx-nvidia-tuxedo) |
| `bluefin-dx-tuxedo` | [![stable version](https://ublue-badge-server.yavas.dev/yavasdev/bluefin-dx-tuxedo/latest_tag?label=stable&ignore=*-*-*,sha*,latest*,testing*,stable)](https://ghcr.io/yavasdev/bluefin-dx-tuxedo) | [![testing version](https://img.shields.io/badge/testing-none-lightgrey)](https://ghcr.io/yavasdev/bluefin-dx-tuxedo) | [![latest version](https://img.shields.io/badge/latest-none-lightgrey)](https://ghcr.io/yavasdev/bluefin-dx-tuxedo) | [![latest image size](https://ublue-badge-server.yavas.dev/yavasdev/bluefin-dx-tuxedo/size?color=%2326a269&tag=stable&label=latest+image+size)](https://ghcr.io/yavasdev/bluefin-dx-tuxedo) |
| `bluefin-nvidia-tuxedo` | [![stable version](https://ublue-badge-server.yavas.dev/yavasdev/bluefin-nvidia-tuxedo/latest_tag?label=stable&ignore=*-*-*,sha*,latest*,testing*,stable)](https://ghcr.io/yavasdev/bluefin-nvidia-tuxedo) | [![testing version](https://img.shields.io/badge/testing-none-lightgrey)](https://ghcr.io/yavasdev/bluefin-nvidia-tuxedo) | [![latest version](https://img.shields.io/badge/latest-none-lightgrey)](https://ghcr.io/yavasdev/bluefin-nvidia-tuxedo) | [![latest image size](https://ublue-badge-server.yavas.dev/yavasdev/bluefin-nvidia-tuxedo/size?color=%2326a269&tag=stable&label=latest+image+size)](https://ghcr.io/yavasdev/bluefin-nvidia-tuxedo) |
| `bluefin-tuxedo` | [![stable version](https://ublue-badge-server.yavas.dev/yavasdev/bluefin-tuxedo/latest_tag?label=stable&ignore=*-*-*,sha*,latest*,testing*,stable)](https://ghcr.io/yavasdev/bluefin-tuxedo) | [![testing version](https://img.shields.io/badge/testing-none-lightgrey)](https://ghcr.io/yavasdev/bluefin-tuxedo) | [![latest version](https://img.shields.io/badge/latest-none-lightgrey)](https://ghcr.io/yavasdev/bluefin-tuxedo) | [![latest image size](https://ublue-badge-server.yavas.dev/yavasdev/bluefin-tuxedo/size?color=%2326a269&tag=stable&label=latest+image+size)](https://ghcr.io/yavasdev/bluefin-tuxedo) |
| `utah-nvidia-tuxedo` | [![stable version](https://ublue-badge-server.yavas.dev/yavasdev/utah-nvidia-tuxedo/latest_tag?label=stable&ignore=*-*-*,sha*,latest*,testing*,stable)](https://ghcr.io/yavasdev/utah-nvidia-tuxedo) | [![testing version](https://img.shields.io/badge/testing-none-lightgrey)](https://ghcr.io/yavasdev/utah-nvidia-tuxedo) | [![latest version](https://img.shields.io/badge/latest-none-lightgrey)](https://ghcr.io/yavasdev/utah-nvidia-tuxedo) | [![latest image size](https://ublue-badge-server.yavas.dev/yavasdev/utah-nvidia-tuxedo/size?color=%2326a269&tag=stable&label=latest+image+size)](https://ghcr.io/yavasdev/utah-nvidia-tuxedo) |
| `utah-tuxedo` | [![stable version](https://ublue-badge-server.yavas.dev/yavasdev/utah-tuxedo/latest_tag?label=stable&ignore=*-*-*,sha*,latest*,testing*,stable)](https://ghcr.io/yavasdev/utah-tuxedo) | [![testing version](https://img.shields.io/badge/testing-none-lightgrey)](https://ghcr.io/yavasdev/utah-tuxedo) | [![latest version](https://img.shields.io/badge/latest-none-lightgrey)](https://ghcr.io/yavasdev/utah-tuxedo) | [![latest image size](https://ublue-badge-server.yavas.dev/yavasdev/utah-tuxedo/size?color=%2326a269&tag=stable&label=latest+image+size)](https://ghcr.io/yavasdev/utah-tuxedo) |

### Aurora İmajları

| İmaj | Kararlı (stable) sürüm | Test (testing) sürümü | En son (latest) sürüm | Boyut |
| --- | --- | --- | --- | --- |
| `aurora-tuxedo` | [![stable version](https://ublue-badge-server.yavas.dev/yavasdev/aurora-tuxedo/latest_tag?label=stable&ignore=*-*-*,sha*,latest*,testing*,stable)](https://ghcr.io/yavasdev/aurora-tuxedo) | [![testing version](https://img.shields.io/badge/testing-none-lightgrey)](https://ghcr.io/yavasdev/aurora-tuxedo) | [![latest version](https://img.shields.io/badge/latest-none-lightgrey)](https://ghcr.io/yavasdev/aurora-tuxedo) | [![latest image size](https://ublue-badge-server.yavas.dev/yavasdev/aurora-tuxedo/size?color=%2326a269&tag=stable&label=latest+image+size)](https://ghcr.io/yavasdev/aurora-tuxedo) |
| `aurora-nvidia-open-tuxedo` | [![stable version](https://ublue-badge-server.yavas.dev/yavasdev/aurora-nvidia-open-tuxedo/latest_tag?label=stable&ignore=*-*-*,sha*,latest*,testing*,stable)](https://ghcr.io/yavasdev/aurora-nvidia-open-tuxedo) | [![testing version](https://img.shields.io/badge/testing-none-lightgrey)](https://ghcr.io/yavasdev/aurora-nvidia-open-tuxedo) | [![latest version](https://img.shields.io/badge/latest-none-lightgrey)](https://ghcr.io/yavasdev/aurora-nvidia-open-tuxedo) | [![latest image size](https://ublue-badge-server.yavas.dev/yavasdev/aurora-nvidia-open-tuxedo/size?color=%2326a269&tag=stable&label=latest+image+size)](https://ghcr.io/yavasdev/aurora-nvidia-open-tuxedo) |

## Sınırlamalar ve gelecekteki çalışmalar

- Mevcut iş akışı, upstream taban imaj değişmemiş olsa bile imajları yeniden derler. Gereksiz derlemeleri önlemek için bir upstream güncelleme denetleyicisine (update checker) ihtiyaç vardır.
- Yeni temel depoların otomatik keşfi; karmaşık ve mevcut kapsam için gereksiz olduğundan bu ikincisi kasıtlı olarak vaat edilmemiştir.
- `recipes/` klasörü dışındaki değişikliklerin otomatik keşfi uygulanmamıştır. Sağlam bir çözüm, temel depo etiket kontrolü gerektirecektir.
- Tarifler (recipes) benzer yapılandırmaları tekrarlar. Manifest tabanlı veya daha bildirimsel (declarative) bir format, bakımı daha temiz hale getirecektir.

## Yapılacaklar

- [ ] Değişmeyen derlemeleri atlamak için bir upstream taban imaj güncelleme denetleyicisi ekle.
- [ ] `recipes/` ötesindeki repo ve taban imaj tag kontrollerini araştır.
- [ ] Desteklenen yeni taban repoların otomatik keşfini değerlendir.
- [ ] Manifestler veya paylaşılan bildirimsel bileşenlerle tekrarlanan recipe yapılandırmasını azalt.
- [ ] Maybe refactor current `build-tuxedo.sh` logic.
  - [X] kernel-devel -> kernel-devel-matched
  - [ ] akmods kulanmak?
  - [ ] tüm recipe'larda daha iyi uyumluluk için koji çalıştırılabilir kernel-devel kullanmak?  
- [ ] Donanım testlerini genişlet ve doğrulanan dizüstü bilgisayar modellerini belgele.
- [X] Kendi "https://ghcr-badge.domain.example" adresini oluştur. (daha iyi badge sistemi için)
- [ ] `ghrc-badge` projesine katkı olarak Tarih desteği ekle (onlar birleştirene kadar kendi fork'unda kullan).
- [ ] Readme'nin tablolarına tarih sütunları ekle (kendi fork'una bunu yapabilecek özellik ekledikten sonra).

## Teşekkürler

- Recipe formatı ve build sistemi için [BlueBuild](https://github.com/blue-build) ve [BlueBuild GitHub Action](https://github.com/blue-build/github-action).
- Bazzite, Bluefin ve Aurora taban imajlarının bakıcıları ve [Universal Blue](https://github.com/ublue-os).
- Sürücüler ve Tuxedo Control Center için [TUXEDO Computers](https://github.com/tuxedocomputers).
- Proje katkıda bulunanları ve kod sahipleri: [@yavasdev](https://github.com/yavasdev).

## Depo geçmişi

[![Star History Chart](https://api.star-history.com/svg?repos=yavasdev/ublue-tuxedo&type=Date)](https://star-history.com/#yavasdev/ublue-tuxedo&Date)
