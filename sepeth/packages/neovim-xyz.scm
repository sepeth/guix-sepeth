(define-module (sepeth packages neovim-xyz)
  #:use-module (guix build-system cargo)
  #:use-module (guix download)
  #:use-module (guix git-download)
  #:use-module (guix gexp)
  #:use-module (guix utils)
  #:use-module ((guix licenses) #:prefix license:)
  #:use-module (guix packages)
  #:use-module (gnu packages)
  #:use-module (gnu packages assembly)
  #:use-module (gnu packages build-tools)
  #:use-module (gnu packages crates-apple)
  #:use-module (gnu packages crates-io)
  #:use-module (gnu packages crates-web)
  #:use-module (gnu packages crates-windows)
  #:use-module (gnu packages crates-graphics)
  #:use-module (gnu packages shells)
  #:use-module (gnu packages compression)
  #:use-module (gnu packages fontutils)
  #:use-module (gnu packages freedesktop)
  #:use-module (gnu packages gl)
  #:use-module (gnu packages graphics)
  #:use-module (gnu packages llvm)
  #:use-module (gnu packages ninja)
  #:use-module (gnu packages pkg-config)
  #:use-module (gnu packages python)
  #:use-module (gnu packages version-control)
  #:use-module (gnu packages video)
  #:use-module (gnu packages vulkan)
  #:use-module (gnu packages xdisorg)
  #:use-module (gnu packages xml)
  #:use-module (gnu packages xorg))

;; (define-public rust-dpi-0.1
;;   (package
;;     (name "rust-dpi")
;;     (version "0.1.1")
;;     (source
;;      (origin
;;        (method url-fetch)
;;        (uri (crate-uri "dpi" version))
;;        (file-name (string-append name "-" version ".tar.gz"))
;;        (sha256
;;         (base32 "0lzz48gpgbwdrw0s8vib0589ij9jizv1vzsphm4xd9kw58lhwp7j"))))
;;     (arguments
;;      `(#:cargo-inputs
;;        (("rust-mint" ,rust-mint-0.5)
;;         ("rust-serde" ,rust-serde-1))))
;;     (build-system cargo-build-system)
;;     ; FIXME the rest
;;     (home-page "https://github.com/rust-windowing/glutin")
;;     (synopsis "Glutin bootstrapping helpers with winit")
;;     (description "The package provides cross-platform glutin Display bootstrapping with winit.")
;;     (license license:asl2.0) 
;;     ))

; rust-image needs dav1d ^0.10.3
; rust-winit needs rust-image ^0.25.0
; neovide|rust-glutin-winit needs rust-winit
; neovide needs rust-glutin

;; (define-public rust-winit-0.30
;;   (package
;;     (inherit rust-winit-0.29)
;;     (name "rust-winit")
;;     (version "0.30.0")
;;     (source
;;      (origin
;;        (method url-fetch)
;;        (uri (crate-uri "winit" version))
;;        (file-name (string-append name "-" version ".tar.gz"))
;;        (sha256
;;         (base32 "1cb2clhgz052ikcmsjfwmjarmdji9wa040w2vph05xybcrfnv7pa"))))
;;     (arguments
;;      `(#:cargo-inputs
;;        (("rust-android-activity" ,rust-android-activity-0.4)
;;         ("rust-bitflags" ,rust-bitflags-1)
;;         ("rust-cfg-aliases" ,rust-cfg-aliases-0.1)
;;         ("rust-core-foundation" ,rust-core-foundation-0.9)
;;         ("rust-core-graphics" ,rust-core-graphics-0.22)
;;         ("rust-cursor-icon" ,rust-cursor-icon-1)
;;         ("rust-dispatch" ,rust-dpi-0.1)
;;         ("rust-dispatch" ,rust-dispatch-0.2)
;;         ("rust-instant" ,rust-instant-0.1)
;;         ("rust-libc" ,rust-libc-0.2)
;;         ("rust-log" ,rust-log-0.4)
;;         ("rust-mint" ,rust-mint-0.5)
;;         ("rust-mio" ,rust-mio-0.8)
;;         ("rust-ndk" ,rust-ndk-0.7)
;;         ("rust-objc2" ,rust-objc2-0.3)
;;         ("rust-once-cell" ,rust-once-cell-1)
;;         ("rust-orbclient" ,rust-orbclient-0.3)
;;         ("rust-percent-encoding" ,rust-percent-encoding-2)
;;         ("rust-raw-window-handle" ,rust-raw-window-handle-0.6)
;;         ("rust-redox-syscall" ,rust-redox-syscall-0.3)
;;         ("rust-sctk-adwaita" ,rust-sctk-adwaita-0.5)
;;         ("rust-serde" ,rust-serde-1)
;;         ("rust-smithay-client-toolkit" ,rust-smithay-client-toolkit-0.16)
;;         ("rust-wasm-bindgen" ,rust-wasm-bindgen-0.2)
;;         ("rust-wayland-client" ,rust-wayland-client-0.29)
;;         ("rust-wayland-commons" ,rust-wayland-commons-0.29)
;;         ("rust-wayland-protocols" ,rust-wayland-protocols-0.29)
;;         ("rust-wayland-scanner" ,rust-wayland-scanner-0.29)
;;         ("rust-web-sys" ,rust-web-sys-0.3)
;;         ("rust-windows-sys" ,rust-windows-sys-0.45)
;;         ("rust-x11-dl" ,rust-x11-dl-2))
;;        #:cargo-development-inputs
;;        (("rust-console-log" ,rust-console-log-0.2)
;;         ("rust-image" ,rust-image-0.24)
;;         ("rust-simple-logger" ,rust-simple-logger-2)
;;         ("rust-web-sys" ,rust-web-sys-0.3))))))



;; (define-public rust-winit-0.30
;;   (package
;;     (name "rust-winit")
;;     (version "0.30.5")
;;     (source
;;      (origin
;;        (method url-fetch)
;;        (uri (crate-uri "winit" version))
;;        (file-name (string-append name "-" version ".tar.gz"))
;;        (sha256
;;         (base32 "0rrczmdykbn43bkl3jvi2yg374rwpnf9h2qz855f0xqh3xmfgs8b"))))
;;     (build-system cargo-build-system)
;;     (arguments
;;       `(#:cargo-inputs (("rust-ahash" ,rust-ahash-0.8)
;;                         ("rust-android-activity" ,rust-android-activity-0.6)
;;                         ("rust-atomic-waker" ,rust-atomic-waker-1)
;;                         ("rust-bitflags" ,rust-bitflags-2)
;;                         ("rust-block2" ,rust-block2-0.5)
;;                         ("rust-bytemuck" ,rust-bytemuck-1)
;;                         ("rust-calloop" ,rust-calloop-0.13)
;;                         ("rust-cfg-aliases" ,rust-cfg-aliases-0.2)
;;                         ("rust-concurrent-queue" ,rust-concurrent-queue-2)
;;                         ("rust-core-foundation" ,rust-core-foundation-0.9)
;;                         ("rust-core-graphics" ,rust-core-graphics-0.23)
;;                         ("rust-cursor-icon" ,rust-cursor-icon-1)
;;                         ("rust-dpi" ,rust-dpi-0.1)
;;                         ("rust-js-sys" ,rust-js-sys-0.3)
;;                         ("rust-libc" ,rust-libc-0.2)
;;                         ("rust-memmap2" ,rust-memmap2-0.9)
;;                         ("rust-ndk" ,rust-ndk-0.9)
;;                         ("rust-objc2" ,rust-objc2-0.5)
;;                         ("rust-objc2-app-kit" ,rust-objc2-app-kit-0.2)
;;                         ("rust-objc2-foundation" ,rust-objc2-foundation-0.2)
;;                         ("rust-objc2-ui-kit" ,rust-objc2-ui-kit-0.2)
;;                         ("rust-orbclient" ,rust-orbclient-0.3)
;;                         ("rust-percent-encoding" ,rust-percent-encoding-2)
;;                         ("rust-pin-project" ,rust-pin-project-1)
;;                         ("rust-raw-window-handle" ,rust-raw-window-handle-0.4)
;;                         ("rust-raw-window-handle" ,rust-raw-window-handle-0.6)
;;                         ("rust-raw-window-handle" ,rust-raw-window-handle-0.5)
;;                         ("rust-redox-syscall" ,rust-redox-syscall-0.4)
;;                         ("rust-rustix" ,rust-rustix-0.38)
;;                         ("rust-sctk-adwaita" ,rust-sctk-adwaita-0.10)
;;                         ("rust-serde" ,rust-serde-1)
;;                         ("rust-smithay-client-toolkit" ,rust-smithay-client-toolkit-0.19)
;;                         ("rust-smol-str" ,rust-smol-str-0.2)
;;                         ("rust-tracing" ,rust-tracing-0.1)
;;                         ("rust-unicode-segmentation" ,rust-unicode-segmentation-1)
;;                         ("rust-wasm-bindgen" ,rust-wasm-bindgen-0.2)
;;                         ("rust-wasm-bindgen-futures" ,rust-wasm-bindgen-futures-0.4)
;;                         ("rust-wayland-backend" ,rust-wayland-backend-0.3)
;;                         ("rust-wayland-client" ,rust-wayland-client-0.31)
;;                         ("rust-wayland-protocols" ,rust-wayland-protocols-0.32)
;;                         ("rust-wayland-protocols-plasma" ,rust-wayland-protocols-plasma-0.3)
;;                         ("rust-web-sys" ,rust-web-sys-0.3)
;;                         ("rust-web-time" ,rust-web-time-1)
;;                         ("rust-windows-sys" ,rust-windows-sys-0.52)
;;                         ("rust-x11-dl" ,rust-x11-dl-2)
;;                         ("rust-x11rb" ,rust-x11rb-0.13)
;;                         ("rust-xkbcommon-dl" ,rust-xkbcommon-dl-0.4))
;;         #:cargo-development-inputs (("rust-console-error-panic-hook" ,rust-console-error-panic-hook-0.1)
;;                                     ("rust-image" ,rust-image-0.25)
;;                                     ("rust-softbuffer" ,rust-softbuffer-0.4)
;;                                     ("rust-tracing" ,rust-tracing-0.1)
;;                                     ("rust-tracing-subscriber" ,rust-tracing-subscriber-0.3)
;;                                     ("rust-tracing-web" ,rust-tracing-web-0.1))))
;;     (home-page "https://github.com/rust-windowing/winit")
;;     (synopsis "Cross-platform window creation library")
;;     (description
;;      "This package provides Cross-platform window creation library.")
;;     (license license:asl2.0)))
 

;; (define-public rust-glutin-winit-0.5
;;   (package
;;     (name "rust-glutin-winit")
;;     (version "0.5.0")
;;     (source
;;      (origin
;;        (method url-fetch)
;;        (uri (crate-uri "glutin-winit" version))
;;        (file-name (string-append name "-" version ".tar.gz"))
;;        (sha256
;;         (base32 "04mjvgh2dipwa8wdy8gc70k8w48104v8vmr2cmqdqspq5ai5jm00"))))
;;     (build-system cargo-build-system)
;;     (arguments
;;      `(#:cargo-inputs (
;;                        ("rust-glutin-egl-sys" ,rust-glutin-egl-sys-0.6)
;;                        ("rust-raw-window-handle" ,rust-raw-window-handle-0.5)
;;                        ("rust-winit" ,rust-winit-0.30)
;;                        )))
;;     (home-page "https://github.com/rust-windowing/glutin")
;;     (synopsis "Glutin bootstrapping helpers with winit")
;;     (description "The package provides cross-platform glutin Display bootstrapping with winit.")
;;     (license license:asl2.0)))

(define-public rust-flexi-logger-0.28
  (package
    (name "rust-flexi-logger")
    (version "0.28.5")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "flexi_logger" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "04334w0drcvi808fjm9gs494zsnsq05bmxlaz53vlirpid3jgafc"))
        (patches (list "sepeth/patches/rust-flexi-logger_fix_a_race_cond.patch"))
        ))

    (build-system cargo-build-system)
    (arguments
      `(#:install-source? #f
        #:cargo-inputs
        (
         ("rust-glob" ,rust-glob-0.3)
         ("rust-hostname" ,rust-hostname-0.4)
         ("rust-log" ,rust-log-0.4)
         ("rust-notify-debouncer-mini" ,rust-notify-debouncer-mini-0.4)
         ("rust-nu-ansi-term" ,rust-nu-ansi-term-0.50)
         ("rust-serde" ,rust-serde-1)
         ("rust-serde-json" ,rust-serde-json-1)
         ("rust-toml" ,rust-toml-0.8)
         )
        ))
    (home-page "https://github.com/neovide/neovide")
    (synopsis "No Nonsense Neovim Client in Rust")
    (description
      "A simple graphical user interface for Neovim (an aggressively refactored
      and updated Vim editor). Where possible there are some graphical
    improvements, but functionally it should act like the terminal UI.")
    (license license:expat)))

;; (define-public rust-flexi-logger-0.29
;;   (package
;;     (name "rust-flexi-logger")
;;     (version "0.29.0")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/sepeth/flexi_logger")
;;                (commit "33bf703fba776f458a0967401dca30d83c465711")))
;;                   ; (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1g2i1v2c5cbs0s8x5wklr8a4yqqixk8kl0sx9hp7kmmswrkhk4is"))))
;;
;;     (build-system cargo-build-system)
;;     (arguments
;;       `(#:install-source? #f
;;         #:cargo-inputs
;;         (
;;          ("rust-glob" ,rust-glob-0.3)
;;          ("rust-hostname" ,rust-hostname-0.4)
;;          ("rust-log" ,rust-log-0.4)
;;          ("rust-notify-debouncer-mini" ,rust-notify-debouncer-mini-0.4)
;;          ("rust-nu-ansi-term" ,rust-nu-ansi-term-0.50)
;;          ("rust-serde" ,rust-serde-1)
;;          ("rust-serde-json" ,rust-serde-json-1)
;;          ("rust-toml" ,rust-toml-0.8)
;;          )
;;         ))
;;     (home-page "https://github.com/neovide/neovide")
;;     (synopsis "No Nonsense Neovim Client in Rust")
;;     (description
;;       "A simple graphical user interface for Neovim (an aggressively refactored
;;       and updated Vim editor). Where possible there are some graphical
;;     improvements, but functionally it should act like the terminal UI.")
;;     (license license:expat)))


; anyhow = { version = "1.0.75", features = ["backtrace"] }
; async-trait = "0.1.53"
; backtrace = "0.3.67"
; clap = { version = "4.4.18", features = ["cargo", "derive", "env", "color"] }
; copypasta = "0.10.1"
; csscolorparser = "0.6.2"
; derive-new = "0.6.0"
; dirs = "5.0.0"
; glamour = { version = "0.11.1", features = ["serde"] }
; flexi_logger = { version = "0.28.0", default-features = false }
; futures = "0.3.21"
; gl = "0.14.0"
; glutin = "0.32.0"
; glutin-winit = "0.5.0"
; image = { version = "0.25.0", default-features = false, features = ["ico"] }
; indoc = "2.0.5"
; itertools = "0.13.0"
; lazy_static = "1.4.0"
; log = "0.4.16"
; lru = "0.12.2"
; neovide-derive = { path = "neovide-derive", version = "0.1.0" }
; num = "0.4.1"
; nvim-rs = { version = "0.7.0", features = ["use_tokio"] }
; parking_lot = "0.12.0"
; rand = "0.8.5"
; raw-window-handle = "0.6.0"
; rmpv = "1.0.0"
; serde = { version = "1.0.136", features = ["derive"] }
; serde_json = "1.0.79"
; shlex = "1.1.0"
; spin_sleep = "1.1.1"
; strum = { version = "0.26.2", features = ["derive"] }
; swash = { version = "0.1.8", default-features = false }
; time = { version = "0.3.34", features = ["macros", "formatting"] }
; tokio = { version = "1.25.0", features = ["full"] }
; tokio-util = { version = "0.7.4", features = ["compat"] }
; toml = "0.8.12"
; tracy-client-sys = { version = "0.22.0", optional = true, default-features = false, features = [
;     "broadcast",
;     "delayed-init",
;     "enable",
;     "manual-lifetime",
;     "fibers",
; ] }
; unicode-segmentation = "1.9.0"
; which = "6.0.1"
; winit = { version = "=0.30.3", features = ["serde"] }
; xdg = "2.4.1"
; notify-debouncer-full = "0.3.1"
; regex = "1.10.3"

(define-public rust-tracing-web-0.1
  (package
    (name "rust-tracing-web")
    (version "0.1.3")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "tracing-web" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "0z7yvr0v38yacqhqb1hbawy25jhgymd7izgbj66izmgbzr0s3rmr"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-js-sys" ,rust-js-sys-0.3)
                       ("rust-tracing-core" ,rust-tracing-core-0.1)
                       ("rust-tracing-subscriber" ,rust-tracing-subscriber-0.3)
                       ("rust-wasm-bindgen" ,rust-wasm-bindgen-0.2)
                       ("rust-web-sys" ,rust-web-sys-0.3))))
    (home-page "https://github.com/WorldSEnder/tracing-web")
    (synopsis "tracing compatible subscriber layer for web platforms.")
    (description
     "This package provides a tracing compatible subscriber layer for web platforms.")
    (license (list license:expat license:asl2.0))))

(define-public rust-windows-x86-64-msvc-0.52
  (package
    (name "rust-windows-x86-64-msvc")
    (version "0.52.6")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "windows_x86_64_msvc" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "1v7rb5cibyzx8vak29pdrk8nx9hycsjs4w0jgms08qk49jl6v7sq"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t))
    (home-page "https://github.com/microsoft/windows-rs")
    (synopsis "Import lib for Windows")
    (description "This package provides Import lib for Windows.")
    (license (list license:expat license:asl2.0))))

(define-public rust-windows-x86-64-gnullvm-0.52
  (package
    (name "rust-windows-x86-64-gnullvm")
    (version "0.52.6")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "windows_x86_64_gnullvm" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "03gda7zjx1qh8k9nnlgb7m3w3s1xkysg55hkd1wjch8pqhyv5m94"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t))
    (home-page "https://github.com/microsoft/windows-rs")
    (synopsis "Import lib for Windows")
    (description "This package provides Import lib for Windows.")
    (license (list license:expat license:asl2.0))))

(define-public rust-windows-x86-64-gnu-0.52
  (package
    (name "rust-windows-x86-64-gnu")
    (version "0.52.6")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "windows_x86_64_gnu" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "0y0sifqcb56a56mvn7xjgs8g43p33mfqkd8wj1yhrgxzma05qyhl"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t))
    (home-page "https://github.com/microsoft/windows-rs")
    (synopsis "Import lib for Windows")
    (description "This package provides Import lib for Windows.")
    (license (list license:expat license:asl2.0))))

(define-public rust-windows-i686-msvc-0.52
  (package
    (name "rust-windows-i686-msvc")
    (version "0.52.6")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "windows_i686_msvc" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "0rkcqmp4zzmfvrrrx01260q3xkpzi6fzi2x2pgdcdry50ny4h294"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t))
    (home-page "https://github.com/microsoft/windows-rs")
    (synopsis "Import lib for Windows")
    (description "This package provides Import lib for Windows.")
    (license (list license:expat license:asl2.0))))

(define-public rust-windows-i686-gnullvm-0.52
  (package
    (name "rust-windows-i686-gnullvm")
    (version "0.52.6")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "windows_i686_gnullvm" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "0rpdx1537mw6slcpqa0rm3qixmsb79nbhqy5fsm3q2q9ik9m5vhf"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t))
    (home-page "https://github.com/microsoft/windows-rs")
    (synopsis "Import lib for Windows")
    (description "This package provides Import lib for Windows.")
    (license (list license:expat license:asl2.0))))

(define-public rust-windows-i686-gnu-0.52
  (package
    (name "rust-windows-i686-gnu")
    (version "0.52.6")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "windows_i686_gnu" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "02zspglbykh1jh9pi7gn8g1f97jh1rrccni9ivmrfbl0mgamm6wf"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t))
    (home-page "https://github.com/microsoft/windows-rs")
    (synopsis "Import lib for Windows")
    (description "This package provides Import lib for Windows.")
    (license (list license:expat license:asl2.0))))

(define-public rust-windows-aarch64-msvc-0.52
  (package
    (name "rust-windows-aarch64-msvc")
    (version "0.52.6")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "windows_aarch64_msvc" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "0sfl0nysnz32yyfh773hpi49b1q700ah6y7sacmjbqjjn5xjmv09"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t))
    (home-page "https://github.com/microsoft/windows-rs")
    (synopsis "Import lib for Windows")
    (description "This package provides Import lib for Windows.")
    (license (list license:expat license:asl2.0))))

(define-public rust-windows-aarch64-gnullvm-0.52
  (package
    (name "rust-windows-aarch64-gnullvm")
    (version "0.52.6")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "windows_aarch64_gnullvm" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "1lrcq38cr2arvmz19v32qaggvj8bh1640mdm9c2fr877h0hn591j"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t))
    (home-page "https://github.com/microsoft/windows-rs")
    (synopsis "Import lib for Windows")
    (description "This package provides Import lib for Windows.")
    (license (list license:expat license:asl2.0))))

(define-public rust-windows-targets-0.52
  (package
    (name "rust-windows-targets")
    (version "0.52.6")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "windows-targets" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "0wwrx625nwlfp7k93r2rra568gad1mwd888h1jwnl0vfg5r4ywlv"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-windows-aarch64-gnullvm" ,rust-windows-aarch64-gnullvm-0.52)
                       ("rust-windows-aarch64-msvc" ,rust-windows-aarch64-msvc-0.52)
                       ("rust-windows-i686-gnu" ,rust-windows-i686-gnu-0.52)
                       ("rust-windows-i686-gnullvm" ,rust-windows-i686-gnullvm-0.52)
                       ("rust-windows-i686-msvc" ,rust-windows-i686-msvc-0.52)
                       ("rust-windows-x86-64-gnu" ,rust-windows-x86-64-gnu-0.52)
                       ("rust-windows-x86-64-gnullvm" ,rust-windows-x86-64-gnullvm-0.52)
                       ("rust-windows-x86-64-msvc" ,rust-windows-x86-64-msvc-0.52))))
    (home-page "https://github.com/microsoft/windows-rs")
    (synopsis "Import libs for Windows")
    (description "This package provides Import libs for Windows.")
    (license (list license:expat license:asl2.0))))

(define-public rust-windows-sys-0.59
  (package
    (name "rust-windows-sys")
    (version "0.59.0")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "windows-sys" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "0fw5672ziw8b3zpmnbp9pdv1famk74f1l9fcbc3zsrzdg56vqf0y"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-windows-targets" ,rust-windows-targets-0.52))))
    (home-page "https://github.com/microsoft/windows-rs")
    (synopsis "Rust for Windows")
    (description "This package provides Rust for Windows.")
    (license (list license:expat license:asl2.0))))

(define-public rust-linux-raw-sys-0.6
  (package
    (name "rust-linux-raw-sys")
    (version "0.6.5")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "linux-raw-sys" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "1mv3c1zz51ydcj768zavm8g06gz5jb1p7yigmmif7hz5whdmnf1a"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-compiler-builtins" ,rust-compiler-builtins-0.1)
                       ("rust-rustc-std-workspace-core" ,rust-rustc-std-workspace-core-1))))
    (home-page "https://github.com/sunfishcode/linux-raw-sys")
    (synopsis "Generated bindings for Linux's userspace API")
    (description
     "This package provides Generated bindings for Linux's userspace API.")
    (license (list license:asl2.0
                   ; unknown-license! FIXME: apache with llvm exceptions
                   license:asl2.0
                   license:expat))))

(define-public rust-drm-sys-0.7
  (package
    (name "rust-drm-sys")
    (version "0.7.0")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "drm-sys" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "11irvbzb0rbsm5zxgxsbaca8f6nvkl8kvwk3hwp6q6bf1gjdsfgx"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-bindgen" ,rust-bindgen-0.69)
                       ("rust-libc" ,rust-libc-0.2)
                       ("rust-linux-raw-sys" ,rust-linux-raw-sys-0.6)
                       ("rust-pkg-config" ,rust-pkg-config-0.3))))
    (home-page "https://github.com/Smithay/drm-rs")
    (synopsis "Bindings to the Direct Rendering Manager API")
    (description
     "This package provides Bindings to the Direct Rendering Manager API.")
    (license license:expat)))

(define-public rust-drm-ffi-0.8
  (package
    (name "rust-drm-ffi")
    (version "0.8.0")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "drm-ffi" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "0lwd4zvimd4132cpay3vs41gf1sv3s4gx37a997wnz4bwhkqgjcp"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-drm-sys" ,rust-drm-sys-0.7)
                       ("rust-rustix" ,rust-rustix-0.38))))
    (home-page "https://github.com/Smithay/drm-rs")
    (synopsis "Safe, low-level bindings to the Direct Rendering Manager API")
    (description
     "This package provides Safe, low-level bindings to the Direct Rendering Manager API.")
    (license license:expat)))

(define-public rust-drm-0.12
  (package
    (name "rust-drm")
    (version "0.12.0")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "drm" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "1ldmrglplhrcfmpyjy2ga4hg89c89f0kzmky3b0j85b0pm5qr24q"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-bitflags" ,rust-bitflags-2)
                       ("rust-bytemuck" ,rust-bytemuck-1)
                       ("rust-drm-ffi" ,rust-drm-ffi-0.8)
                       ("rust-drm-fourcc" ,rust-drm-fourcc-2)
                       ("rust-rustix" ,rust-rustix-0.38))))
    (home-page "https://github.com/Smithay/drm-rs")
    (synopsis "Safe, low-level bindings to the Direct Rendering Manager API")
    (description
     "This package provides Safe, low-level bindings to the Direct Rendering Manager API.")
    (license license:expat)))

(define-public rust-core-graphics-types-0.2
  (package
    (name "rust-core-graphics-types")
    (version "0.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "core-graphics-types" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "1sqka1rz84lr3p69i1s6lggnpnznmrw4ngc5q76w9xhky80s2i1x"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-bitflags" ,rust-bitflags-2)
                       ("rust-core-foundation" ,rust-core-foundation-0.10)
                       ("rust-libc" ,rust-libc-0.2))))
    (home-page "https://github.com/servo/core-foundation-rs")
    (synopsis "Bindings for some fundamental Core Graphics types")
    (description
     "This package provides Bindings for some fundamental Core Graphics types.")
    (license (list license:expat license:asl2.0))))

(define-public rust-core-foundation-sys-0.8
  (package
    (name "rust-core-foundation-sys")
    (version "0.8.7")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "core-foundation-sys" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "12w8j73lazxmr1z0h98hf3z623kl8ms7g07jch7n4p8f9nwlhdkp"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t))
    (home-page "https://github.com/servo/core-foundation-rs")
    (synopsis "Bindings to Core Foundation for macOS")
    (description
     "This package provides Bindings to Core Foundation for @code{macOS}.")
    (license (list license:expat license:asl2.0))))

(define-public rust-core-foundation-0.10
  (package
    (name "rust-core-foundation")
    (version "0.10.0")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "core-foundation" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "0qscay14s2rwkg8nd8ljhiaf149hj8sfy95d70zssy64r3jp2lmm"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-core-foundation-sys" ,rust-core-foundation-sys-0.8)
                       ("rust-libc" ,rust-libc-0.2)
                       ("rust-uuid" ,rust-uuid-1))))
    (home-page "https://github.com/servo/core-foundation-rs")
    (synopsis "Bindings to Core Foundation for macOS")
    (description
     "This package provides Bindings to Core Foundation for @code{macOS}.")
    (license (list license:expat license:asl2.0))))

(define-public rust-core-graphics-0.24
  (package
    (name "rust-core-graphics")
    (version "0.24.0")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "core-graphics" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "1w8n8gqqm8swkanaibilqya8ryldp9fvf80byjxsaprn493a75gs"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-bitflags" ,rust-bitflags-2)
                       ("rust-core-foundation" ,rust-core-foundation-0.10)
                       ("rust-core-graphics-types" ,rust-core-graphics-types-0.2)
                       ("rust-foreign-types" ,rust-foreign-types-0.5)
                       ("rust-libc" ,rust-libc-0.2))))
    (home-page "https://github.com/servo/core-foundation-rs")
    (synopsis "Bindings to Core Graphics for macOS")
    (description
     "This package provides Bindings to Core Graphics for @code{macOS}.")
    (license (list license:expat license:asl2.0))))

(define-public rust-softbuffer-0.4
  (package
    (name "rust-softbuffer")
    (version "0.4.6")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "softbuffer" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "025v65wsfncn1wp571rr9vj3ghfgnb6y06ai0nnjqy9favfiq18q"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-as-raw-xcb-connection" ,rust-as-raw-xcb-connection-1)
                       ("rust-bytemuck" ,rust-bytemuck-1)
                       ("rust-cfg-aliases" ,rust-cfg-aliases-0.2)
                       ("rust-core-graphics" ,rust-core-graphics-0.24)
                       ("rust-drm" ,rust-drm-0.12)
                       ("rust-fastrand" ,rust-fastrand-2)
                       ("rust-foreign-types" ,rust-foreign-types-0.5)
                       ("rust-js-sys" ,rust-js-sys-0.3)
                       ("rust-log" ,rust-log-0.4)
                       ("rust-memmap2" ,rust-memmap2-0.9)
                       ("rust-objc2" ,rust-objc2-0.5)
                       ("rust-objc2-foundation" ,rust-objc2-foundation-0.2)
                       ("rust-objc2-quartz-core" ,rust-objc2-quartz-core-0.2)
                       ("rust-raw-window-handle" ,rust-raw-window-handle-0.6)
                       ("rust-redox-syscall" ,rust-redox-syscall-0.5)
                       ("rust-rustix" ,rust-rustix-0.38)
                       ("rust-tiny-xlib" ,rust-tiny-xlib-0.2)
                       ("rust-wasm-bindgen" ,rust-wasm-bindgen-0.2)
                       ("rust-wayland-backend" ,rust-wayland-backend-0.3)
                       ("rust-wayland-client" ,rust-wayland-client-0.31)
                       ("rust-wayland-sys" ,rust-wayland-sys-0.31)
                       ("rust-web-sys" ,rust-web-sys-0.3)
                       ("rust-windows-sys" ,rust-windows-sys-0.59)
                       ("rust-x11rb" ,rust-x11rb-0.13))))
    (home-page "https://github.com/rust-windowing/softbuffer")
    (synopsis "Cross-platform software buffer")
    (description "This package provides Cross-platform software buffer.")
    (license (list license:expat license:asl2.0))))

(define-public rust-zune-jpeg-0.4
  (package
    (name "rust-zune-jpeg")
    (version "0.4.13")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "zune-jpeg" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "0s07igp839yy66hs5f8g6gzvvanywgv3zxr2hq18yk8bc0c9828n"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-zune-core" ,rust-zune-core-0.4))))
    (home-page
     "https://github.com/etemesi254/zune-image/tree/dev/crates/zune-jpeg")
    (synopsis "fast, correct and safe jpeg decoder")
    (description
     "This package provides a fast, correct and safe jpeg decoder.")
    (license (list license:expat license:asl2.0 license:zlib))))

(define-public rust-zune-core-0.4
  (package
    (name "rust-zune-core")
    (version "0.4.12")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "zune-core" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "0jj1ra86klzlcj9aha9als9d1dzs7pqv3azs1j3n96822wn3lhiz"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-log" ,rust-log-0.4)
                       ("rust-serde" ,rust-serde-1))))
    (home-page "https://github.com/etemesi254/zune-image")
    (synopsis
     "Core utilities for image processing in the zune family of crates")
    (description
     "This package provides Core utilities for image processing in the zune family of crates.")
    (license (list license:expat license:asl2.0 license:zlib))))

(define-public rust-image-webp-0.1
  (package
    (name "rust-image-webp")
    (version "0.1.3")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "image-webp" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "0179iqgvh6ybbq0r5d3ms11kka8jihhpliydkksj1vz2ps6gp6pp"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-byteorder-lite" ,rust-byteorder-lite-0.1)
                       ("rust-quick-error" ,rust-quick-error-2))))
    (home-page "https://github.com/image-rs/image-webp")
    (synopsis "WebP encoding and decoding in pure Rust")
    (description
     "This package provides @code{WebP} encoding and decoding in pure Rust.")
    (license (list license:expat license:asl2.0))))

(define-public rust-weezl-0.1
  (package
    (name "rust-weezl")
    (version "0.1.8")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "weezl" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "10lhndjgs6y5djpg3b420xngcr6jkmv70q8rb1qcicbily35pa2k"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-futures" ,rust-futures-0.3))))
    (home-page "https://github.com/image-rs/lzw")
    (synopsis "Fast LZW compression and decompression")
    (description
     "This package provides Fast LZW compression and decompression.")
    (license (list license:expat license:asl2.0))))

(define-public rust-gif-0.13
  (package
    (name "rust-gif")
    (version "0.13.1")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "gif" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "1whrkvdg26gp1r7f95c6800y6ijqw5y0z8rgj6xihpi136dxdciz"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-color-quant" ,rust-color-quant-1)
                       ("rust-weezl" ,rust-weezl-0.1))))
    (home-page "https://github.com/image-rs/image-gif")
    (synopsis "GIF de- and encoder")
    (description "This package provides GIF de- and encoder.")
    (license (list license:expat license:asl2.0))))

(define-public rust-dcv-color-primitives-0.6
  (package
    (name "rust-dcv-color-primitives")
    (version "0.6.1")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "dcv-color-primitives" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "0k3384cfwhc8z9pxj0gb6dz8sjcwsamnpbrkbc570sfhzvnn5b87"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-paste" ,rust-paste-1)
                       ("rust-wasm-bindgen" ,rust-wasm-bindgen-0.2))))
    (home-page "https://github.com/aws/dcv-color-primitives")
    (synopsis "a library to perform image color model conversion")
    (description
     "This package provides a library to perform image color model conversion.")
    (license license:expat-0)))

(define-public rust-dav1d-sys-0.8
  (package
    (name "rust-dav1d-sys")
    (version "0.8.2")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "dav1d-sys" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "158fqp97ny3206sydnimc2jy1c1gcxa4llqvvkp3ii2dixg1rjvf"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-libc" ,rust-libc-0.2)
                       ("rust-system-deps" ,rust-system-deps-6))))
    (home-page "https://github.com/rust-av/dav1d-rs")
    (synopsis "FFI bindings to dav1d")
    (description "This package provides FFI bindings to dav1d.")
    (license license:expat)))

(define-public rust-av-data-0.4
  (package
    (name "rust-av-data")
    (version "0.4.2")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "av-data" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "0lk5pq6jfmfp5ihvnzqdqxympk5rk7648bcsvwhgj02xaairhnyp"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-byte-slice-cast" ,rust-byte-slice-cast-1)
                       ("rust-bytes" ,rust-bytes-1)
                       ("rust-num-derive" ,rust-num-derive-0.4)
                       ("rust-num-rational" ,rust-num-rational-0.4)
                       ("rust-num-traits" ,rust-num-traits-0.2)
                       ("rust-thiserror" ,rust-thiserror-1))))
    (home-page "https://github.com/rust-av/rust-av")
    (synopsis "Multimedia data structures")
    (description "This package provides Multimedia data structures.")
    (license license:expat)))

(define-public rust-dav1d-0.10
  (package
    (name "rust-dav1d")
    (version "0.10.3")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "dav1d" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "1qd13sm1bfbc5chjgrzk4syffkky994lkyzhqrqklqxg1fj58jqd"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-av-data" ,rust-av-data-0.4)
                       ("rust-bitflags" ,rust-bitflags-2)
                       ("rust-dav1d-sys" ,rust-dav1d-sys-0.8)
                       ("rust-static-assertions" ,rust-static-assertions-1))))
    (home-page "https://github.com/rust-av/dav1d-rs")
    (synopsis "libdav1d bindings")
    (description "This package provides libdav1d bindings.")
    (license license:expat)))

(define-public rust-byteorder-lite-0.1
  (package
    (name "rust-byteorder-lite")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "byteorder-lite" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "15alafmz4b9az56z6x7glcbcb6a8bfgyd109qc3bvx07zx4fj7wg"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t))
    (home-page "https://github.com/image-rs/byteorder-lite")
    (synopsis
     "Library for reading/writing numbers in big-endian and little-endian")
    (description
     "This package provides Library for reading/writing numbers in big-endian and little-endian.")
    (license (list license:unlicense license:expat))))

(define-public rust-image-0.25
  (package
    (name "rust-image")
    (version "0.25.2")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "image" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "041sjvahq6zz5zhjhixmid65x31dafpcs97r26rdvf2j4654qccr"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-bytemuck" ,rust-bytemuck-1)
                       ("rust-byteorder-lite" ,rust-byteorder-lite-0.1)
                       ("rust-color-quant" ,rust-color-quant-1)
                       ("rust-dav1d" ,rust-dav1d-0.10)
                       ("rust-dcv-color-primitives" ,rust-dcv-color-primitives-0.6)
                       ("rust-exr" ,rust-exr-1)
                       ("rust-gif" ,rust-gif-0.13)
                       ("rust-image-webp" ,rust-image-webp-0.1)
                       ("rust-mp4parse" ,rust-mp4parse-0.17)
                       ("rust-num-traits" ,rust-num-traits-0.2)
                       ("rust-png" ,rust-png-0.17)
                       ("rust-qoi" ,rust-qoi-0.4)
                       ("rust-ravif" ,rust-ravif-0.11)
                       ("rust-rayon" ,rust-rayon-1)
                       ("rust-rgb" ,rust-rgb-0.8)
                       ("rust-tiff" ,rust-tiff-0.9)
                       ("rust-zune-core" ,rust-zune-core-0.4)
                       ("rust-zune-jpeg" ,rust-zune-jpeg-0.4))))
    (home-page "https://github.com/image-rs/image")
    (synopsis
     "Imaging library. Provides basic image processing and encoders/decoders for common image formats")
    (description
     "This package provides Imaging library.  Provides basic image processing and encoders/decoders for
common image formats.")
    (license (list license:expat license:asl2.0))))

(define-public rust-xkbcommon-dl-0.4
  (package
    (name "rust-xkbcommon-dl")
    (version "0.4.2")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "xkbcommon-dl" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "1iai0r3b5skd9vbr8z5b0qixiz8jblzfm778ddm8ba596a0dwffh"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-bitflags" ,rust-bitflags-2)
                       ("rust-dlib" ,rust-dlib-0.5)
                       ("rust-log" ,rust-log-0.4)
                       ("rust-once-cell" ,rust-once-cell-1)
                       ("rust-xkeysym" ,rust-xkeysym-0.2))))
    (home-page "https://github.com/rust-windowing/xkbcommon-dl")
    (synopsis "Dynamically loaded xkbcommon and xkbcommon-x11 Rust bindings")
    (description
     "This package provides Dynamically loaded xkbcommon and xkbcommon-x11 Rust bindings.")
    (license license:expat)))

(define-public rust-wayland-protocols-plasma-0.3
  (package
    (name "rust-wayland-protocols-plasma")
    (version "0.3.4")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "wayland-protocols-plasma" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "1zvy38i36z1z65fg3x3870hy19rclkgrcyjz95r52n2yhyk422la"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-bitflags" ,rust-bitflags-2)
                       ("rust-wayland-backend" ,rust-wayland-backend-0.3)
                       ("rust-wayland-client" ,rust-wayland-client-0.31)
                       ("rust-wayland-protocols" ,rust-wayland-protocols-0.32)
                       ("rust-wayland-scanner" ,rust-wayland-scanner-0.31)
                       ("rust-wayland-server" ,rust-wayland-server-0.31))))
    (home-page "https://github.com/smithay/wayland-rs")
    (synopsis "Generated API for the Plasma wayland protocol extensions")
    (description
     "This package provides Generated API for the Plasma wayland protocol extensions.")
    (license license:expat)))

(define-public rust-wayland-protocols-wlr-0.3
  (package
    (name "rust-wayland-protocols-wlr")
    (version "0.3.4")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "wayland-protocols-wlr" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "02ciz2cvcnhpg9phjwbv0zhky7m1la3gdy1dg4pwmlxis5gppn6s"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-bitflags" ,rust-bitflags-2)
                       ("rust-wayland-backend" ,rust-wayland-backend-0.3)
                       ("rust-wayland-client" ,rust-wayland-client-0.31)
                       ("rust-wayland-protocols" ,rust-wayland-protocols-0.32)
                       ("rust-wayland-scanner" ,rust-wayland-scanner-0.31)
                       ("rust-wayland-server" ,rust-wayland-server-0.31))))
    (home-page "https://github.com/smithay/wayland-rs")
    (synopsis "Generated API for the WLR wayland protocol extensions")
    (description
     "This package provides Generated API for the WLR wayland protocol extensions.")
    (license license:expat)))

(define-public rust-wayland-server-0.31
  (package
    (name "rust-wayland-server")
    (version "0.31.5")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "wayland-server" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "1dhjrfnn4vy90gjycq5vppcwq074fg89xncmwrwh9cf071qd860g"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-bitflags" ,rust-bitflags-2)
                       ("rust-downcast-rs" ,rust-downcast-rs-1)
                       ("rust-io-lifetimes" ,rust-io-lifetimes-2)
                       ("rust-log" ,rust-log-0.4)
                       ("rust-rustix" ,rust-rustix-0.38)
                       ("rust-wayland-backend" ,rust-wayland-backend-0.3)
                       ("rust-wayland-scanner" ,rust-wayland-scanner-0.31))))
    (home-page "https://github.com/smithay/wayland-rs")
    (synopsis
     "Bindings to the standard C implementation of the wayland protocol, server side")
    (description
     "This package provides Bindings to the standard C implementation of the wayland protocol, server side.")
    (license license:expat)))

(define-public rust-quick-xml-0.36
  (package
    (name "rust-quick-xml")
    (version "0.36.1")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "quick-xml" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "1g0p8h4hxz2ymiyd71mn862nrj7s0g1wwiyahhdabpzxiqp5x84n"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-arbitrary" ,rust-arbitrary-1)
                       ("rust-document-features" ,rust-document-features-0.2)
                       ("rust-encoding-rs" ,rust-encoding-rs-0.8)
                       ("rust-memchr" ,rust-memchr-2)
                       ("rust-serde" ,rust-serde-1)
                       ("rust-tokio" ,rust-tokio-1))))
    (home-page "https://github.com/tafia/quick-xml")
    (synopsis "High performance xml reader and writer")
    (description
     "This package provides High performance xml reader and writer.")
    (license license:expat)))

(define-public rust-wayland-scanner-0.31
  (package
    (name "rust-wayland-scanner")
    (version "0.31.5")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "wayland-scanner" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "1hv16shy6j32hi9i0r54pyk5pw3q7qfpkffmwchi3z75n80j0zsr"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-proc-macro2" ,rust-proc-macro2-1)
                       ("rust-quick-xml" ,rust-quick-xml-0.36)
                       ("rust-quote" ,rust-quote-1))))
    (home-page "https://github.com/smithay/wayland-rs")
    (synopsis
     "Wayland Scanner for generating rust APIs from XML wayland protocol files")
    (description
     "This package provides Wayland Scanner for generating rust APIs from XML wayland protocol files.")
    (license license:expat)))

(define-public rust-wayland-client-0.31
  (package
    (name "rust-wayland-client")
    (version "0.31.6")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "wayland-client" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "0bas1aym4ykzhz1kbsj38ijvf94nklfhq8jp43yz2pli4895vx73"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-bitflags" ,rust-bitflags-2)
                       ("rust-log" ,rust-log-0.4)
                       ("rust-rustix" ,rust-rustix-0.38)
                       ("rust-wayland-backend" ,rust-wayland-backend-0.3)
                       ("rust-wayland-scanner" ,rust-wayland-scanner-0.31))))
    (home-page "https://github.com/smithay/wayland-rs")
    (synopsis
     "Bindings to the standard C implementation of the wayland protocol, client side")
    (description
     "This package provides Bindings to the standard C implementation of the wayland protocol, client side.")
    (license license:expat)))

(define-public rust-wayland-sys-0.31
  (package
    (name "rust-wayland-sys")
    (version "0.31.5")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "wayland-sys" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "02cyl94ydazgjdjf7asm2phni8h62j4cg4pwr6sy7lwfiq6sra7g"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-dlib" ,rust-dlib-0.5)
                       ("rust-libc" ,rust-libc-0.2)
                       ("rust-log" ,rust-log-0.4)
                       ("rust-memoffset" ,rust-memoffset-0.9)
                       ("rust-once-cell" ,rust-once-cell-1)
                       ("rust-pkg-config" ,rust-pkg-config-0.3))))
    (home-page "https://github.com/smithay/wayland-rs")
    (synopsis
     "FFI bindings to the various libwayland-*.so libraries. You should only need this crate if you are working on custom wayland protocol extensions. Look at the crate wayland-client for usable bindings")
    (description
     "This package provides FFI bindings to the various libwayland-*.so libraries.  You should only need
this crate if you are working on custom wayland protocol extensions.  Look at
the crate wayland-client for usable bindings.")
    (license license:expat)))

(define-public rust-wayland-backend-0.3
  (package
    (name "rust-wayland-backend")
    (version "0.3.7")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "wayland-backend" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "1xhnh0mn4cv0wmq3zcm0iic2sbhsz4qdra6kb58x8l51sz73ar85"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-cc" ,rust-cc-1)
                       ("rust-downcast-rs" ,rust-downcast-rs-1)
                       ("rust-log" ,rust-log-0.4)
                       ("rust-raw-window-handle" ,rust-raw-window-handle-0.5)
                       ("rust-raw-window-handle" ,rust-raw-window-handle-0.6)
                       ("rust-rustix" ,rust-rustix-0.38)
                       ("rust-scoped-tls" ,rust-scoped-tls-1)
                       ("rust-smallvec" ,rust-smallvec-1)
                       ("rust-wayland-sys" ,rust-wayland-sys-0.31))))
    (home-page "https://github.com/smithay/wayland-rs")
    (synopsis "Low-level bindings to the Wayland protocol")
    (description
     "This package provides Low-level bindings to the Wayland protocol.")
    (license license:expat)))

(define-public rust-wayland-protocols-0.32
  (package
    (name "rust-wayland-protocols")
    (version "0.32.4")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "wayland-protocols" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "1q3x0n0pv87v4l6yj8yrbzkhmjz4biajcl52faw0n179gbbmamrb"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-bitflags" ,rust-bitflags-2)
                       ("rust-wayland-backend" ,rust-wayland-backend-0.3)
                       ("rust-wayland-client" ,rust-wayland-client-0.31)
                       ("rust-wayland-scanner" ,rust-wayland-scanner-0.31)
                       ("rust-wayland-server" ,rust-wayland-server-0.31))))
    (home-page "https://github.com/smithay/wayland-rs")
    (synopsis "Generated API for the officials wayland protocol extensions")
    (description
     "This package provides Generated API for the officials wayland protocol extensions.")
    (license license:expat)))

(define-public rust-calloop-wayland-source-0.3
  (package
    (name "rust-calloop-wayland-source")
    (version "0.3.0")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "calloop-wayland-source" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "086x5mq16prrcwd9k6bw9an0sp8bj9l5daz4ziz5z4snf2c6m9lm"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-calloop" ,rust-calloop-0.13)
                       ("rust-log" ,rust-log-0.4)
                       ("rust-rustix" ,rust-rustix-0.38)
                       ("rust-wayland-backend" ,rust-wayland-backend-0.3)
                       ("rust-wayland-client" ,rust-wayland-client-0.31))))
    (home-page "https://github.com/smithay/calloop-wayland-source")
    (synopsis "wayland-rs client event source for callloop")
    (description
     "This package provides a wayland-rs client event source for callloop.")
    (license license:expat)))

(define-public rust-smithay-client-toolkit-0.19
  (package
    (name "rust-smithay-client-toolkit")
    (version "0.19.2")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "smithay-client-toolkit" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "05h05hg4dn3v6br5jbdbs5nalk076a64s7fn6i01nqzby2hxwmrl"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-bitflags" ,rust-bitflags-2)
                       ("rust-bytemuck" ,rust-bytemuck-1)
                       ("rust-calloop" ,rust-calloop-0.13)
                       ("rust-calloop-wayland-source" ,rust-calloop-wayland-source-0.3)
                       ("rust-cursor-icon" ,rust-cursor-icon-1)
                       ("rust-libc" ,rust-libc-0.2)
                       ("rust-log" ,rust-log-0.4)
                       ("rust-memmap2" ,rust-memmap2-0.9)
                       ("rust-pkg-config" ,rust-pkg-config-0.3)
                       ("rust-rustix" ,rust-rustix-0.38)
                       ("rust-thiserror" ,rust-thiserror-1)
                       ("rust-wayland-backend" ,rust-wayland-backend-0.3)
                       ("rust-wayland-client" ,rust-wayland-client-0.31)
                       ("rust-wayland-csd-frame" ,rust-wayland-csd-frame-0.3)
                       ("rust-wayland-cursor" ,rust-wayland-cursor-0.31)
                       ("rust-wayland-protocols" ,rust-wayland-protocols-0.32)
                       ("rust-wayland-protocols-wlr" ,rust-wayland-protocols-wlr-0.3)
                       ("rust-wayland-scanner" ,rust-wayland-scanner-0.31)
                       ("rust-xkbcommon" ,rust-xkbcommon-0.7)
                       ("rust-xkeysym" ,rust-xkeysym-0.2))))
    (home-page "https://github.com/smithay/client-toolkit")
    (synopsis "Toolkit for making client wayland applications")
    (description
     "This package provides Toolkit for making client wayland applications.")
    (license license:expat)))

(define-public rust-yeslogic-fontconfig-sys-5
  (package
    (name "rust-yeslogic-fontconfig-sys")
    (version "5.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "yeslogic-fontconfig-sys" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "0yiwnf2gapqaprp3icvv6b1jjh5d356vpis7pybskcd8k4wv5dpz"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-cstr" ,rust-cstr-0.2)
                       ("rust-dlib" ,rust-dlib-0.5)
                       ("rust-once-cell" ,rust-once-cell-1)
                       ("rust-pkg-config" ,rust-pkg-config-0.3))))
    (home-page "https://github.com/yeslogic/fontconfig-rs")
    (synopsis "Raw bindings to Fontconfig without a vendored C library")
    (description
     "This package provides Raw bindings to Fontconfig without a vendored C library.")
    (license license:expat)))

(define-public rust-freetype-sys-0.20
  (package
    (name "rust-freetype-sys")
    (version "0.20.1")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "freetype-sys" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "0d5iiv95ap3lwy7b0hxbc8caa9ng1fg3wlwrvb7rld39jrdxqzhf"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-cc" ,rust-cc-1)
                       ("rust-libc" ,rust-libc-0.2)
                       ("rust-pkg-config" ,rust-pkg-config-0.3))))
    (home-page "https://github.com/PistonDevelopers/freetype-sys")
    (synopsis "Low level binding for FreeType font library")
    (description
     "This package provides Low level binding for @code{FreeType} font library.")
    (license license:expat)))

(define-public rust-freetype-rs-0.36
  (package
    (name "rust-freetype-rs")
    (version "0.36.0")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "freetype-rs" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "05rbdl18ks2rb0kz7giwpcv7k1hfg19hbp406l9h95m0dkixwhjl"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-bitflags" ,rust-bitflags-2)
                       ("rust-freetype-sys" ,rust-freetype-sys-0.20)
                       ("rust-libc" ,rust-libc-0.2))))
    (home-page "https://github.com/PistonDevelopers/freetype-rs")
    (synopsis "Bindings for FreeType font library")
    (description
     "This package provides Bindings for @code{FreeType} font library.")
    (license license:expat)))

(define-public rust-crossfont-0.8
  (package
    (name "rust-crossfont")
    (version "0.8.0")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "crossfont" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "1g490ap42qm1258222azy70mmd6b16dk8lza0142bjgk438jhkn4"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-cocoa" ,rust-cocoa-0.25)
                       ("rust-core-foundation" ,rust-core-foundation-0.9)
                       ("rust-core-foundation-sys" ,rust-core-foundation-sys-0.8)
                       ("rust-core-graphics" ,rust-core-graphics-0.23)
                       ("rust-core-text" ,rust-core-text-20)
                       ("rust-dwrote" ,rust-dwrote-0.11)
                       ("rust-foreign-types" ,rust-foreign-types-0.5)
                       ("rust-freetype-rs" ,rust-freetype-rs-0.36)
                       ("rust-libc" ,rust-libc-0.2)
                       ("rust-log" ,rust-log-0.4)
                       ("rust-objc" ,rust-objc-0.2)
                       ("rust-once-cell" ,rust-once-cell-1)
                       ("rust-pkg-config" ,rust-pkg-config-0.3)
                       ("rust-winapi" ,rust-winapi-0.3)
                       ("rust-yeslogic-fontconfig-sys" ,rust-yeslogic-fontconfig-sys-5))))
    (home-page "https://github.com/alacritty/crossfont.git")
    (synopsis "Cross platform native font loading and rasterization")
    (description
     "This package provides Cross platform native font loading and rasterization.")
    (license license:asl2.0)))

(define-public rust-sctk-adwaita-0.10
  (package
    (name "rust-sctk-adwaita")
    (version "0.10.1")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "sctk-adwaita" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "1v14vqp7k39jk7pgaibwc06qq9vcmi82k7zlv3qpfvq52w17y9xn"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-ab-glyph" ,rust-ab-glyph-0.2)
                       ("rust-crossfont" ,rust-crossfont-0.8)
                       ("rust-log" ,rust-log-0.4)
                       ("rust-memmap2" ,rust-memmap2-0.9)
                       ("rust-smithay-client-toolkit" ,rust-smithay-client-toolkit-0.19)
                       ("rust-tiny-skia" ,rust-tiny-skia-0.11))))
    (home-page "https://github.com/PolyMeilex/sctk-adwaita")
    (synopsis "Adwaita-like SCTK Frame")
    (description "This package provides Adwaita-like SCTK Frame.")
    (license license:expat)))

(define-public rust-orbclient-0.3
  (package
    (name "rust-orbclient")
    (version "0.3.47")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "orbclient" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "0rk144mqpv27r390bjn6dfcp2314xxfila6g3njx6x4pvr5xbw2j"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-libc" ,rust-libc-0.2)
                       ("rust-libredox" ,rust-libredox-0.0.2)
                       ("rust-raw-window-handle" ,rust-raw-window-handle-0.5)
                       ("rust-sdl2" ,rust-sdl2-0.35)
                       ("rust-sdl2-sys" ,rust-sdl2-sys-0.35))))
    (home-page "https://gitlab.redox-os.org/redox-os/orbclient")
    (synopsis "The Orbital Client Library")
    (description "This package provides The Orbital Client Library.")
    (license license:expat)))

(define-public rust-objc2-user-notifications-0.2
  (package
    (name "rust-objc2-user-notifications")
    (version "0.2.2")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "objc2-user-notifications" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "1cscv2w3vxzaslz101ddv0z9ycrrs4ayikk4my4qd3im8bvcpkvn"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-bitflags" ,rust-bitflags-2)
                       ("rust-block2" ,rust-block2-0.5)
                       ("rust-objc2" ,rust-objc2-0.5)
                       ("rust-objc2-core-location" ,rust-objc2-core-location-0.2)
                       ("rust-objc2-foundation" ,rust-objc2-foundation-0.2))))
    (home-page "https://github.com/madsmtm/objc2")
    (synopsis "Bindings to the UserNotifications framework")
    (description
     "This package provides Bindings to the @code{UserNotifications} framework.")
    (license license:expat)))

(define-public rust-objc2-uniform-type-identifiers-0.2
  (package
    (name "rust-objc2-uniform-type-identifiers")
    (version "0.2.2")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "objc2-uniform-type-identifiers" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "1ziv4wkbxcaw015ypg0q49ycl7m14l3x56mpq2k1rznv92bmzyj4"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-block2" ,rust-block2-0.5)
                       ("rust-objc2" ,rust-objc2-0.5)
                       ("rust-objc2-foundation" ,rust-objc2-foundation-0.2))))
    (home-page "https://github.com/madsmtm/objc2")
    (synopsis "Bindings to the UniformTypeIdentifiers framework")
    (description
     "This package provides Bindings to the @code{UniformTypeIdentifiers} framework.")
    (license license:expat)))

(define-public rust-objc2-symbols-0.2
  (package
    (name "rust-objc2-symbols")
    (version "0.2.2")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "objc2-symbols" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "1p04hjkxan18g2b7h9n2n8xxsvazapv2h6mfmmdk06zc7pz4ws0a"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-objc2" ,rust-objc2-0.5)
                       ("rust-objc2-foundation" ,rust-objc2-foundation-0.2))))
    (home-page "https://github.com/madsmtm/objc2")
    (synopsis "Bindings to the Symbols framework")
    (description "This package provides Bindings to the Symbols framework.")
    (license license:expat)))

(define-public rust-objc2-link-presentation-0.2
  (package
    (name "rust-objc2-link-presentation")
    (version "0.2.2")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "objc2-link-presentation" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "160k4qh00yrx57dabn3hzas4r98kmk9bc0qsy1jvwday3irax8d1"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-block2" ,rust-block2-0.5)
                       ("rust-objc2" ,rust-objc2-0.5)
                       ("rust-objc2-app-kit" ,rust-objc2-app-kit-0.2)
                       ("rust-objc2-foundation" ,rust-objc2-foundation-0.2))))
    (home-page "https://github.com/madsmtm/objc2")
    (synopsis "Bindings to the LinkPresentation framework")
    (description
     "This package provides Bindings to the @code{LinkPresentation} framework.")
    (license license:expat)))

(define-public rust-objc2-contacts-0.2
  (package
    (name "rust-objc2-contacts")
    (version "0.2.2")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "objc2-contacts" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "12a8m927xrrxa54xhqhqnkkl1a6l07pyrpnqfk9jz09kkh755zx5"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-block2" ,rust-block2-0.5)
                       ("rust-objc2" ,rust-objc2-0.5)
                       ("rust-objc2-foundation" ,rust-objc2-foundation-0.2))))
    (home-page "https://github.com/madsmtm/objc2")
    (synopsis "Bindings to the Contacts framework")
    (description "This package provides Bindings to the Contacts framework.")
    (license license:expat)))

(define-public rust-objc2-core-location-0.2
  (package
    (name "rust-objc2-core-location")
    (version "0.2.2")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "objc2-core-location" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "10apgsrigqryvi4rcc0f6yfjflvrl83f4bi5hkr48ck89vizw300"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-block2" ,rust-block2-0.5)
                       ("rust-objc2" ,rust-objc2-0.5)
                       ("rust-objc2-contacts" ,rust-objc2-contacts-0.2)
                       ("rust-objc2-foundation" ,rust-objc2-foundation-0.2))))
    (home-page "https://github.com/madsmtm/objc2")
    (synopsis "Bindings to the CoreLocation framework")
    (description
     "This package provides Bindings to the @code{CoreLocation} framework.")
    (license license:expat)))

(define-public rust-objc2-cloud-kit-0.2
  (package
    (name "rust-objc2-cloud-kit")
    (version "0.2.2")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "objc2-cloud-kit" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "02dhjvmcq8c2bwj31jx423jygif1scs9f0lmlab0ayhw75b3ppbl"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-bitflags" ,rust-bitflags-2)
                       ("rust-block2" ,rust-block2-0.5)
                       ("rust-objc2" ,rust-objc2-0.5)
                       ("rust-objc2-core-location" ,rust-objc2-core-location-0.2)
                       ("rust-objc2-foundation" ,rust-objc2-foundation-0.2))))
    (home-page "https://github.com/madsmtm/objc2")
    (synopsis "Bindings to the CloudKit framework")
    (description
     "This package provides Bindings to the @code{CloudKit} framework.")
    (license license:expat)))

(define-public rust-objc2-ui-kit-0.2
  (package
    (name "rust-objc2-ui-kit")
    (version "0.2.2")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "objc2-ui-kit" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "0vrb5r8z658l8c19bx78qks8c5hg956544yirf8npk90idwldfxq"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-bitflags" ,rust-bitflags-2)
                       ("rust-block2" ,rust-block2-0.5)
                       ("rust-objc2" ,rust-objc2-0.5)
                       ("rust-objc2-cloud-kit" ,rust-objc2-cloud-kit-0.2)
                       ("rust-objc2-core-data" ,rust-objc2-core-data-0.2)
                       ("rust-objc2-core-image" ,rust-objc2-core-image-0.2)
                       ("rust-objc2-core-location" ,rust-objc2-core-location-0.2)
                       ("rust-objc2-foundation" ,rust-objc2-foundation-0.2)
                       ("rust-objc2-link-presentation" ,rust-objc2-link-presentation-0.2)
                       ("rust-objc2-quartz-core" ,rust-objc2-quartz-core-0.2)
                       ("rust-objc2-symbols" ,rust-objc2-symbols-0.2)
                       ("rust-objc2-uniform-type-identifiers" ,rust-objc2-uniform-type-identifiers-0.2)
                       ("rust-objc2-user-notifications" ,rust-objc2-user-notifications-0.2))))
    (home-page "https://github.com/madsmtm/objc2")
    (synopsis "Bindings to the UIKit framework")
    (description "This package provides Bindings to the UIKit framework.")
    (license license:expat)))

(define-public rust-objc2-quartz-core-0.2
  (package
    (name "rust-objc2-quartz-core")
    (version "0.2.2")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "objc2-quartz-core" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "0ynw8819c36l11rim8n0yzk0fskbzrgaqayscyqi8swhzxxywaz4"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-bitflags" ,rust-bitflags-2)
                       ("rust-block2" ,rust-block2-0.5)
                       ("rust-objc2" ,rust-objc2-0.5)
                       ("rust-objc2-foundation" ,rust-objc2-foundation-0.2)
                       ("rust-objc2-metal" ,rust-objc2-metal-0.2))))
    (home-page "https://github.com/madsmtm/objc2")
    (synopsis "Bindings to the QuartzCore/CoreAnimation framework")
    (description
     "This package provides Bindings to the @code{QuartzCore/CoreAnimation} framework.")
    (license license:expat)))

(define-public rust-objc2-metal-0.2
  (package
    (name "rust-objc2-metal")
    (version "0.2.2")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "objc2-metal" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "1mmdga66qpxrcfq3gxxhysfx3zg1hpx4z886liv3j0pnfq9bl36x"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-bitflags" ,rust-bitflags-2)
                       ("rust-block2" ,rust-block2-0.5)
                       ("rust-objc2" ,rust-objc2-0.5)
                       ("rust-objc2-foundation" ,rust-objc2-foundation-0.2))))
    (home-page "https://github.com/madsmtm/objc2")
    (synopsis "Bindings to the Metal framework")
    (description "This package provides Bindings to the Metal framework.")
    (license license:expat)))

(define-public rust-objc2-core-image-0.2
  (package
    (name "rust-objc2-core-image")
    (version "0.2.2")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "objc2-core-image" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "102csfb82zi2sbzliwsfd589ckz0gysf7y6434c9zj97lmihj9jm"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-block2" ,rust-block2-0.5)
                       ("rust-objc2" ,rust-objc2-0.5)
                       ("rust-objc2-foundation" ,rust-objc2-foundation-0.2)
                       ("rust-objc2-metal" ,rust-objc2-metal-0.2))))
    (home-page "https://github.com/madsmtm/objc2")
    (synopsis "Bindings to the CoreImage framework")
    (description
     "This package provides Bindings to the @code{CoreImage} framework.")
    (license license:expat)))

(define-public rust-objc2-foundation-0.2
  (package
    (name "rust-objc2-foundation")
    (version "0.2.2")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "objc2-foundation" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "1a6mi77jsig7950vmx9ydvsxaighzdiglk5d229k569pvajkirhf"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-bitflags" ,rust-bitflags-2)
                       ("rust-block2" ,rust-block2-0.5)
                       ("rust-dispatch" ,rust-dispatch-0.2)
                       ("rust-libc" ,rust-libc-0.2)
                       ("rust-objc2" ,rust-objc2-0.5))))
    (home-page "https://github.com/madsmtm/objc2")
    (synopsis "Bindings to the Foundation framework")
    (description "This package provides Bindings to the Foundation framework.")
    (license license:expat)))

(define-public rust-objc2-core-data-0.2
  (package
    (name "rust-objc2-core-data")
    (version "0.2.2")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "objc2-core-data" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "1vvk8zjylfjjj04dzawydmqqz5ajvdkhf22cnb07ihbiw14vyzv1"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-bitflags" ,rust-bitflags-2)
                       ("rust-block2" ,rust-block2-0.5)
                       ("rust-objc2" ,rust-objc2-0.5)
                       ("rust-objc2-foundation" ,rust-objc2-foundation-0.2))))
    (home-page "https://github.com/madsmtm/objc2")
    (synopsis "Bindings to the CoreData framework")
    (description
     "This package provides Bindings to the @code{CoreData} framework.")
    (license license:expat)))

(define-public rust-objc2-app-kit-0.2
  (package
    (name "rust-objc2-app-kit")
    (version "0.2.2")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "objc2-app-kit" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "1zqyi5l1bm26j1bgmac9783ah36m5kcrxlqp5carglnpwgcrms74"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-bitflags" ,rust-bitflags-2)
                       ("rust-block2" ,rust-block2-0.5)
                       ("rust-libc" ,rust-libc-0.2)
                       ("rust-objc2" ,rust-objc2-0.5)
                       ("rust-objc2-core-data" ,rust-objc2-core-data-0.2)
                       ("rust-objc2-core-image" ,rust-objc2-core-image-0.2)
                       ("rust-objc2-foundation" ,rust-objc2-foundation-0.2)
                       ("rust-objc2-quartz-core" ,rust-objc2-quartz-core-0.2))))
    (home-page "https://github.com/madsmtm/objc2")
    (synopsis "Bindings to the AppKit framework")
    (description
     "This package provides Bindings to the @code{AppKit} framework.")
    (license license:expat)))

(define-public rust-dpi-0.1
  (package
    (name "rust-dpi")
    (version "0.1.1")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "dpi" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "0lzz48gpgbwdrw0s8vib0589ij9jizv1vzsphm4xd9kw58lhwp7j"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-mint" ,rust-mint-0.5)
                       ("rust-serde" ,rust-serde-1))))
    (home-page "https://github.com/rust-windowing/winit")
    (synopsis "Types for handling UI scaling")
    (description "This package provides Types for handling UI scaling.")
    (license license:asl2.0)))

(define-public rust-cfg-aliases-0.2
  (package
    (name "rust-cfg-aliases")
    (version "0.2.1")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "cfg_aliases" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "092pxdc1dbgjb6qvh83gk56rkic2n2ybm4yvy76cgynmzi3zwfk1"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t))
    (home-page "https://github.com/katharostech/cfg_aliases")
    (synopsis
     "tiny utility to help save you a lot of effort with long winded `#[cfg()]` checks.")
    (description
     "This package provides a tiny utility to help save you a lot of effort with long
winded `#[cfg()]` checks.")
    (license license:expat)))

(define-public rust-calloop-0.13
  (package
    (name "rust-calloop")
    (version "0.13.0")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "calloop" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "1v5zgidnhsyml403rzr7vm99f8q6r5bxq5gxyiqkr8lcapwa57dr"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-async-task" ,rust-async-task-4)
                       ("rust-bitflags" ,rust-bitflags-2)
                       ("rust-futures-io" ,rust-futures-io-0.3)
                       ("rust-log" ,rust-log-0.4)
                       ("rust-nix" ,rust-nix-0.28)
                       ("rust-pin-utils" ,rust-pin-utils-0.1)
                       ("rust-polling" ,rust-polling-3)
                       ("rust-rustix" ,rust-rustix-0.38)
                       ("rust-slab" ,rust-slab-0.4)
                       ("rust-thiserror" ,rust-thiserror-1))))
    (home-page "https://github.com/Smithay/calloop")
    (synopsis "callback-based event loop")
    (description "This package provides a callback-based event loop.")
    (license license:expat)))

(define-public rust-objc2-proc-macros-0.1
  (package
    (name "rust-objc2-proc-macros")
    (version "0.1.3")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "objc2-proc-macros" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "1w335fj58k76z94d242xq18qkj7iw082lpy3kxnisaa5r7q4aaa6"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t))
    (home-page "https://github.com/madsmtm/objc2")
    (synopsis "Procedural macros for the objc2 project")
    (description
     "This package provides Procedural macros for the objc2 project.")
    (license license:expat)))

(define-public rust-objc2-encode-4
  (package
    (name "rust-objc2-encode")
    (version "4.0.3")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "objc2-encode" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "1y7hjg4k828zhn4fjnbidrz3vzw4llk9ldy92drj47ydjc9yg4bq"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t))
    (home-page "https://github.com/madsmtm/objc2")
    (synopsis "Objective-C type-encoding representation and parsing")
    (description
     "This package provides Objective-C type-encoding representation and parsing.")
    (license license:expat)))

(define-public rust-objc-sys-0.3
  (package
    (name "rust-objc-sys")
    (version "0.3.5")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "objc-sys" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "0423gry7s3rmz8s3pzzm1zy5mdjif75g6dbzc2lf2z0c77fipffd"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-cc" ,rust-cc-1))))
    (home-page "https://github.com/madsmtm/objc2")
    (synopsis "Raw bindings to the Objective-C runtime and ABI")
    (description
     "This package provides Raw bindings to the Objective-C runtime and ABI.")
    (license license:expat)))

(define-public rust-objc2-0.5
  (package
    (name "rust-objc2")
    (version "0.5.2")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "objc2" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "015qa2d3vh7c1j2736h5wjrznri7x5ic35vl916c22gzxva8b9s6"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-malloc-buf" ,rust-malloc-buf-1)
                       ("rust-objc-sys" ,rust-objc-sys-0.3)
                       ("rust-objc2-encode" ,rust-objc2-encode-4)
                       ("rust-objc2-proc-macros" ,rust-objc2-proc-macros-0.1))))
    (home-page "https://github.com/madsmtm/objc2")
    (synopsis "Objective-C interface and runtime bindings")
    (description
     "This package provides Objective-C interface and runtime bindings.")
    (license license:expat)))

(define-public rust-block2-0.5
  (package
    (name "rust-block2")
    (version "0.5.1")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "block2" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "0pyiha5his2grzqr3mynmq244laql2j20992i59asp0gy7mjw4rc"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-objc2" ,rust-objc2-0.5))))
    (home-page "https://github.com/madsmtm/objc2")
    (synopsis "Apple's C language extension of blocks")
    (description
     "This package provides Apple's C language extension of blocks.")
    (license license:expat)))

(define-public rust-ndk-sys-0.6
  (package
    (name "rust-ndk-sys")
    (version "0.6.0+11769913")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "ndk-sys" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "0wx8r6pji20if4xs04g73gxl98nmjrfc73z0v6w1ypv6a4qdlv7f"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-jni-sys" ,rust-jni-sys-0.3))))
    (home-page "https://github.com/rust-mobile/ndk")
    (synopsis "FFI bindings for the Android NDK")
    (description "This package provides FFI bindings for the Android NDK.")
    (license (list license:expat license:asl2.0))))

(define-public rust-ndk-0.9
  (package
    (name "rust-ndk")
    (version "0.9.0")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "ndk" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "1m32zpmi5w1pf3j47k6k5fw395dc7aj8d0mdpsv53lqkprxjxx63"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-bitflags" ,rust-bitflags-2)
                       ("rust-jni" ,rust-jni-0.21)
                       ("rust-jni-sys" ,rust-jni-sys-0.3)
                       ("rust-log" ,rust-log-0.4)
                       ("rust-ndk-sys" ,rust-ndk-sys-0.6)
                       ("rust-num-enum" ,rust-num-enum-0.7)
                       ("rust-raw-window-handle" ,rust-raw-window-handle-0.6)
                       ("rust-raw-window-handle" ,rust-raw-window-handle-0.5)
                       ("rust-raw-window-handle" ,rust-raw-window-handle-0.4)
                       ("rust-thiserror" ,rust-thiserror-1))))
    (home-page "https://github.com/rust-mobile/ndk")
    (synopsis "Safe Rust bindings to the Android NDK")
    (description
     "This package provides Safe Rust bindings to the Android NDK.")
    (license (list license:expat license:asl2.0))))

(define-public rust-android-activity-0.6
  (package
    (name "rust-android-activity")
    (version "0.6.0")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "android-activity" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "0inh88x8x2fh62jg739s9hwyvdh8i920qf0qw7bhr802j9c7hsgg"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-android-properties" ,rust-android-properties-0.2)
                       ("rust-bitflags" ,rust-bitflags-2)
                       ("rust-cc" ,rust-cc-1)
                       ("rust-cesu8" ,rust-cesu8-1)
                       ("rust-jni" ,rust-jni-0.21)
                       ("rust-jni-sys" ,rust-jni-sys-0.3)
                       ("rust-libc" ,rust-libc-0.2)
                       ("rust-log" ,rust-log-0.4)
                       ("rust-ndk" ,rust-ndk-0.9)
                       ("rust-ndk-context" ,rust-ndk-context-0.1)
                       ("rust-ndk-sys" ,rust-ndk-sys-0.6)
                       ("rust-num-enum" ,rust-num-enum-0.7)
                       ("rust-thiserror" ,rust-thiserror-1))))
    (home-page "https://github.com/rust-mobile/android-activity")
    (synopsis
     "Glue for building Rust applications on Android with NativeActivity or GameActivity")
    (description
     "This package provides Glue for building Rust applications on Android with @code{NativeActivity} or
@code{GameActivity}.")
    (license (list license:expat license:asl2.0))))

(define-public rust-x11-clipboard-0.9
  (package
    (name "rust-x11-clipboard")
    (version "0.9.2")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "x11-clipboard" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "11l27l15y8hadnq2rcyzsc6rl1g1rb906cm151p49mr2jfh8b1xr"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-libc" ,rust-libc-0.2)
                       ("rust-x11rb" ,rust-x11rb-0.13))))
    (home-page "https://github.com/quininer/x11-clipboard")
    (synopsis "x11 clipboard support for Rust")
    (description "This package provides x11 clipboard support for Rust.")
    (license license:expat)))

(define-public rust-copypasta-0.10
  (package
    (name "rust-copypasta")
    (version "0.10.1")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "copypasta" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "0n58sfbahs49ar0qivz1sqz1ixhh1ifgp5bzifjkvabwhqi59f6y"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-clipboard-win" ,rust-clipboard-win-3)
                       ("rust-objc" ,rust-objc-0.2)
                       ("rust-objc-foundation" ,rust-objc-foundation-0.1)
                       ("rust-objc-id" ,rust-objc-id-0.1)
                       ("rust-smithay-clipboard" ,rust-smithay-clipboard-0.7)
                       ("rust-x11-clipboard" ,rust-x11-clipboard-0.9))))
    (home-page "https://github.com/alacritty/copypasta")
    (synopsis
     "copypasta is a cross-platform library for getting and setting the contents of the OS-level clipboard")
    (description
     "This package provides copypasta is a cross-platform library for getting and setting the contents of
the OS-level clipboard.")
    (license (list license:expat license:asl2.0))))

(define-public rust-euclid-0.22
  (package
    (name "rust-euclid")
    (version "0.22.11")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "euclid" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "0j4yb01x9dn5hbbbigd3mwdplv4m29k5drmhmc95lj3yfi5xp75d"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-arbitrary" ,rust-arbitrary-1)
                       ("rust-bytemuck" ,rust-bytemuck-1)
                       ("rust-mint" ,rust-mint-0.5)
                       ("rust-num-traits" ,rust-num-traits-0.2)
                       ("rust-serde" ,rust-serde-1))
       #:cargo-development-inputs (("rust-serde-test" ,rust-serde-test-1))))
    (home-page "https://github.com/servo/euclid")
    (synopsis "Geometry primitives")
    (description "This package provides Geometry primitives.")
    (license (list license:expat license:asl2.0))))

(define-public rust-xkbcommon-dl-0.4
  (package
    (name "rust-xkbcommon-dl")
    (version "0.4.2")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "xkbcommon-dl" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "1iai0r3b5skd9vbr8z5b0qixiz8jblzfm778ddm8ba596a0dwffh"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-bitflags" ,rust-bitflags-2)
                       ("rust-dlib" ,rust-dlib-0.5)
                       ("rust-log" ,rust-log-0.4)
                       ("rust-once-cell" ,rust-once-cell-1)
                       ("rust-xkeysym" ,rust-xkeysym-0.2))))
    (home-page "https://github.com/rust-windowing/xkbcommon-dl")
    (synopsis "Dynamically loaded xkbcommon and xkbcommon-x11 Rust bindings")
    (description
     "This package provides Dynamically loaded xkbcommon and xkbcommon-x11 Rust bindings.")
    (license license:expat)))

(define-public rust-wayland-protocols-plasma-0.3
  (package
    (name "rust-wayland-protocols-plasma")
    (version "0.3.4")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "wayland-protocols-plasma" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "1zvy38i36z1z65fg3x3870hy19rclkgrcyjz95r52n2yhyk422la"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-bitflags" ,rust-bitflags-2)
                       ("rust-wayland-backend" ,rust-wayland-backend-0.3)
                       ("rust-wayland-client" ,rust-wayland-client-0.31)
                       ("rust-wayland-protocols" ,rust-wayland-protocols-0.32)
                       ("rust-wayland-scanner" ,rust-wayland-scanner-0.31)
                       ("rust-wayland-server" ,rust-wayland-server-0.31))))
    (home-page "https://github.com/smithay/wayland-rs")
    (synopsis "Generated API for the Plasma wayland protocol extensions")
    (description
     "This package provides Generated API for the Plasma wayland protocol extensions.")
    (license license:expat)))

(define-public rust-wayland-protocols-wlr-0.3
  (package
    (name "rust-wayland-protocols-wlr")
    (version "0.3.4")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "wayland-protocols-wlr" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "02ciz2cvcnhpg9phjwbv0zhky7m1la3gdy1dg4pwmlxis5gppn6s"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-bitflags" ,rust-bitflags-2)
                       ("rust-wayland-backend" ,rust-wayland-backend-0.3)
                       ("rust-wayland-client" ,rust-wayland-client-0.31)
                       ("rust-wayland-protocols" ,rust-wayland-protocols-0.32)
                       ("rust-wayland-scanner" ,rust-wayland-scanner-0.31)
                       ("rust-wayland-server" ,rust-wayland-server-0.31))))
    (home-page "https://github.com/smithay/wayland-rs")
    (synopsis "Generated API for the WLR wayland protocol extensions")
    (description
     "This package provides Generated API for the WLR wayland protocol extensions.")
    (license license:expat)))

(define-public rust-wayland-server-0.31
  (package
    (name "rust-wayland-server")
    (version "0.31.5")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "wayland-server" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "1dhjrfnn4vy90gjycq5vppcwq074fg89xncmwrwh9cf071qd860g"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-bitflags" ,rust-bitflags-2)
                       ("rust-downcast-rs" ,rust-downcast-rs-1)
                       ("rust-io-lifetimes" ,rust-io-lifetimes-2)
                       ("rust-log" ,rust-log-0.4)
                       ("rust-rustix" ,rust-rustix-0.38)
                       ("rust-wayland-backend" ,rust-wayland-backend-0.3)
                       ("rust-wayland-scanner" ,rust-wayland-scanner-0.31))))
    (home-page "https://github.com/smithay/wayland-rs")
    (synopsis
     "Bindings to the standard C implementation of the wayland protocol, server side")
    (description
     "This package provides Bindings to the standard C implementation of the wayland protocol, server side.")
    (license license:expat)))

(define-public rust-quick-xml-0.36
  (package
    (name "rust-quick-xml")
    (version "0.36.1")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "quick-xml" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "1g0p8h4hxz2ymiyd71mn862nrj7s0g1wwiyahhdabpzxiqp5x84n"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-arbitrary" ,rust-arbitrary-1)
                       ("rust-document-features" ,rust-document-features-0.2)
                       ("rust-encoding-rs" ,rust-encoding-rs-0.8)
                       ("rust-memchr" ,rust-memchr-2)
                       ("rust-serde" ,rust-serde-1)
                       ("rust-tokio" ,rust-tokio-1))))
    (home-page "https://github.com/tafia/quick-xml")
    (synopsis "High performance xml reader and writer")
    (description
     "This package provides High performance xml reader and writer.")
    (license license:expat)))

(define-public rust-wayland-scanner-0.31
  (package
    (name "rust-wayland-scanner")
    (version "0.31.5")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "wayland-scanner" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "1hv16shy6j32hi9i0r54pyk5pw3q7qfpkffmwchi3z75n80j0zsr"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-proc-macro2" ,rust-proc-macro2-1)
                       ("rust-quick-xml" ,rust-quick-xml-0.36)
                       ("rust-quote" ,rust-quote-1))))
    (home-page "https://github.com/smithay/wayland-rs")
    (synopsis
     "Wayland Scanner for generating rust APIs from XML wayland protocol files")
    (description
     "This package provides Wayland Scanner for generating rust APIs from XML wayland protocol files.")
    (license license:expat)))

(define-public rust-wayland-client-0.31
  (package
    (name "rust-wayland-client")
    (version "0.31.6")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "wayland-client" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "0bas1aym4ykzhz1kbsj38ijvf94nklfhq8jp43yz2pli4895vx73"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-bitflags" ,rust-bitflags-2)
                       ("rust-log" ,rust-log-0.4)
                       ("rust-rustix" ,rust-rustix-0.38)
                       ("rust-wayland-backend" ,rust-wayland-backend-0.3)
                       ("rust-wayland-scanner" ,rust-wayland-scanner-0.31))))
    (home-page "https://github.com/smithay/wayland-rs")
    (synopsis
     "Bindings to the standard C implementation of the wayland protocol, client side")
    (description
     "This package provides Bindings to the standard C implementation of the wayland protocol, client side.")
    (license license:expat)))

(define-public rust-wayland-sys-0.31
  (package
    (name "rust-wayland-sys")
    (version "0.31.5")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "wayland-sys" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "02cyl94ydazgjdjf7asm2phni8h62j4cg4pwr6sy7lwfiq6sra7g"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-dlib" ,rust-dlib-0.5)
                       ("rust-libc" ,rust-libc-0.2)
                       ("rust-log" ,rust-log-0.4)
                       ("rust-memoffset" ,rust-memoffset-0.9)
                       ("rust-once-cell" ,rust-once-cell-1)
                       ("rust-pkg-config" ,rust-pkg-config-0.3))))
    (home-page "https://github.com/smithay/wayland-rs")
    (synopsis
     "FFI bindings to the various libwayland-*.so libraries. You should only need this crate if you are working on custom wayland protocol extensions. Look at the crate wayland-client for usable bindings")
    (description
     "This package provides FFI bindings to the various libwayland-*.so libraries.  You should only need
this crate if you are working on custom wayland protocol extensions.  Look at
the crate wayland-client for usable bindings.")
    (license license:expat)))

(define-public rust-wayland-backend-0.3
  (package
    (name "rust-wayland-backend")
    (version "0.3.7")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "wayland-backend" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "1xhnh0mn4cv0wmq3zcm0iic2sbhsz4qdra6kb58x8l51sz73ar85"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-cc" ,rust-cc-1)
                       ("rust-downcast-rs" ,rust-downcast-rs-1)
                       ("rust-log" ,rust-log-0.4)
                       ("rust-raw-window-handle" ,rust-raw-window-handle-0.5)
                       ("rust-raw-window-handle" ,rust-raw-window-handle-0.6)
                       ("rust-rustix" ,rust-rustix-0.38)
                       ("rust-scoped-tls" ,rust-scoped-tls-1)
                       ("rust-smallvec" ,rust-smallvec-1)
                       ("rust-wayland-sys" ,rust-wayland-sys-0.31))))
    (home-page "https://github.com/smithay/wayland-rs")
    (synopsis "Low-level bindings to the Wayland protocol")
    (description
     "This package provides Low-level bindings to the Wayland protocol.")
    (license license:expat)))

(define-public rust-wayland-protocols-0.32
  (package
    (name "rust-wayland-protocols")
    (version "0.32.4")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "wayland-protocols" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "1q3x0n0pv87v4l6yj8yrbzkhmjz4biajcl52faw0n179gbbmamrb"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-bitflags" ,rust-bitflags-2)
                       ("rust-wayland-backend" ,rust-wayland-backend-0.3)
                       ("rust-wayland-client" ,rust-wayland-client-0.31)
                       ("rust-wayland-scanner" ,rust-wayland-scanner-0.31)
                       ("rust-wayland-server" ,rust-wayland-server-0.31))))
    (home-page "https://github.com/smithay/wayland-rs")
    (synopsis "Generated API for the officials wayland protocol extensions")
    (description
     "This package provides Generated API for the officials wayland protocol extensions.")
    (license license:expat)))

(define-public rust-calloop-wayland-source-0.3
  (package
    (name "rust-calloop-wayland-source")
    (version "0.3.0")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "calloop-wayland-source" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "086x5mq16prrcwd9k6bw9an0sp8bj9l5daz4ziz5z4snf2c6m9lm"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-calloop" ,rust-calloop-0.13)
                       ("rust-log" ,rust-log-0.4)
                       ("rust-rustix" ,rust-rustix-0.38)
                       ("rust-wayland-backend" ,rust-wayland-backend-0.3)
                       ("rust-wayland-client" ,rust-wayland-client-0.31))))
    (home-page "https://github.com/smithay/calloop-wayland-source")
    (synopsis "wayland-rs client event source for callloop")
    (description
     "This package provides a wayland-rs client event source for callloop.")
    (license license:expat)))

(define-public rust-smithay-client-toolkit-0.19
  (package
    (name "rust-smithay-client-toolkit")
    (version "0.19.2")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "smithay-client-toolkit" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "05h05hg4dn3v6br5jbdbs5nalk076a64s7fn6i01nqzby2hxwmrl"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-bitflags" ,rust-bitflags-2)
                       ("rust-bytemuck" ,rust-bytemuck-1)
                       ("rust-calloop" ,rust-calloop-0.13)
                       ("rust-calloop-wayland-source" ,rust-calloop-wayland-source-0.3)
                       ("rust-cursor-icon" ,rust-cursor-icon-1)
                       ("rust-libc" ,rust-libc-0.2)
                       ("rust-log" ,rust-log-0.4)
                       ("rust-memmap2" ,rust-memmap2-0.9)
                       ("rust-pkg-config" ,rust-pkg-config-0.3)
                       ("rust-rustix" ,rust-rustix-0.38)
                       ("rust-thiserror" ,rust-thiserror-1)
                       ("rust-wayland-backend" ,rust-wayland-backend-0.3)
                       ("rust-wayland-client" ,rust-wayland-client-0.31)
                       ("rust-wayland-csd-frame" ,rust-wayland-csd-frame-0.3)
                       ("rust-wayland-cursor" ,rust-wayland-cursor-0.31)
                       ("rust-wayland-protocols" ,rust-wayland-protocols-0.32)
                       ("rust-wayland-protocols-wlr" ,rust-wayland-protocols-wlr-0.3)
                       ("rust-wayland-scanner" ,rust-wayland-scanner-0.31)
                       ("rust-xkbcommon" ,rust-xkbcommon-0.7)
                       ("rust-xkeysym" ,rust-xkeysym-0.2))))
    (home-page "https://github.com/smithay/client-toolkit")
    (synopsis "Toolkit for making client wayland applications")
    (description
     "This package provides Toolkit for making client wayland applications.")
    (license license:expat)))

(define-public rust-yeslogic-fontconfig-sys-5
  (package
    (name "rust-yeslogic-fontconfig-sys")
    (version "5.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "yeslogic-fontconfig-sys" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "0yiwnf2gapqaprp3icvv6b1jjh5d356vpis7pybskcd8k4wv5dpz"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-cstr" ,rust-cstr-0.2)
                       ("rust-dlib" ,rust-dlib-0.5)
                       ("rust-once-cell" ,rust-once-cell-1)
                       ("rust-pkg-config" ,rust-pkg-config-0.3))))
    (home-page "https://github.com/yeslogic/fontconfig-rs")
    (synopsis "Raw bindings to Fontconfig without a vendored C library")
    (description
     "This package provides Raw bindings to Fontconfig without a vendored C library.")
    (license license:expat)))

(define-public rust-freetype-sys-0.20
  (package
    (name "rust-freetype-sys")
    (version "0.20.1")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "freetype-sys" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "0d5iiv95ap3lwy7b0hxbc8caa9ng1fg3wlwrvb7rld39jrdxqzhf"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-cc" ,rust-cc-1)
                       ("rust-libc" ,rust-libc-0.2)
                       ("rust-pkg-config" ,rust-pkg-config-0.3))))
    (home-page "https://github.com/PistonDevelopers/freetype-sys")
    (synopsis "Low level binding for FreeType font library")
    (description
     "This package provides Low level binding for @code{FreeType} font library.")
    (license license:expat)))

(define-public rust-freetype-rs-0.36
  (package
    (name "rust-freetype-rs")
    (version "0.36.0")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "freetype-rs" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "05rbdl18ks2rb0kz7giwpcv7k1hfg19hbp406l9h95m0dkixwhjl"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-bitflags" ,rust-bitflags-2)
                       ("rust-freetype-sys" ,rust-freetype-sys-0.20)
                       ("rust-libc" ,rust-libc-0.2))))
    (home-page "https://github.com/PistonDevelopers/freetype-rs")
    (synopsis "Bindings for FreeType font library")
    (description
     "This package provides Bindings for @code{FreeType} font library.")
    (license license:expat)))

(define-public rust-crossfont-0.8
  (package
    (name "rust-crossfont")
    (version "0.8.0")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "crossfont" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "1g490ap42qm1258222azy70mmd6b16dk8lza0142bjgk438jhkn4"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-cocoa" ,rust-cocoa-0.25)
                       ("rust-core-foundation" ,rust-core-foundation-0.9)
                       ("rust-core-foundation-sys" ,rust-core-foundation-sys-0.8)
                       ("rust-core-graphics" ,rust-core-graphics-0.23)
                       ("rust-core-text" ,rust-core-text-20)
                       ("rust-dwrote" ,rust-dwrote-0.11)
                       ("rust-foreign-types" ,rust-foreign-types-0.5)
                       ("rust-freetype-rs" ,rust-freetype-rs-0.36)
                       ("rust-libc" ,rust-libc-0.2)
                       ("rust-log" ,rust-log-0.4)
                       ("rust-objc" ,rust-objc-0.2)
                       ("rust-once-cell" ,rust-once-cell-1)
                       ("rust-pkg-config" ,rust-pkg-config-0.3)
                       ("rust-winapi" ,rust-winapi-0.3)
                       ("rust-yeslogic-fontconfig-sys" ,rust-yeslogic-fontconfig-sys-5))))
    (home-page "https://github.com/alacritty/crossfont.git")
    (synopsis "Cross platform native font loading and rasterization")
    (description
     "This package provides Cross platform native font loading and rasterization.")
    (license license:asl2.0)))

(define-public rust-sctk-adwaita-0.10
  (package
    (name "rust-sctk-adwaita")
    (version "0.10.1")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "sctk-adwaita" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "1v14vqp7k39jk7pgaibwc06qq9vcmi82k7zlv3qpfvq52w17y9xn"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-ab-glyph" ,rust-ab-glyph-0.2)
                       ("rust-crossfont" ,rust-crossfont-0.8)
                       ("rust-log" ,rust-log-0.4)
                       ("rust-memmap2" ,rust-memmap2-0.9)
                       ("rust-smithay-client-toolkit" ,rust-smithay-client-toolkit-0.19)
                       ("rust-tiny-skia" ,rust-tiny-skia-0.11))))
    (home-page "https://github.com/PolyMeilex/sctk-adwaita")
    (synopsis "Adwaita-like SCTK Frame")
    (description "This package provides Adwaita-like SCTK Frame.")
    (license license:expat)))

(define-public rust-orbclient-0.3
  (package
    (name "rust-orbclient")
    (version "0.3.47")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "orbclient" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "0rk144mqpv27r390bjn6dfcp2314xxfila6g3njx6x4pvr5xbw2j"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-libc" ,rust-libc-0.2)
                       ("rust-libredox" ,rust-libredox-0.0.2)
                       ("rust-raw-window-handle" ,rust-raw-window-handle-0.5)
                       ("rust-sdl2" ,rust-sdl2-0.35)
                       ("rust-sdl2-sys" ,rust-sdl2-sys-0.35))))
    (home-page "https://gitlab.redox-os.org/redox-os/orbclient")
    (synopsis "The Orbital Client Library")
    (description "This package provides The Orbital Client Library.")
    (license license:expat)))

(define-public rust-objc2-user-notifications-0.2
  (package
    (name "rust-objc2-user-notifications")
    (version "0.2.2")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "objc2-user-notifications" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "1cscv2w3vxzaslz101ddv0z9ycrrs4ayikk4my4qd3im8bvcpkvn"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-bitflags" ,rust-bitflags-2)
                       ("rust-block2" ,rust-block2-0.5)
                       ("rust-objc2" ,rust-objc2-0.5)
                       ("rust-objc2-core-location" ,rust-objc2-core-location-0.2)
                       ("rust-objc2-foundation" ,rust-objc2-foundation-0.2))))
    (home-page "https://github.com/madsmtm/objc2")
    (synopsis "Bindings to the UserNotifications framework")
    (description
     "This package provides Bindings to the @code{UserNotifications} framework.")
    (license license:expat)))

(define-public rust-objc2-uniform-type-identifiers-0.2
  (package
    (name "rust-objc2-uniform-type-identifiers")
    (version "0.2.2")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "objc2-uniform-type-identifiers" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "1ziv4wkbxcaw015ypg0q49ycl7m14l3x56mpq2k1rznv92bmzyj4"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-block2" ,rust-block2-0.5)
                       ("rust-objc2" ,rust-objc2-0.5)
                       ("rust-objc2-foundation" ,rust-objc2-foundation-0.2))))
    (home-page "https://github.com/madsmtm/objc2")
    (synopsis "Bindings to the UniformTypeIdentifiers framework")
    (description
     "This package provides Bindings to the @code{UniformTypeIdentifiers} framework.")
    (license license:expat)))

(define-public rust-objc2-symbols-0.2
  (package
    (name "rust-objc2-symbols")
    (version "0.2.2")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "objc2-symbols" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "1p04hjkxan18g2b7h9n2n8xxsvazapv2h6mfmmdk06zc7pz4ws0a"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-objc2" ,rust-objc2-0.5)
                       ("rust-objc2-foundation" ,rust-objc2-foundation-0.2))))
    (home-page "https://github.com/madsmtm/objc2")
    (synopsis "Bindings to the Symbols framework")
    (description "This package provides Bindings to the Symbols framework.")
    (license license:expat)))

(define-public rust-objc2-link-presentation-0.2
  (package
    (name "rust-objc2-link-presentation")
    (version "0.2.2")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "objc2-link-presentation" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "160k4qh00yrx57dabn3hzas4r98kmk9bc0qsy1jvwday3irax8d1"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-block2" ,rust-block2-0.5)
                       ("rust-objc2" ,rust-objc2-0.5)
                       ("rust-objc2-app-kit" ,rust-objc2-app-kit-0.2)
                       ("rust-objc2-foundation" ,rust-objc2-foundation-0.2))))
    (home-page "https://github.com/madsmtm/objc2")
    (synopsis "Bindings to the LinkPresentation framework")
    (description
     "This package provides Bindings to the @code{LinkPresentation} framework.")
    (license license:expat)))

(define-public rust-objc2-contacts-0.2
  (package
    (name "rust-objc2-contacts")
    (version "0.2.2")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "objc2-contacts" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "12a8m927xrrxa54xhqhqnkkl1a6l07pyrpnqfk9jz09kkh755zx5"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-block2" ,rust-block2-0.5)
                       ("rust-objc2" ,rust-objc2-0.5)
                       ("rust-objc2-foundation" ,rust-objc2-foundation-0.2))))
    (home-page "https://github.com/madsmtm/objc2")
    (synopsis "Bindings to the Contacts framework")
    (description "This package provides Bindings to the Contacts framework.")
    (license license:expat)))

(define-public rust-objc2-core-location-0.2
  (package
    (name "rust-objc2-core-location")
    (version "0.2.2")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "objc2-core-location" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "10apgsrigqryvi4rcc0f6yfjflvrl83f4bi5hkr48ck89vizw300"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-block2" ,rust-block2-0.5)
                       ("rust-objc2" ,rust-objc2-0.5)
                       ("rust-objc2-contacts" ,rust-objc2-contacts-0.2)
                       ("rust-objc2-foundation" ,rust-objc2-foundation-0.2))))
    (home-page "https://github.com/madsmtm/objc2")
    (synopsis "Bindings to the CoreLocation framework")
    (description
     "This package provides Bindings to the @code{CoreLocation} framework.")
    (license license:expat)))

(define-public rust-objc2-cloud-kit-0.2
  (package
    (name "rust-objc2-cloud-kit")
    (version "0.2.2")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "objc2-cloud-kit" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "02dhjvmcq8c2bwj31jx423jygif1scs9f0lmlab0ayhw75b3ppbl"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-bitflags" ,rust-bitflags-2)
                       ("rust-block2" ,rust-block2-0.5)
                       ("rust-objc2" ,rust-objc2-0.5)
                       ("rust-objc2-core-location" ,rust-objc2-core-location-0.2)
                       ("rust-objc2-foundation" ,rust-objc2-foundation-0.2))))
    (home-page "https://github.com/madsmtm/objc2")
    (synopsis "Bindings to the CloudKit framework")
    (description
     "This package provides Bindings to the @code{CloudKit} framework.")
    (license license:expat)))

(define-public rust-objc2-ui-kit-0.2
  (package
    (name "rust-objc2-ui-kit")
    (version "0.2.2")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "objc2-ui-kit" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "0vrb5r8z658l8c19bx78qks8c5hg956544yirf8npk90idwldfxq"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-bitflags" ,rust-bitflags-2)
                       ("rust-block2" ,rust-block2-0.5)
                       ("rust-objc2" ,rust-objc2-0.5)
                       ("rust-objc2-cloud-kit" ,rust-objc2-cloud-kit-0.2)
                       ("rust-objc2-core-data" ,rust-objc2-core-data-0.2)
                       ("rust-objc2-core-image" ,rust-objc2-core-image-0.2)
                       ("rust-objc2-core-location" ,rust-objc2-core-location-0.2)
                       ("rust-objc2-foundation" ,rust-objc2-foundation-0.2)
                       ("rust-objc2-link-presentation" ,rust-objc2-link-presentation-0.2)
                       ("rust-objc2-quartz-core" ,rust-objc2-quartz-core-0.2)
                       ("rust-objc2-symbols" ,rust-objc2-symbols-0.2)
                       ("rust-objc2-uniform-type-identifiers" ,rust-objc2-uniform-type-identifiers-0.2)
                       ("rust-objc2-user-notifications" ,rust-objc2-user-notifications-0.2))))
    (home-page "https://github.com/madsmtm/objc2")
    (synopsis "Bindings to the UIKit framework")
    (description "This package provides Bindings to the UIKit framework.")
    (license license:expat)))

(define-public rust-dpi-0.1
  (package
    (name "rust-dpi")
    (version "0.1.1")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "dpi" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "0lzz48gpgbwdrw0s8vib0589ij9jizv1vzsphm4xd9kw58lhwp7j"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-mint" ,rust-mint-0.5)
                       ("rust-serde" ,rust-serde-1))))
    (home-page "https://github.com/rust-windowing/winit")
    (synopsis "Types for handling UI scaling")
    (description "This package provides Types for handling UI scaling.")
    (license license:asl2.0)))

(define-public rust-calloop-0.13
  (package
    (name "rust-calloop")
    (version "0.13.0")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "calloop" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "1v5zgidnhsyml403rzr7vm99f8q6r5bxq5gxyiqkr8lcapwa57dr"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-async-task" ,rust-async-task-4)
                       ("rust-bitflags" ,rust-bitflags-2)
                       ("rust-futures-io" ,rust-futures-io-0.3)
                       ("rust-log" ,rust-log-0.4)
                       ("rust-nix" ,rust-nix-0.28)
                       ("rust-pin-utils" ,rust-pin-utils-0.1)
                       ("rust-polling" ,rust-polling-3)
                       ("rust-rustix" ,rust-rustix-0.38)
                       ("rust-slab" ,rust-slab-0.4)
                       ("rust-thiserror" ,rust-thiserror-1))))
    (home-page "https://github.com/Smithay/calloop")
    (synopsis "callback-based event loop")
    (description "This package provides a callback-based event loop.")
    (license license:expat)))

(define-public rust-ndk-sys-0.6
  (package
    (name "rust-ndk-sys")
    (version "0.6.0+11769913")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "ndk-sys" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "0wx8r6pji20if4xs04g73gxl98nmjrfc73z0v6w1ypv6a4qdlv7f"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-jni-sys" ,rust-jni-sys-0.3))))
    (home-page "https://github.com/rust-mobile/ndk")
    (synopsis "FFI bindings for the Android NDK")
    (description "This package provides FFI bindings for the Android NDK.")
    (license (list license:expat license:asl2.0))))

(define-public rust-ndk-0.9
  (package
    (name "rust-ndk")
    (version "0.9.0")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "ndk" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "1m32zpmi5w1pf3j47k6k5fw395dc7aj8d0mdpsv53lqkprxjxx63"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-bitflags" ,rust-bitflags-2)
                       ("rust-jni" ,rust-jni-0.21)
                       ("rust-jni-sys" ,rust-jni-sys-0.3)
                       ("rust-log" ,rust-log-0.4)
                       ("rust-ndk-sys" ,rust-ndk-sys-0.6)
                       ("rust-num-enum" ,rust-num-enum-0.7)
                       ("rust-raw-window-handle" ,rust-raw-window-handle-0.6)
                       ("rust-raw-window-handle" ,rust-raw-window-handle-0.5)
                       ("rust-raw-window-handle" ,rust-raw-window-handle-0.4)
                       ("rust-thiserror" ,rust-thiserror-1))))
    (home-page "https://github.com/rust-mobile/ndk")
    (synopsis "Safe Rust bindings to the Android NDK")
    (description
     "This package provides Safe Rust bindings to the Android NDK.")
    (license (list license:expat license:asl2.0))))

(define-public rust-android-activity-0.6
  (package
    (name "rust-android-activity")
    (version "0.6.0")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "android-activity" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "0inh88x8x2fh62jg739s9hwyvdh8i920qf0qw7bhr802j9c7hsgg"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-android-properties" ,rust-android-properties-0.2)
                       ("rust-bitflags" ,rust-bitflags-2)
                       ("rust-cc" ,rust-cc-1)
                       ("rust-cesu8" ,rust-cesu8-1)
                       ("rust-jni" ,rust-jni-0.21)
                       ("rust-jni-sys" ,rust-jni-sys-0.3)
                       ("rust-libc" ,rust-libc-0.2)
                       ("rust-log" ,rust-log-0.4)
                       ("rust-ndk" ,rust-ndk-0.9)
                       ("rust-ndk-context" ,rust-ndk-context-0.1)
                       ("rust-ndk-sys" ,rust-ndk-sys-0.6)
                       ("rust-num-enum" ,rust-num-enum-0.7)
                       ("rust-thiserror" ,rust-thiserror-1))))
    (home-page "https://github.com/rust-mobile/android-activity")
    (synopsis
     "Glue for building Rust applications on Android with NativeActivity or GameActivity")
    (description
     "This package provides Glue for building Rust applications on Android with @code{NativeActivity} or
@code{GameActivity}.")
    (license (list license:expat license:asl2.0))))

(define-public rust-winit-0.30
  (package
    (name "rust-winit")
    (version "0.30.5")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "winit" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "0rrczmdykbn43bkl3jvi2yg374rwpnf9h2qz855f0xqh3xmfgs8b"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-ahash" ,rust-ahash-0.8)
                       ("rust-android-activity" ,rust-android-activity-0.6)
                       ("rust-atomic-waker" ,rust-atomic-waker-1)
                       ("rust-bitflags" ,rust-bitflags-2)
                       ("rust-block2" ,rust-block2-0.5)
                       ("rust-bytemuck" ,rust-bytemuck-1)
                       ("rust-calloop" ,rust-calloop-0.13)
                       ("rust-cfg-aliases" ,rust-cfg-aliases-0.2)
                       ("rust-concurrent-queue" ,rust-concurrent-queue-2)
                       ("rust-core-foundation" ,rust-core-foundation-0.9)
                       ("rust-core-graphics" ,rust-core-graphics-0.23)
                       ("rust-cursor-icon" ,rust-cursor-icon-1)
                       ("rust-dpi" ,rust-dpi-0.1)
                       ("rust-js-sys" ,rust-js-sys-0.3)
                       ("rust-libc" ,rust-libc-0.2)
                       ("rust-memmap2" ,rust-memmap2-0.9)
                       ("rust-ndk" ,rust-ndk-0.9)
                       ("rust-objc2" ,rust-objc2-0.5)
                       ("rust-objc2-app-kit" ,rust-objc2-app-kit-0.2)
                       ("rust-objc2-foundation" ,rust-objc2-foundation-0.2)
                       ("rust-objc2-ui-kit" ,rust-objc2-ui-kit-0.2)
                       ("rust-orbclient" ,rust-orbclient-0.3)
                       ("rust-percent-encoding" ,rust-percent-encoding-2)
                       ("rust-pin-project" ,rust-pin-project-1)
                       ("rust-raw-window-handle" ,rust-raw-window-handle-0.4)
                       ("rust-raw-window-handle" ,rust-raw-window-handle-0.6)
                       ("rust-raw-window-handle" ,rust-raw-window-handle-0.5)
                       ("rust-redox-syscall" ,rust-redox-syscall-0.4)
                       ("rust-rustix" ,rust-rustix-0.38)
                       ("rust-sctk-adwaita" ,rust-sctk-adwaita-0.10)
                       ("rust-serde" ,rust-serde-1)
                       ("rust-smithay-client-toolkit" ,rust-smithay-client-toolkit-0.19)
                       ("rust-smol-str" ,rust-smol-str-0.2)
                       ("rust-tracing" ,rust-tracing-0.1)
                       ("rust-unicode-segmentation" ,rust-unicode-segmentation-1)
                       ("rust-wasm-bindgen" ,rust-wasm-bindgen-0.2)
                       ("rust-wasm-bindgen-futures" ,rust-wasm-bindgen-futures-0.4)
                       ("rust-wayland-backend" ,rust-wayland-backend-0.3)
                       ("rust-wayland-client" ,rust-wayland-client-0.31)
                       ("rust-wayland-protocols" ,rust-wayland-protocols-0.32)
                       ("rust-wayland-protocols-plasma" ,rust-wayland-protocols-plasma-0.3)
                       ("rust-web-sys" ,rust-web-sys-0.3)
                       ("rust-web-time" ,rust-web-time-1)
                       ("rust-windows-sys" ,rust-windows-sys-0.52)
                       ("rust-x11-dl" ,rust-x11-dl-2)
                       ("rust-x11rb" ,rust-x11rb-0.13)
                       ("rust-xkbcommon-dl" ,rust-xkbcommon-dl-0.4))))
    (home-page "https://github.com/rust-windowing/winit")
    (synopsis "Cross-platform window creation library")
    (description
     "This package provides Cross-platform window creation library.")
    (license license:asl2.0)))

(define-public rust-objc2-quartz-core-0.2
  (package
    (name "rust-objc2-quartz-core")
    (version "0.2.2")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "objc2-quartz-core" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "0ynw8819c36l11rim8n0yzk0fskbzrgaqayscyqi8swhzxxywaz4"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-bitflags" ,rust-bitflags-2)
                       ("rust-block2" ,rust-block2-0.5)
                       ("rust-objc2" ,rust-objc2-0.5)
                       ("rust-objc2-foundation" ,rust-objc2-foundation-0.2)
                       ("rust-objc2-metal" ,rust-objc2-metal-0.2))))
    (home-page "https://github.com/madsmtm/objc2")
    (synopsis "Bindings to the QuartzCore/CoreAnimation framework")
    (description
     "This package provides Bindings to the @code{QuartzCore/CoreAnimation} framework.")
    (license license:expat)))

(define-public rust-objc2-metal-0.2
  (package
    (name "rust-objc2-metal")
    (version "0.2.2")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "objc2-metal" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "1mmdga66qpxrcfq3gxxhysfx3zg1hpx4z886liv3j0pnfq9bl36x"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-bitflags" ,rust-bitflags-2)
                       ("rust-block2" ,rust-block2-0.5)
                       ("rust-objc2" ,rust-objc2-0.5)
                       ("rust-objc2-foundation" ,rust-objc2-foundation-0.2))))
    (home-page "https://github.com/madsmtm/objc2")
    (synopsis "Bindings to the Metal framework")
    (description "This package provides Bindings to the Metal framework.")
    (license license:expat)))

(define-public rust-objc2-core-image-0.2
  (package
    (name "rust-objc2-core-image")
    (version "0.2.2")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "objc2-core-image" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "102csfb82zi2sbzliwsfd589ckz0gysf7y6434c9zj97lmihj9jm"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-block2" ,rust-block2-0.5)
                       ("rust-objc2" ,rust-objc2-0.5)
                       ("rust-objc2-foundation" ,rust-objc2-foundation-0.2)
                       ("rust-objc2-metal" ,rust-objc2-metal-0.2))))
    (home-page "https://github.com/madsmtm/objc2")
    (synopsis "Bindings to the CoreImage framework")
    (description
     "This package provides Bindings to the @code{CoreImage} framework.")
    (license license:expat)))

(define-public rust-objc2-foundation-0.2
  (package
    (name "rust-objc2-foundation")
    (version "0.2.2")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "objc2-foundation" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "1a6mi77jsig7950vmx9ydvsxaighzdiglk5d229k569pvajkirhf"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-bitflags" ,rust-bitflags-2)
                       ("rust-block2" ,rust-block2-0.5)
                       ("rust-dispatch" ,rust-dispatch-0.2)
                       ("rust-libc" ,rust-libc-0.2)
                       ("rust-objc2" ,rust-objc2-0.5))))
    (home-page "https://github.com/madsmtm/objc2")
    (synopsis "Bindings to the Foundation framework")
    (description "This package provides Bindings to the Foundation framework.")
    (license license:expat)))

(define-public rust-objc2-core-data-0.2
  (package
    (name "rust-objc2-core-data")
    (version "0.2.2")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "objc2-core-data" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "1vvk8zjylfjjj04dzawydmqqz5ajvdkhf22cnb07ihbiw14vyzv1"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-bitflags" ,rust-bitflags-2)
                       ("rust-block2" ,rust-block2-0.5)
                       ("rust-objc2" ,rust-objc2-0.5)
                       ("rust-objc2-foundation" ,rust-objc2-foundation-0.2))))
    (home-page "https://github.com/madsmtm/objc2")
    (synopsis "Bindings to the CoreData framework")
    (description
     "This package provides Bindings to the @code{CoreData} framework.")
    (license license:expat)))

(define-public rust-block2-0.5
  (package
    (name "rust-block2")
    (version "0.5.1")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "block2" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "0pyiha5his2grzqr3mynmq244laql2j20992i59asp0gy7mjw4rc"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-objc2" ,rust-objc2-0.5))))
    (home-page "https://github.com/madsmtm/objc2")
    (synopsis "Apple's C language extension of blocks")
    (description
     "This package provides Apple's C language extension of blocks.")
    (license license:expat)))

(define-public rust-objc2-app-kit-0.2
  (package
    (name "rust-objc2-app-kit")
    (version "0.2.2")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "objc2-app-kit" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "1zqyi5l1bm26j1bgmac9783ah36m5kcrxlqp5carglnpwgcrms74"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-bitflags" ,rust-bitflags-2)
                       ("rust-block2" ,rust-block2-0.5)
                       ("rust-libc" ,rust-libc-0.2)
                       ("rust-objc2" ,rust-objc2-0.5)
                       ("rust-objc2-core-data" ,rust-objc2-core-data-0.2)
                       ("rust-objc2-core-image" ,rust-objc2-core-image-0.2)
                       ("rust-objc2-foundation" ,rust-objc2-foundation-0.2)
                       ("rust-objc2-quartz-core" ,rust-objc2-quartz-core-0.2))))
    (home-page "https://github.com/madsmtm/objc2")
    (synopsis "Bindings to the AppKit framework")
    (description
     "This package provides Bindings to the @code{AppKit} framework.")
    (license license:expat)))

(define-public rust-objc2-proc-macros-0.1
  (package
    (name "rust-objc2-proc-macros")
    (version "0.1.3")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "objc2-proc-macros" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "1w335fj58k76z94d242xq18qkj7iw082lpy3kxnisaa5r7q4aaa6"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t))
    (home-page "https://github.com/madsmtm/objc2")
    (synopsis "Procedural macros for the objc2 project")
    (description
     "This package provides Procedural macros for the objc2 project.")
    (license license:expat)))

(define-public rust-objc2-encode-4
  (package
    (name "rust-objc2-encode")
    (version "4.0.3")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "objc2-encode" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "1y7hjg4k828zhn4fjnbidrz3vzw4llk9ldy92drj47ydjc9yg4bq"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t))
    (home-page "https://github.com/madsmtm/objc2")
    (synopsis "Objective-C type-encoding representation and parsing")
    (description
     "This package provides Objective-C type-encoding representation and parsing.")
    (license license:expat)))

(define-public rust-objc-sys-0.3
  (package
    (name "rust-objc-sys")
    (version "0.3.5")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "objc-sys" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "0423gry7s3rmz8s3pzzm1zy5mdjif75g6dbzc2lf2z0c77fipffd"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-cc" ,rust-cc-1))))
    (home-page "https://github.com/madsmtm/objc2")
    (synopsis "Raw bindings to the Objective-C runtime and ABI")
    (description
     "This package provides Raw bindings to the Objective-C runtime and ABI.")
    (license license:expat)))

(define-public rust-objc2-0.5
  (package
    (name "rust-objc2")
    (version "0.5.2")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "objc2" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "015qa2d3vh7c1j2736h5wjrznri7x5ic35vl916c22gzxva8b9s6"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-malloc-buf" ,rust-malloc-buf-1)
                       ("rust-objc-sys" ,rust-objc-sys-0.3)
                       ("rust-objc2-encode" ,rust-objc2-encode-4)
                       ("rust-objc2-proc-macros" ,rust-objc2-proc-macros-0.1))))
    (home-page "https://github.com/madsmtm/objc2")
    (synopsis "Objective-C interface and runtime bindings")
    (description
     "This package provides Objective-C interface and runtime bindings.")
    (license license:expat)))

(define-public rust-glutin-wgl-sys-0.6
  (package
    (name "rust-glutin-wgl-sys")
    (version "0.6.0")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "glutin_wgl_sys" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "0b0y444rc9sf67wqayyj40wayd92rjffavs9ma0llhyrpd8ijkha"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-gl-generator" ,rust-gl-generator-0.14))))
    (home-page "https://github.com/rust-windowing/glutin")
    (synopsis "The wgl bindings for glutin")
    (description "This package provides The wgl bindings for glutin.")
    (license license:asl2.0)))

(define-public rust-glutin-glx-sys-0.6
  (package
    (name "rust-glutin-glx-sys")
    (version "0.6.0")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "glutin_glx_sys" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "0qscs9525kpdwaky5cm6smkyrrlg9sv5xdcnhzh1hvp730wjsaww"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-gl-generator" ,rust-gl-generator-0.14)
                       ("rust-x11-dl" ,rust-x11-dl-2))))
    (home-page "https://github.com/rust-windowing/glutin")
    (synopsis "The glx bindings for glutin")
    (description "This package provides The glx bindings for glutin.")
    (license license:asl2.0)))

(define-public rust-glutin-egl-sys-0.7
  (package
    (name "rust-glutin-egl-sys")
    (version "0.7.0")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "glutin_egl_sys" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "09y80579kyzkrk7smghmnyx2amddzvjah7wczgkdnl189pzrzsfa"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-gl-generator" ,rust-gl-generator-0.14)
                       ("rust-windows-sys" ,rust-windows-sys-0.52))))
    (home-page "https://github.com/rust-windowing/glutin")
    (synopsis "The egl bindings for glutin")
    (description "This package provides The egl bindings for glutin.")
    (license license:asl2.0)))

(define-public rust-glutin-0.32
  (package
    (name "rust-glutin")
    (version "0.32.0")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "glutin" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "1za26bxzf3n1bf7yyzlw6wads3s48hc4k15i43cxv0pnj0qam494"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-bitflags" ,rust-bitflags-2)
                       ("rust-cfg-aliases" ,rust-cfg-aliases-0.2)
                       ("rust-cgl" ,rust-cgl-0.3)
                       ("rust-core-foundation" ,rust-core-foundation-0.9)
                       ("rust-dispatch" ,rust-dispatch-0.2)
                       ("rust-glutin-egl-sys" ,rust-glutin-egl-sys-0.7)
                       ("rust-glutin-glx-sys" ,rust-glutin-glx-sys-0.6)
                       ("rust-glutin-wgl-sys" ,rust-glutin-wgl-sys-0.6)
                       ("rust-libloading" ,rust-libloading-0.8)
                       ("rust-objc2" ,rust-objc2-0.5)
                       ("rust-objc2-app-kit" ,rust-objc2-app-kit-0.2)
                       ("rust-objc2-foundation" ,rust-objc2-foundation-0.2)
                       ("rust-once-cell" ,rust-once-cell-1)
                       ("rust-raw-window-handle" ,rust-raw-window-handle-0.6)
                       ("rust-wayland-sys" ,rust-wayland-sys-0.31)
                       ("rust-windows-sys" ,rust-windows-sys-0.52)
                       ("rust-x11-dl" ,rust-x11-dl-2))))
    (home-page "https://github.com/rust-windowing/glutin")
    (synopsis "Cross-platform OpenGL context provider")
    (description
     "This package provides Cross-platform @code{OpenGL} context provider.")
    (license license:asl2.0)))

(define-public rust-cfg-aliases-0.2
  (package
    (name "rust-cfg-aliases")
    (version "0.2.1")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "cfg_aliases" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "092pxdc1dbgjb6qvh83gk56rkic2n2ybm4yvy76cgynmzi3zwfk1"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t))
    (home-page "https://github.com/katharostech/cfg_aliases")
    (synopsis
     "tiny utility to help save you a lot of effort with long winded `#[cfg()]` checks.")
    (description
     "This package provides a tiny utility to help save you a lot of effort with long
winded `#[cfg()]` checks.")
    (license license:expat)))

(define-public rust-glutin-winit-0.5
  (package
    (name "rust-glutin-winit")
    (version "0.5.0")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "glutin-winit" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "13vqsdsyn9ww7sg3cx05jfgbihwn388vp3yb527p5z7qfmqcmvc5"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-cfg-aliases" ,rust-cfg-aliases-0.2)
                       ("rust-glutin" ,rust-glutin-0.32)
                       ("rust-raw-window-handle" ,rust-raw-window-handle-0.6)
                       ("rust-winit" ,rust-winit-0.30))))
    (home-page "https://github.com/rust-windowing/glutin")
    (synopsis "Glutin bootstrapping helpers with winit")
    (description
     "This package provides Glutin bootstrapping helpers with winit.")
    (license license:expat)))

(define-public rust-glutin-winit-0.4
  (package
    (name "rust-glutin-winit")
    (version "0.4.2")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "glutin-winit" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "0dbppmj0m2i5df4ww565f5kg3vxmjbq5c7hqql988fzp4jxdzg0y"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-cfg-aliases" ,rust-cfg-aliases-0.1)
                       ("rust-glutin" ,rust-glutin-0.31)
                       ("rust-raw-window-handle" ,rust-raw-window-handle-0.5)
                       ("rust-winit" ,rust-winit-0.29))))
    (home-page "https://github.com/rust-windowing/glutin")
    (synopsis "Glutin bootstrapping helpers with winit")
    (description
     "This package provides Glutin bootstrapping helpers with winit.")
    (license license:expat)))



(define-public rust-zune-jpeg-0.4
  (package
    (name "rust-zune-jpeg")
    (version "0.4.13")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "zune-jpeg" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "0s07igp839yy66hs5f8g6gzvvanywgv3zxr2hq18yk8bc0c9828n"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-zune-core" ,rust-zune-core-0.4))))
    (home-page
     "https://github.com/etemesi254/zune-image/tree/dev/crates/zune-jpeg")
    (synopsis "fast, correct and safe jpeg decoder")
    (description
     "This package provides a fast, correct and safe jpeg decoder.")
    (license (list license:expat license:asl2.0 license:zlib))))

(define-public rust-zune-core-0.4
  (package
    (name "rust-zune-core")
    (version "0.4.12")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "zune-core" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "0jj1ra86klzlcj9aha9als9d1dzs7pqv3azs1j3n96822wn3lhiz"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-log" ,rust-log-0.4)
                       ("rust-serde" ,rust-serde-1))))
    (home-page "https://github.com/etemesi254/zune-image")
    (synopsis
     "Core utilities for image processing in the zune family of crates")
    (description
     "This package provides Core utilities for image processing in the zune family of crates.")
    (license (list license:expat license:asl2.0 license:zlib))))

(define-public rust-byteorder-lite-0.1
  (package
    (name "rust-byteorder-lite")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "byteorder-lite" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "15alafmz4b9az56z6x7glcbcb6a8bfgyd109qc3bvx07zx4fj7wg"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t))
    (home-page "https://github.com/image-rs/byteorder-lite")
    (synopsis
     "Library for reading/writing numbers in big-endian and little-endian")
    (description
     "This package provides Library for reading/writing numbers in big-endian and little-endian.")
    (license (list license:unlicense license:expat))))

(define-public rust-image-webp-0.1
  (package
    (name "rust-image-webp")
    (version "0.1.3")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "image-webp" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "0179iqgvh6ybbq0r5d3ms11kka8jihhpliydkksj1vz2ps6gp6pp"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-byteorder-lite" ,rust-byteorder-lite-0.1)
                       ("rust-quick-error" ,rust-quick-error-2))))
    (home-page "https://github.com/image-rs/image-webp")
    (synopsis "WebP encoding and decoding in pure Rust")
    (description
     "This package provides @code{WebP} encoding and decoding in pure Rust.")
    (license (list license:expat license:asl2.0))))

(define-public rust-weezl-0.1
  (package
    (name "rust-weezl")
    (version "0.1.8")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "weezl" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "10lhndjgs6y5djpg3b420xngcr6jkmv70q8rb1qcicbily35pa2k"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-futures" ,rust-futures-0.3))))
    (home-page "https://github.com/image-rs/lzw")
    (synopsis "Fast LZW compression and decompression")
    (description
     "This package provides Fast LZW compression and decompression.")
    (license (list license:expat license:asl2.0))))

(define-public rust-gif-0.13
  (package
    (name "rust-gif")
    (version "0.13.1")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "gif" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "1whrkvdg26gp1r7f95c6800y6ijqw5y0z8rgj6xihpi136dxdciz"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-color-quant" ,rust-color-quant-1)
                       ("rust-weezl" ,rust-weezl-0.1))))
    (home-page "https://github.com/image-rs/image-gif")
    (synopsis "GIF de- and encoder")
    (description "This package provides GIF de- and encoder.")
    (license (list license:expat license:asl2.0))))

(define-public rust-dcv-color-primitives-0.6
  (package
    (name "rust-dcv-color-primitives")
    (version "0.6.1")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "dcv-color-primitives" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "0k3384cfwhc8z9pxj0gb6dz8sjcwsamnpbrkbc570sfhzvnn5b87"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-paste" ,rust-paste-1)
                       ("rust-wasm-bindgen" ,rust-wasm-bindgen-0.2))))
    (home-page "https://github.com/aws/dcv-color-primitives")
    (synopsis "a library to perform image color model conversion")
    (description
     "This package provides a library to perform image color model conversion.")
    (license license:expat-0)))

(define-public rust-dav1d-sys-0.8
  (package
    (name "rust-dav1d-sys")
    (version "0.8.2")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "dav1d-sys" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "158fqp97ny3206sydnimc2jy1c1gcxa4llqvvkp3ii2dixg1rjvf"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-libc" ,rust-libc-0.2)
                       ("rust-system-deps" ,rust-system-deps-6))))
    (home-page "https://github.com/rust-av/dav1d-rs")
    (synopsis "FFI bindings to dav1d")
    (description "This package provides FFI bindings to dav1d.")
    (license license:expat)))

(define-public rust-av-data-0.4
  (package
    (name "rust-av-data")
    (version "0.4.2")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "av-data" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "0lk5pq6jfmfp5ihvnzqdqxympk5rk7648bcsvwhgj02xaairhnyp"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-byte-slice-cast" ,rust-byte-slice-cast-1)
                       ("rust-bytes" ,rust-bytes-1)
                       ("rust-num-derive" ,rust-num-derive-0.4)
                       ("rust-num-rational" ,rust-num-rational-0.4)
                       ("rust-num-traits" ,rust-num-traits-0.2)
                       ("rust-thiserror" ,rust-thiserror-1))))
    (home-page "https://github.com/rust-av/rust-av")
    (synopsis "Multimedia data structures")
    (description "This package provides Multimedia data structures.")
    (license license:expat)))

(define-public rust-dav1d-0.10
  (package
    (name "rust-dav1d")
    (version "0.10.3")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "dav1d" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "1qd13sm1bfbc5chjgrzk4syffkky994lkyzhqrqklqxg1fj58jqd"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-av-data" ,rust-av-data-0.4)
                       ("rust-bitflags" ,rust-bitflags-2)
                       ("rust-dav1d-sys" ,rust-dav1d-sys-0.8)
                       ("rust-static-assertions" ,rust-static-assertions-1))))
    (home-page "https://github.com/rust-av/dav1d-rs")
    (synopsis "libdav1d bindings")
    (description "This package provides libdav1d bindings.")
    (license license:expat)))

(define-public rust-indoc-2
  (package
    (name "rust-indoc")
    (version "2.0.5")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "indoc" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "1dgjk49rkmx4kjy07k4b90qb5vl89smgb5rcw02n0q0x9ligaj5j"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-development-inputs (("rust-rustversion" ,rust-rustversion-1)
                                   ("rust-trybuild" ,rust-trybuild-1)
                                   ("rust-unindent" ,rust-unindent-0.2))))
    (home-page "https://github.com/dtolnay/indoc")
    (synopsis "Indented document literals")
    (description "This package provides Indented document literals.")
    (license (list license:expat license:asl2.0))))


(define-public rust-itertools-0.13
  (package
    (name "rust-itertools")
    (version "0.13.0")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "itertools" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "11hiy3qzl643zcigknclh446qb9zlg4dpdzfkjaa9q9fqpgyfgj1"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-either" ,rust-either-1))
       #:cargo-development-inputs (("rust-criterion" ,rust-criterion-0.4)
                                   ("rust-paste" ,rust-paste-1)
                                   ("rust-permutohedron" ,rust-permutohedron-0.2)
                                   ("rust-quickcheck" ,rust-quickcheck-0.9)
                                   ("rust-rand" ,rust-rand-0.7))))
    (home-page "https://github.com/rust-itertools/itertools")
    (synopsis
     "Extra iterator adaptors, iterator methods, free functions, and macros")
    (description
     "This package provides Extra iterator adaptors, iterator methods, free functions, and macros.")
    (license (list license:expat license:asl2.0))))

(define-public rust-lazy-static-1
  (package
    (name "rust-lazy-static")
    (version "1.4.0")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "lazy_static" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "0in6ikhw8mgl33wjv6q6xfrb5b9jr16q8ygjy803fay4zcisvaz2"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-spin" ,rust-spin-0.5))
       #:cargo-development-inputs (("rust-doc-comment" ,rust-doc-comment-0.3))))
    (home-page "https://github.com/rust-lang-nursery/lazy-static.rs")
    (synopsis "macro for declaring lazily evaluated statics in Rust.")
    (description
     "This package provides a macro for declaring lazily evaluated statics in Rust.")
    (license (list license:expat license:asl2.0))))

(define-public rust-lru-0.12
  (package
    (name "rust-lru")
    (version "0.12.2")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "lru" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "08hzyc6qki67hvmsarlhw0rv74j0n2m85fk601c4152i855h4b6v"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-hashbrown" ,rust-hashbrown-0.14))
       #:cargo-development-inputs (("rust-scoped-threadpool" ,rust-scoped-threadpool-0.1)
                                   ("rust-stats-alloc" ,rust-stats-alloc-0.1))))
    (home-page "https://github.com/jeromefroe/lru-rs")
    (synopsis "LRU cache implementation")
    (description "This package provides a LRU cache implementation.")
    (license license:expat)))


(define-public rust-notify-debouncer-full-0.3
  (package
    (name "rust-notify-debouncer-full")
    (version "0.3.1")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "notify-debouncer-full" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "0m31ad5wv0lhrncn6qqk4zmryf0fl9h1j9kzrx89p2rlkjsxmxa9"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-crossbeam-channel" ,rust-crossbeam-channel-0.5)
                       ("rust-file-id" ,rust-file-id-0.2)
                       ("rust-log" ,rust-log-0.4)
                       ("rust-notify" ,rust-notify-6)
                       ("rust-parking-lot" ,rust-parking-lot-0.12)
                       ("rust-walkdir" ,rust-walkdir-2))
       #:cargo-development-inputs (("rust-deser-hjson" ,rust-deser-hjson-1)
                                   ("rust-mock-instant" ,rust-mock-instant-0.3)
                                   ("rust-pretty-assertions" ,rust-pretty-assertions-1)
                                   ("rust-rand" ,rust-rand-0.8)
                                   ("rust-rstest" ,rust-rstest-0.17)
                                   ("rust-serde" ,rust-serde-1))))
    (home-page "https://github.com/notify-rs/notify")
    (synopsis "notify event debouncer optimized for ease of use")
    (description
     "This package provides notify event debouncer optimized for ease of use.")
    (license (list license:expat license:asl2.0))))

(define-public rust-regex-1
  (package
    (name "rust-regex")
    (version "1.10.3")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "regex" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "05cvihqy0wgnh9i8a9y2n803n5azg2h0b7nlqy6rsvxhy00vwbdn"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-aho-corasick" ,rust-aho-corasick-1)
                       ("rust-memchr" ,rust-memchr-2)
                       ("rust-regex-automata" ,rust-regex-automata-0.4)
                       ("rust-regex-syntax" ,rust-regex-syntax-0.8))
       #:cargo-development-inputs (("rust-anyhow" ,rust-anyhow-1)
                                   ("rust-doc-comment" ,rust-doc-comment-0.3)
                                   ("rust-env-logger" ,rust-env-logger-0.9)
                                   ("rust-once-cell" ,rust-once-cell-1)
                                   ("rust-quickcheck" ,rust-quickcheck-1)
                                   ("rust-regex-test" ,rust-regex-test-0.1))))
    (home-page "https://github.com/rust-lang/regex")
    (synopsis
     "An implementation of regular expressions for Rust. This implementation uses
finite automata and guarantees linear time matching on all inputs.")
    (description
     "This package provides An implementation of regular expressions for Rust.  This implementation uses
finite automata and guarantees linear time matching on all inputs.")
    (license (list license:expat license:asl2.0))))

(define-public rust-num-0.4
  (package
    (name "rust-num")
    (version "0.4.1")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "num" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "1bz7kvj94pyw4zi1pm7knziljzii218sw79ap8qfb81xkvb80ldh"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-num-bigint" ,rust-num-bigint-0.4)
                       ("rust-num-complex" ,rust-num-complex-0.4)
                       ("rust-num-integer" ,rust-num-integer-0.1)
                       ("rust-num-iter" ,rust-num-iter-0.1)
                       ("rust-num-rational" ,rust-num-rational-0.4)
                       ("rust-num-traits" ,rust-num-traits-0.2))))
    (home-page "https://github.com/rust-num/num")
    (synopsis
     "collection of numeric types and traits for Rust, including bigint,
complex, rational, range iterators, generic integers, and more!")
    (description
     "This package provides a collection of numeric types and traits for Rust,
including bigint, complex, rational, range iterators, generic integers, and
more!")
    (license (list license:expat license:asl2.0))))

(define-public rust-parking-lot-0.12
  (package
    (name "rust-parking-lot")
    (version "0.12.0")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "parking_lot" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "0n7gp0cnfghglc370cxhawwfijvhj3wrjh8gdi8c06m6jcjfrxc7"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-lock-api" ,rust-lock-api-0.4)
                       ("rust-parking-lot-core" ,rust-parking-lot-core-0.9))
       #:cargo-development-inputs (("rust-bincode" ,rust-bincode-1)
                                   ("rust-rand" ,rust-rand-0.8))))
    (home-page "https://github.com/Amanieu/parking_lot")
    (synopsis
     "More compact and efficient implementations of the standard synchronization primitives")
    (description
     "This package provides More compact and efficient implementations of the standard synchronization
primitives.")
    (license (list license:asl2.0 license:expat))))
;;
;; (define-public rust-rmpv-1
;;   (package
;;     (name "rust-rmpv")
;;     (version "1.0.0")
;;     (source
;;      (origin
;;        (method url-fetch)
;;        (uri (crate-uri "rmpv" version))
;;        (file-name (string-append name "-" version ".tar.gz"))
;;        (sha256
;;         (base32 "0m4p668sh2h9rsl9n1gzdf6xhxa1g2wby9arzqw52p7rlari726y"))))
;;     (build-system cargo-build-system)
;;     (arguments
;;      `(#:cargo-inputs (("rust-num-traits" ,rust-num-traits-0.2)
;;                        ("rust-rmp" ,rust-rmp-0.8)
;;                        ("rust-serde" ,rust-serde-1)
;;                        ("rust-serde-bytes" ,rust-serde-bytes-0.11))
;;        #:cargo-development-inputs (("rust-quickcheck" ,rust-quickcheck-1))))
;;     (home-page "https://github.com/3Hren/msgpack-rust")
;;     (synopsis "Value variant for RMP")
;;     (description "This package provides Value variant for RMP.")
;;     (license license:expat)))

(define-public rust-rmpv-1
  (package
    (name "rust-rmpv")
    (version "1.0.1")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "rmpv" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "1v01az3ahglmag94d75qgdygfcgwj9bh5921rvn49d52lha043if"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-num-traits" ,rust-num-traits-0.2)
                       ("rust-rmp" ,rust-rmp-0.8)
                       ("rust-serde" ,rust-serde-1)
                       ("rust-serde-bytes" ,rust-serde-bytes-0.11))
       #:cargo-development-inputs (("rust-quickcheck" ,rust-quickcheck-1))))
    (home-page "https://github.com/3Hren/msgpack-rust")
    (synopsis "Value variant for RMP")
    (description "This package provides Value variant for RMP.")
    (license license:expat)))


(define-public rust-parity-tokio-ipc-0.9
  (package
    (name "rust-parity-tokio-ipc")
    (version "0.9.0")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "parity-tokio-ipc" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "1dj2ilhpc2dmjg6f6qmalkh30f1r5ws71yzm930lq02ynwpy70cr"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-futures" ,rust-futures-0.3)
                       ("rust-libc" ,rust-libc-0.2)
                       ("rust-log" ,rust-log-0.4)
                       ("rust-rand" ,rust-rand-0.7)
                       ("rust-tokio" ,rust-tokio-1)
                       ("rust-winapi" ,rust-winapi-0.3))))
    (home-page "https://github.com/paritytech/parity-tokio-ipc")
    (synopsis "Interprocess communication library for tokio.")
    (description
     "This package provides Interprocess communication library for tokio.")
    (license (list license:expat license:asl2.0))))

(define-public rust-rmpv-0.4
  (package
    (name "rust-rmpv")
    (version "0.4.7")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "rmpv" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "1mczy1ffpnwnimsk277zxbqc69l3h9mmnj1n3q91cplm27z0lxkw"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-num-traits" ,rust-num-traits-0.2)
                       ("rust-rmp" ,rust-rmp-0.8)
                       ("rust-serde" ,rust-serde-1)
                       ("rust-serde-bytes" ,rust-serde-bytes-0.11))))
    (home-page "https://github.com/3Hren/msgpack-rust")
    (synopsis "Value variant for RMP")
    (description "This package provides Value variant for RMP.")
    (license license:expat)))

(define-public rust-neovim-lib-0.6
  (package
    (name "rust-neovim-lib")
    (version "0.6.1")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "neovim-lib" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "11zmf0h7khbhfgyzljjxa8x6zpjalfaw9hk9nvi0q5myw6hzba6n"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-log" ,rust-log-0.4)
                       ("rust-rmp" ,rust-rmp-0.8)
                       ("rust-rmpv" ,rust-rmpv-0.4)
                       ("rust-unix-socket" ,rust-unix-socket-0.5))))
    (home-page "https://github.com/daa84/neovim-lib")
    (synopsis "msgpack-rpc neovim client")
    (description "This package provides msgpack-rpc neovim client.")
    (license license:lgpl3)))

(define-public rust-nvim-rs-0.7
  (package
    (name "rust-nvim-rs")
    (version "0.7.0")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "nvim-rs" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "1cl1m9wwq5zfrx2gvb0g9dwc28y6lychvv5c9ml6dj5hvf6xkz25"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-async-std" ,rust-async-std-1)
                       ("rust-async-trait" ,rust-async-trait-0.1)
                       ("rust-futures" ,rust-futures-0.3)
                       ("rust-log" ,rust-log-0.4)
                       ("rust-neovim-lib" ,rust-neovim-lib-0.6)
                       ("rust-parity-tokio-ipc" ,rust-parity-tokio-ipc-0.9)
                       ("rust-rmp" ,rust-rmp-0.8)
                       ("rust-rmpv" ,rust-rmpv-1)
                       ("rust-tokio" ,rust-tokio-1)
                       ("rust-tokio-util" ,rust-tokio-util-0.7)
                       ("rust-winapi" ,rust-winapi-0.3))
       #:cargo-development-inputs (("rust-criterion" ,rust-criterion-0.5)
                                   ("rust-fastrand" ,rust-fastrand-2)
                                   ("rust-tempfile" ,rust-tempfile-3))))
    (home-page "https://github.com/KillTheMule/nvim-rs")
    (synopsis "library for writing neovim rpc clients")
    (description
     "This package provides a library for writing neovim rpc clients.")
    (license license:lgpl3)))

(define-public rust-shlex-1
  (package
    (name "rust-shlex")
    (version "1.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "shlex" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "18zqcay2dgxgrd1r645mb79m4q745jcrqj659k11bwh99lx8bcj3"))))
    (build-system cargo-build-system)
    (home-page "https://github.com/comex/rust-shlex")
    (synopsis "Split a string into shell words, like Python's shlex")
    (description
     "This package provides Split a string into shell words, like Python's shlex.")
    (license (list license:expat license:asl2.0))))

(define-public rust-spin-sleep-1
  (package
    (name "rust-spin-sleep")
    (version "1.1.1")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "spin_sleep" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "0d1inb9z45yp9zyba4zac11s2fd8swjmw0n7vda46pq8vc07kyna"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-once-cell" ,rust-once-cell-1)
                       ("rust-winapi" ,rust-winapi-0.3))
       #:cargo-development-inputs (("rust-approx" ,rust-approx-0.5))))
    (home-page "https://github.com/alexheretic/spin-sleep")
    (synopsis
     "Accurate sleeping. Only use native sleep as far as it can be trusted, then spin")
    (description
     "This package provides Accurate sleeping.  Only use native sleep as far as it can be trusted, then
spin.")
    (license license:asl2.0)))

(define-public rust-strum-0.26
  (package
    (name "rust-strum")
    (version "0.26.2")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "strum" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "0aayk2m3cw9zz12qn82kqaayq43xdgdpcy9b5d1lq6d504syr32x"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-phf" ,rust-phf-0.10)
                       ("rust-strum-macros" ,rust-strum-macros-0.26))
       #:cargo-development-inputs (("rust-strum-macros" ,rust-strum-macros-0.26))))
    (home-page "https://github.com/Peternator7/strum")
    (synopsis "Helpful macros for working with enums and strings")
    (description
     "This package provides Helpful macros for working with enums and strings.")
    (license license:expat)))

(define-public rust-zeno-0.2
  (package
    (name "rust-zeno")
    (version "0.2.3")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "zeno" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "15z6l48wv4bhsrdvjxmnr3jxjmahkrz8qjg78n9gsrmrvghgh5fx"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t))
    (home-page "https://github.com/dfrg/zeno")
    (synopsis "High performance, low level 2D path rasterization")
    (description
     "This package provides High performance, low level 2D path rasterization.")
    (license (list license:expat license:asl2.0))))

(define-public rust-yazi-0.1
  (package
    (name "rust-yazi")
    (version "0.1.6")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "yazi" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "1qcbv74q8giikn160lfaij5kj0ki3ava5a6p4dg5ncqkjnn52i69"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t))
    (home-page "https://github.com/dfrg/yazi")
    (synopsis "DEFLATE/zlib compression and decompression")
    (description
     "This package provides DEFLATE/zlib compression and decompression.")
    (license (list license:expat license:asl2.0))))

(define-public rust-swash-0.1
  (package
    (name "rust-swash")
    (version "0.1.8")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "swash" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "0zz739j4z7h48cmm7r95wq2qn1l552ps36lif9r38g1m2g476z1v"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-yazi" ,rust-yazi-0.1)
                       ("rust-zeno" ,rust-zeno-0.2))))
    (home-page "https://github.com/dfrg/swash")
    (synopsis "Font introspection, complex text shaping and glyph rendering")
    (description
     "This package provides Font introspection, complex text shaping and glyph rendering.")
    (license (list license:expat license:asl2.0))))


(define-public rust-winsafe-0.0.19
  (package
    (name "rust-winsafe")
    (version "0.0.19")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "winsafe" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "0169xy9mjma8dys4m8v4x0xhw2gkbhv2v1wsbvcjl9bhnxxd2dfi"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t))
    (home-page "https://github.com/rodrigocfd/winsafe")
    (synopsis "Windows API and GUI in safe, idiomatic Rust")
    (description
     "This package provides Windows API and GUI in safe, idiomatic Rust.")
    (license license:expat)))

(define-public rust-which-6
  (package
    (name "rust-which")
    (version "6.0.1")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "which" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "1mz0vijj9qvsmfqkjqw3wf8zqn19p2x0gg7gzfnhaa1bibsy84c2"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-either" ,rust-either-1)
                       ("rust-home" ,rust-home-0.5)
                       ("rust-regex" ,rust-regex-1)
                       ("rust-rustix" ,rust-rustix-0.38)
                       ("rust-winsafe" ,rust-winsafe-0.0.19))
       #:cargo-development-inputs (("rust-tempfile" ,rust-tempfile-3))))
    (home-page "https://github.com/harryfei/which-rs.git")
    (synopsis
     "Rust equivalent of Unix command \"which\". Locate installed executable in cross platforms.")
    (description
     "This package provides a Rust equivalent of Unix command \"which\".  Locate
installed executable in cross platforms.")
    (license license:expat)))

(define-public rust-xdg-2
  (package
    (name "rust-xdg")
    (version "2.4.1")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "xdg" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "1xl81zfx5fsc5n06h77s0fvrslzhh2piabfz0c1lqk5xbkdq6i8c"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-dirs" ,rust-dirs-4))))
    (home-page "https://github.com/whitequark/rust-xdg")
    (synopsis
     "library for storing and retrieving files according to XDG Base Directory specification")
    (description
     "This package provides a library for storing and retrieving files according to
XDG Base Directory specification.")
    (license (list license:asl2.0 license:expat))))

(define-public rust-xkbcommon-dl-0.4
  (package
    (name "rust-xkbcommon-dl")
    (version "0.4.2")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "xkbcommon-dl" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "1iai0r3b5skd9vbr8z5b0qixiz8jblzfm778ddm8ba596a0dwffh"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-bitflags" ,rust-bitflags-2)
                       ("rust-dlib" ,rust-dlib-0.5)
                       ("rust-log" ,rust-log-0.4)
                       ("rust-once-cell" ,rust-once-cell-1)
                       ("rust-xkeysym" ,rust-xkeysym-0.2))))
    (home-page "https://github.com/rust-windowing/xkbcommon-dl")
    (synopsis "Dynamically loaded xkbcommon and xkbcommon-x11 Rust bindings")
    (description
     "This package provides Dynamically loaded xkbcommon and xkbcommon-x11 Rust bindings.")
    (license license:expat)))

(define-public rust-winit-0.29
  (package
    (name "rust-winit")
    (version "0.29.15")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "winit" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "1jp5j96hcr6xif7asgck522791fqmlmhd3wwy3x5fmk3babasn8d"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-ahash" ,rust-ahash-0.8)
                       ("rust-android-activity" ,rust-android-activity-0.5)
                       ("rust-atomic-waker" ,rust-atomic-waker-1)
                       ("rust-bitflags" ,rust-bitflags-2)
                       ("rust-bytemuck" ,rust-bytemuck-1)
                       ("rust-calloop" ,rust-calloop-0.12)
                       ("rust-cfg-aliases" ,rust-cfg-aliases-0.1)
                       ("rust-core-foundation" ,rust-core-foundation-0.9)
                       ("rust-core-graphics" ,rust-core-graphics-0.23)
                       ("rust-cursor-icon" ,rust-cursor-icon-1)
                       ("rust-icrate" ,rust-icrate-0.0.4)
                       ("rust-js-sys" ,rust-js-sys-0.3)
                       ("rust-libc" ,rust-libc-0.2)
                       ("rust-log" ,rust-log-0.4)
                       ("rust-memmap2" ,rust-memmap2-0.9)
                       ("rust-mint" ,rust-mint-0.5)
                       ("rust-ndk" ,rust-ndk-0.8)
                       ("rust-ndk-sys" ,rust-ndk-sys-0.5)
                       ("rust-objc2" ,rust-objc2-0.4)
                       ("rust-once-cell" ,rust-once-cell-1)
                       ("rust-orbclient" ,rust-orbclient-0.3)
                       ("rust-percent-encoding" ,rust-percent-encoding-2)
                       ("rust-raw-window-handle" ,rust-raw-window-handle-0.6)
                       ("rust-raw-window-handle" ,rust-raw-window-handle-0.5)
                       ("rust-raw-window-handle" ,rust-raw-window-handle-0.4)
                       ("rust-redox-syscall" ,rust-redox-syscall-0.3)
                       ("rust-rustix" ,rust-rustix-0.38)
                       ("rust-sctk-adwaita" ,rust-sctk-adwaita-0.8)
                       ("rust-serde" ,rust-serde-1)
                       ("rust-smithay-client-toolkit" ,rust-smithay-client-toolkit-0.18)
                       ("rust-smol-str" ,rust-smol-str-0.2)
                       ("rust-unicode-segmentation" ,rust-unicode-segmentation-1)
                       ("rust-wasm-bindgen" ,rust-wasm-bindgen-0.2)
                       ("rust-wasm-bindgen-futures" ,rust-wasm-bindgen-futures-0.4)
                       ("rust-wayland-backend" ,rust-wayland-backend-0.3)
                       ("rust-wayland-client" ,rust-wayland-client-0.31)
                       ("rust-wayland-protocols" ,rust-wayland-protocols-0.31)
                       ("rust-wayland-protocols-plasma" ,rust-wayland-protocols-plasma-0.2)
                       ("rust-web-sys" ,rust-web-sys-0.3)
                       ("rust-web-time" ,rust-web-time-0.2)
                       ("rust-windows-sys" ,rust-windows-sys-0.48)
                       ("rust-x11-dl" ,rust-x11-dl-2)
                       ("rust-x11rb" ,rust-x11rb-0.13)
                       ("rust-xkbcommon-dl" ,rust-xkbcommon-dl-0.4))
       #:cargo-development-inputs (("rust-console-log" ,rust-console-log-1)
                                   ("rust-image" ,rust-image-0.24)
                                   ("rust-simple-logger" ,rust-simple-logger-4)
                                   ("rust-softbuffer" ,rust-softbuffer-0.3)
                                   ("rust-web-sys" ,rust-web-sys-0.3))))
    (home-page "https://github.com/rust-windowing/winit")
    (synopsis "Cross-platform window creation library")
    (description
     "This package provides Cross-platform window creation library.")
    (license license:asl2.0)))


(define-public rust-approx-0.5
  (package
    (name "rust-approx")
    (version "0.5.1")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "approx" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "1ilpv3dgd58rasslss0labarq7jawxmivk17wsh8wmkdm3q15cfa"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-num-complex" ,rust-num-complex-0.4)
                       ("rust-num-traits" ,rust-num-traits-0.2))))
    (home-page "https://github.com/brendanzab/approx")
    (synopsis "Approximate floating point equality comparisons and assertions")
    (description
     "This package provides Approximate floating point equality comparisons and assertions.")
    (license license:asl2.0)))

(define-public rust-scoped-env-2
  (package
    (name "rust-scoped-env")
    (version "2.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "scoped-env" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "09n0q6v9plj1s3vmd8s3nh8wclcwirayrx0bnwdswn4hinkkhqx8"))))
    (build-system cargo-build-system)
    (home-page "https://github.com/Nokel81/scoped-env")
    (synopsis "lifetime scoped env variable setting")
    (description
     "This package provides a lifetime scoped env variable setting.")
    (license license:expat)))

(define-public rust-serial-test-3
  (package
    (name "rust-serial-test")
    (version "3.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "serial_test" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "1381b9z83a0a39sx0jrrf1q91m08s1yhjp648g5sgb1s5csdjflm"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-dashmap" ,rust-dashmap-5)
                       ("rust-document-features" ,rust-document-features-0.2)
                       ("rust-fslock" ,rust-fslock-0.2)
                       ("rust-futures" ,rust-futures-0.3)
                       ("rust-lazy-static" ,rust-lazy-static-1)
                       ("rust-log" ,rust-log-0.4)
                       ("rust-parking-lot" ,rust-parking-lot-0.12)
                       ("rust-serial-test-derive" ,rust-serial-test-derive-3))
       #:cargo-development-inputs (("rust-itertools" ,rust-itertools-0.10)
                                   ("rust-tokio" ,rust-tokio-1))))
    (home-page "https://github.com/palfrey/serial_test/")
    (synopsis "Allows for the creation of serialised Rust tests")
    (description
     "This package provides Allows for the creation of serialised Rust tests.")
    (license license:expat)))

(define-public rust-metal-0.24
  (package
    (name "rust-metal")
    (version "0.24.0")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "metal" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "0q6h0a20003db7h77xbv37dwwpc2wx6lsfvs08nli0b73xfka4fy"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-bitflags" ,rust-bitflags-1)
                       ("rust-block" ,rust-block-0.1)
                       ("rust-core-graphics-types" ,rust-core-graphics-types-0.1)
                       ("rust-dispatch" ,rust-dispatch-0.2)
                       ("rust-foreign-types" ,rust-foreign-types-0.3)
                       ("rust-log" ,rust-log-0.4)
                       ("rust-objc" ,rust-objc-0.2))))
    (home-page "https://github.com/gfx-rs/metal-rs")
    (synopsis "Rust bindings for Metal")
    (description "This package provides Rust bindings for Metal.")
    (license (list license:expat license:asl2.0))))

(define-public rust-glutin-winit-0.4
  (package
    (name "rust-glutin-winit")
    (version "0.4.2")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "glutin-winit" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "0dbppmj0m2i5df4ww565f5kg3vxmjbq5c7hqql988fzp4jxdzg0y"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-cfg-aliases" ,rust-cfg-aliases-0.1)
                       ("rust-glutin" ,rust-glutin-0.31)
                       ("rust-raw-window-handle" ,rust-raw-window-handle-0.5)
                       ("rust-winit" ,rust-winit-0.29))))
    (home-page "https://github.com/rust-windowing/glutin")
    (synopsis "Glutin bootstrapping helpers with winit")
    (description
     "This package provides Glutin bootstrapping helpers with winit.")
    (license license:expat)))

(define-public rust-windows-x86-64-msvc-0.52
  (package
    (name "rust-windows-x86-64-msvc")
    (version "0.52.6")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "windows_x86_64_msvc" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "1v7rb5cibyzx8vak29pdrk8nx9hycsjs4w0jgms08qk49jl6v7sq"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t))
    (home-page "https://github.com/microsoft/windows-rs")
    (synopsis "Import lib for Windows")
    (description "This package provides Import lib for Windows.")
    (license (list license:expat license:asl2.0))))

(define-public rust-windows-x86-64-gnullvm-0.52
  (package
    (name "rust-windows-x86-64-gnullvm")
    (version "0.52.6")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "windows_x86_64_gnullvm" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "03gda7zjx1qh8k9nnlgb7m3w3s1xkysg55hkd1wjch8pqhyv5m94"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t))
    (home-page "https://github.com/microsoft/windows-rs")
    (synopsis "Import lib for Windows")
    (description "This package provides Import lib for Windows.")
    (license (list license:expat license:asl2.0))))

(define-public rust-windows-x86-64-gnu-0.52
  (package
    (name "rust-windows-x86-64-gnu")
    (version "0.52.6")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "windows_x86_64_gnu" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "0y0sifqcb56a56mvn7xjgs8g43p33mfqkd8wj1yhrgxzma05qyhl"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t))
    (home-page "https://github.com/microsoft/windows-rs")
    (synopsis "Import lib for Windows")
    (description "This package provides Import lib for Windows.")
    (license (list license:expat license:asl2.0))))

(define-public rust-windows-i686-msvc-0.52
  (package
    (name "rust-windows-i686-msvc")
    (version "0.52.6")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "windows_i686_msvc" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "0rkcqmp4zzmfvrrrx01260q3xkpzi6fzi2x2pgdcdry50ny4h294"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t))
    (home-page "https://github.com/microsoft/windows-rs")
    (synopsis "Import lib for Windows")
    (description "This package provides Import lib for Windows.")
    (license (list license:expat license:asl2.0))))

(define-public rust-windows-i686-gnullvm-0.52
  (package
    (name "rust-windows-i686-gnullvm")
    (version "0.52.6")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "windows_i686_gnullvm" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "0rpdx1537mw6slcpqa0rm3qixmsb79nbhqy5fsm3q2q9ik9m5vhf"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t))
    (home-page "https://github.com/microsoft/windows-rs")
    (synopsis "Import lib for Windows")
    (description "This package provides Import lib for Windows.")
    (license (list license:expat license:asl2.0))))

(define-public rust-windows-i686-gnu-0.52
  (package
    (name "rust-windows-i686-gnu")
    (version "0.52.6")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "windows_i686_gnu" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "02zspglbykh1jh9pi7gn8g1f97jh1rrccni9ivmrfbl0mgamm6wf"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t))
    (home-page "https://github.com/microsoft/windows-rs")
    (synopsis "Import lib for Windows")
    (description "This package provides Import lib for Windows.")
    (license (list license:expat license:asl2.0))))

(define-public rust-windows-aarch64-msvc-0.52
  (package
    (name "rust-windows-aarch64-msvc")
    (version "0.52.6")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "windows_aarch64_msvc" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "0sfl0nysnz32yyfh773hpi49b1q700ah6y7sacmjbqjjn5xjmv09"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t))
    (home-page "https://github.com/microsoft/windows-rs")
    (synopsis "Import lib for Windows")
    (description "This package provides Import lib for Windows.")
    (license (list license:expat license:asl2.0))))

(define-public rust-windows-aarch64-gnullvm-0.52
  (package
    (name "rust-windows-aarch64-gnullvm")
    (version "0.52.6")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "windows_aarch64_gnullvm" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "1lrcq38cr2arvmz19v32qaggvj8bh1640mdm9c2fr877h0hn591j"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t))
    (home-page "https://github.com/microsoft/windows-rs")
    (synopsis "Import lib for Windows")
    (description "This package provides Import lib for Windows.")
    (license (list license:expat license:asl2.0))))

(define-public rust-windows-targets-0.52
  (package
    (name "rust-windows-targets")
    (version "0.52.6")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "windows-targets" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "0wwrx625nwlfp7k93r2rra568gad1mwd888h1jwnl0vfg5r4ywlv"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-windows-aarch64-gnullvm" ,rust-windows-aarch64-gnullvm-0.52)
                       ("rust-windows-aarch64-msvc" ,rust-windows-aarch64-msvc-0.52)
                       ("rust-windows-i686-gnu" ,rust-windows-i686-gnu-0.52)
                       ("rust-windows-i686-gnullvm" ,rust-windows-i686-gnullvm-0.52)
                       ("rust-windows-i686-msvc" ,rust-windows-i686-msvc-0.52)
                       ("rust-windows-x86-64-gnu" ,rust-windows-x86-64-gnu-0.52)
                       ("rust-windows-x86-64-gnullvm" ,rust-windows-x86-64-gnullvm-0.52)
                       ("rust-windows-x86-64-msvc" ,rust-windows-x86-64-msvc-0.52))))
    (home-page "https://github.com/microsoft/windows-rs")
    (synopsis "Import libs for Windows")
    (description "This package provides Import libs for Windows.")
    (license (list license:expat license:asl2.0))))

(define-public rust-windows-result-0.1
  (package
    (name "rust-windows-result")
    (version "0.1.2")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "windows-result" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "1y274q1v0vy21lhkgslpxpq1m08hvr1mcs2l88h1b1gcx0136f2y"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-windows-targets" ,rust-windows-targets-0.52))))
    (home-page "https://github.com/microsoft/windows-rs")
    (synopsis "Windows error handling")
    (description "This package provides Windows error handling.")
    (license (list license:expat license:asl2.0))))

(define-public rust-windows-interface-0.56
  (package
    (name "rust-windows-interface")
    (version "0.56.0")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "windows-interface" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "1k2prfxna0mw47f8gi8qhw9jfpw66bh2cqzs67sgipjfpx30b688"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-proc-macro2" ,rust-proc-macro2-1)
                       ("rust-quote" ,rust-quote-1)
                       ("rust-syn" ,rust-syn-2))))
    (home-page "https://github.com/microsoft/windows-rs")
    (synopsis "The interface macro for the windows crate")
    (description
     "This package provides The interface macro for the windows crate.")
    (license (list license:expat license:asl2.0))))

(define-public rust-windows-implement-0.56
  (package
    (name "rust-windows-implement")
    (version "0.56.0")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "windows-implement" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "16rgkvlx4syqmajfdwmkcvn6nvh126wjj8sg3jvsk5fdivskbz7n"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-proc-macro2" ,rust-proc-macro2-1)
                       ("rust-quote" ,rust-quote-1)
                       ("rust-syn" ,rust-syn-2))))
    (home-page "https://github.com/microsoft/windows-rs")
    (synopsis "The implement macro for the windows crate")
    (description
     "This package provides The implement macro for the windows crate.")
    (license (list license:expat license:asl2.0))))

(define-public rust-windows-core-0.56
  (package
    (name "rust-windows-core")
    (version "0.56.0")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "windows-core" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "19pj57bm0rzhlk0ghrccd3i5zvh0ghm52f8cmdc8d3yhs8pfb626"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-windows-implement" ,rust-windows-implement-0.56)
                       ("rust-windows-interface" ,rust-windows-interface-0.56)
                       ("rust-windows-result" ,rust-windows-result-0.1)
                       ("rust-windows-targets" ,rust-windows-targets-0.52))))
    (home-page "https://github.com/microsoft/windows-rs")
    (synopsis "Rust for Windows")
    (description "This package provides Rust for Windows.")
    (license (list license:expat license:asl2.0))))

(define-public rust-windows-0.56
  (package
    (name "rust-windows")
    (version "0.56.0")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "windows" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "0cp10nzrqgrlk91dpwxjcpzyy6imr5vxr5f898pss7nz3gq9vrhx"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-windows-core" ,rust-windows-core-0.56)
                       ("rust-windows-targets" ,rust-windows-targets-0.52))))
    (home-page "https://github.com/microsoft/windows-rs")
    (synopsis "Rust for Windows")
    (description "This package provides Rust for Windows.")
    (license (list license:expat license:asl2.0))))

(define-public rust-nasm-rs-0.3
  (package
    (name "rust-nasm-rs")
    (version "0.3.0")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "nasm-rs" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "0nfrmnfvc1rcpghi14zbrdx3x5jr7gl2pv873pn440wyshdzmz0j"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-jobserver" ,rust-jobserver-0.1))))
    (home-page "https://github.com/medek/nasm-rs")
    (synopsis "Run NASM during your Cargo build")
    (description "This package provides Run NASM during your Cargo build.")
    (license (list license:expat license:asl2.0))))

(define-public rust-mozjpeg-sys-2
  (package
    (name "rust-mozjpeg-sys")
    (version "2.2.1")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "mozjpeg-sys" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "0vy1sps2jycwwf6xcgx8zad4m7wrvzdqcwzv1n61bcg0f40irqr7"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-cc" ,rust-cc-1)
                       ("rust-dunce" ,rust-dunce-1)
                       ("rust-libc" ,rust-libc-0.2)
                       ("rust-nasm-rs" ,rust-nasm-rs-0.3))))
    (home-page "https://lib.rs/crates/mozjpeg-sys")
    (synopsis
     "FFI bindings for MozJPEG v4.

MozJPEG is automatically built and linked statically. Requires nasm and a C compiler")
    (description
     "This package provides FFI bindings for @code{MozJPEG} v4. @code{MozJPEG} is automatically built and
linked statically.  Requires nasm and a C compiler.")
    (license (list license:ijg license:zlib license:bsd-3))))

(define-public rust-jobserver-0.1
  (package
    (name "rust-jobserver")
    (version "0.1.32")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "jobserver" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "1l2k50qmj84x9mn39ivjz76alqmx72jhm12rw33zx9xnpv5xpla8"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-libc" ,rust-libc-0.2))))
    (home-page "https://github.com/rust-lang/jobserver-rs")
    (synopsis "An implementation of the GNU Make jobserver for Rust.")
    (description
     "This package provides An implementation of the GNU Make jobserver for Rust.")
    (license (list license:expat license:asl2.0))))

(define-public rust-cc-1
  (package
    (name "rust-cc")
    (version "1.1.18")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "cc" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "0xp4h2yplkcp7ab85chcavz1sashzjs9jq151bhj5jxmrlvwhamn"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-jobserver" ,rust-jobserver-0.1)
                       ("rust-libc" ,rust-libc-0.2)
                       ("rust-shlex" ,rust-shlex-1))))
    (home-page "https://github.com/rust-lang/cc-rs")
    (synopsis
     "build-time dependency for Cargo build scripts to assist in invoking the native
C compiler to compile native C code into a static archive to be linked into Rust
code.")
    (description
     "This package provides a build-time dependency for Cargo build scripts to assist
in invoking the native C compiler to compile native C code into a static archive
to be linked into Rust code.")
    (license (list license:expat license:asl2.0))))

(define-public rust-skia-bindings-0.75
  (package
    (name "rust-skia-bindings")
    (version "0.75.0")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "skia-bindings" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "0yw4cr83ysql5nxcdqmqj0d6nmb3kf26ddbf3hw9mc30fvlijvn0"))))
    (build-system cargo-build-system)
    (native-inputs
      (list python gn ninja))
    (arguments
     `(
      #:modules '((gnu packages ninja)
                  (gnu packages build-tools))

       #:cargo-inputs (("rust-bindgen" ,rust-bindgen-0.69)
                       ("rust-cc" ,rust-cc-1)
                       ("rust-flate2" ,rust-flate2-1)
                       ("rust-heck" ,rust-heck-0.5)
                       ("rust-lazy-static" ,rust-lazy-static-1)
                       ("rust-mozjpeg-sys" ,rust-mozjpeg-sys-2)
                       ("rust-regex" ,rust-regex-1)
                       ("rust-serde-json" ,rust-serde-json-1)
                       ("rust-tar" ,rust-tar-0.4)
                       ("rust-toml" ,rust-toml-0.8))
      #:phases
      (modify-phases %standard-phases
          (add-before 'build 'configure-env
            (lambda _
              (setenv "SKIA_SOURCE_DIR" "FAFAFFA")
              (setenv "SKIA_GN_COMMAND" (string-append gn "bin/gn"))
              (setenv "SKIA_NINJA_COMMAND" (string-append ninja "bin/ninja")))))))
    (home-page
     "https://github.com/rust-skia/rust-skia/tree/master/skia-bindings")
    (synopsis "Skia Bindings for Rust")
    (description "This package provides Skia Bindings for Rust.")
    (license license:expat)))

(define-public rust-skia-safe-0.75
  (package
    (name "rust-skia-safe")
    (version "0.75.0")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "skia-safe" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "0k2f7841fgzjih54wcd4dw0h9b9snlh7fhlrbic1nir2jlv6yvmd"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-base64" ,rust-base64-0.22)
                       ("rust-bitflags" ,rust-bitflags-2)
                       ("rust-lazy-static" ,rust-lazy-static-1)
                       ("rust-skia-bindings" ,rust-skia-bindings-0.75)
                       ("rust-ureq" ,rust-ureq-2)
                       ("rust-windows" ,rust-windows-0.56))
       #:cargo-development-inputs (("rust-anyhow" ,rust-anyhow-1)
                                   ("rust-cocoa" ,rust-cocoa-0.25)
                                   ("rust-core-graphics-types" ,rust-core-graphics-types-0.1)
                                   ("rust-foreign-types-shared" ,rust-foreign-types-shared-0.1)
                                   ("rust-gl" ,rust-gl-0.14)
                                   ("rust-glutin" ,rust-glutin-0.31)
                                   ("rust-glutin-winit" ,rust-glutin-winit-0.4)
                                   ("rust-metal" ,rust-metal-0.24)
                                   ("rust-objc" ,rust-objc-0.2)
                                   ("rust-raw-window-handle" ,rust-raw-window-handle-0.5)
                                   ("rust-raw-window-handle" ,rust-raw-window-handle-0.6)
                                   ("rust-serial-test" ,rust-serial-test-3)
                                   ("rust-static-assertions" ,rust-static-assertions-1)
                                   ("rust-windows" ,rust-windows-0.56)
                                   ("rust-winit" ,rust-winit-0.29)
                                   ("rust-winit" ,rust-winit-0.29))))
    (home-page "https://github.com/rust-skia/rust-skia")
    (synopsis "Safe Skia Bindings for Rust")
    (description "This package provides Safe Skia Bindings for Rust.")
    (license license:expat)))

(define-public rust-windows-strings-0.1
  (package
    (name "rust-windows-strings")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "windows-strings" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "042dxvi3133f7dyi2pgcvknwkikk47k8bddwxbq5s0l6qhjv3nac"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-windows-result" ,rust-windows-result-0.2)
                       ("rust-windows-targets" ,rust-windows-targets-0.52))))
    (home-page "https://github.com/microsoft/windows-rs")
    (synopsis "Rust for Windows")
    (description "This package provides Rust for Windows.")
    (license (list license:expat license:asl2.0))))

(define-public rust-windows-x86-64-msvc-0.52
  (package
    (name "rust-windows-x86-64-msvc")
    (version "0.52.6")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "windows_x86_64_msvc" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "1v7rb5cibyzx8vak29pdrk8nx9hycsjs4w0jgms08qk49jl6v7sq"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t))
    (home-page "https://github.com/microsoft/windows-rs")
    (synopsis "Import lib for Windows")
    (description "This package provides Import lib for Windows.")
    (license (list license:expat license:asl2.0))))

(define-public rust-windows-x86-64-gnullvm-0.52
  (package
    (name "rust-windows-x86-64-gnullvm")
    (version "0.52.6")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "windows_x86_64_gnullvm" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "03gda7zjx1qh8k9nnlgb7m3w3s1xkysg55hkd1wjch8pqhyv5m94"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t))
    (home-page "https://github.com/microsoft/windows-rs")
    (synopsis "Import lib for Windows")
    (description "This package provides Import lib for Windows.")
    (license (list license:expat license:asl2.0))))

(define-public rust-windows-x86-64-gnu-0.52
  (package
    (name "rust-windows-x86-64-gnu")
    (version "0.52.6")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "windows_x86_64_gnu" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "0y0sifqcb56a56mvn7xjgs8g43p33mfqkd8wj1yhrgxzma05qyhl"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t))
    (home-page "https://github.com/microsoft/windows-rs")
    (synopsis "Import lib for Windows")
    (description "This package provides Import lib for Windows.")
    (license (list license:expat license:asl2.0))))

(define-public rust-windows-i686-msvc-0.52
  (package
    (name "rust-windows-i686-msvc")
    (version "0.52.6")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "windows_i686_msvc" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "0rkcqmp4zzmfvrrrx01260q3xkpzi6fzi2x2pgdcdry50ny4h294"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t))
    (home-page "https://github.com/microsoft/windows-rs")
    (synopsis "Import lib for Windows")
    (description "This package provides Import lib for Windows.")
    (license (list license:expat license:asl2.0))))

(define-public rust-windows-i686-gnullvm-0.52
  (package
    (name "rust-windows-i686-gnullvm")
    (version "0.52.6")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "windows_i686_gnullvm" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "0rpdx1537mw6slcpqa0rm3qixmsb79nbhqy5fsm3q2q9ik9m5vhf"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t))
    (home-page "https://github.com/microsoft/windows-rs")
    (synopsis "Import lib for Windows")
    (description "This package provides Import lib for Windows.")
    (license (list license:expat license:asl2.0))))

(define-public rust-windows-i686-gnu-0.52
  (package
    (name "rust-windows-i686-gnu")
    (version "0.52.6")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "windows_i686_gnu" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "02zspglbykh1jh9pi7gn8g1f97jh1rrccni9ivmrfbl0mgamm6wf"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t))
    (home-page "https://github.com/microsoft/windows-rs")
    (synopsis "Import lib for Windows")
    (description "This package provides Import lib for Windows.")
    (license (list license:expat license:asl2.0))))

(define-public rust-windows-aarch64-msvc-0.52
  (package
    (name "rust-windows-aarch64-msvc")
    (version "0.52.6")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "windows_aarch64_msvc" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "0sfl0nysnz32yyfh773hpi49b1q700ah6y7sacmjbqjjn5xjmv09"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t))
    (home-page "https://github.com/microsoft/windows-rs")
    (synopsis "Import lib for Windows")
    (description "This package provides Import lib for Windows.")
    (license (list license:expat license:asl2.0))))

(define-public rust-windows-aarch64-gnullvm-0.52
  (package
    (name "rust-windows-aarch64-gnullvm")
    (version "0.52.6")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "windows_aarch64_gnullvm" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "1lrcq38cr2arvmz19v32qaggvj8bh1640mdm9c2fr877h0hn591j"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t))
    (home-page "https://github.com/microsoft/windows-rs")
    (synopsis "Import lib for Windows")
    (description "This package provides Import lib for Windows.")
    (license (list license:expat license:asl2.0))))

(define-public rust-windows-targets-0.52
  (package
    (name "rust-windows-targets")
    (version "0.52.6")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "windows-targets" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "0wwrx625nwlfp7k93r2rra568gad1mwd888h1jwnl0vfg5r4ywlv"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-windows-aarch64-gnullvm" ,rust-windows-aarch64-gnullvm-0.52)
                       ("rust-windows-aarch64-msvc" ,rust-windows-aarch64-msvc-0.52)
                       ("rust-windows-i686-gnu" ,rust-windows-i686-gnu-0.52)
                       ("rust-windows-i686-gnullvm" ,rust-windows-i686-gnullvm-0.52)
                       ("rust-windows-i686-msvc" ,rust-windows-i686-msvc-0.52)
                       ("rust-windows-x86-64-gnu" ,rust-windows-x86-64-gnu-0.52)
                       ("rust-windows-x86-64-gnullvm" ,rust-windows-x86-64-gnullvm-0.52)
                       ("rust-windows-x86-64-msvc" ,rust-windows-x86-64-msvc-0.52))))
    (home-page "https://github.com/microsoft/windows-rs")
    (synopsis "Import libs for Windows")
    (description "This package provides Import libs for Windows.")
    (license (list license:expat license:asl2.0))))

(define-public rust-windows-result-0.2
  (package
    (name "rust-windows-result")
    (version "0.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "windows-result" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "03mf2z1xcy2slhhsm15z24p76qxgm2m74xdjp8bihyag47c4640x"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-windows-targets" ,rust-windows-targets-0.52))))
    (home-page "https://github.com/microsoft/windows-rs")
    (synopsis "Windows error handling")
    (description "This package provides Windows error handling.")
    (license (list license:expat license:asl2.0))))

(define-public rust-windows-registry-0.2
  (package
    (name "rust-windows-registry")
    (version "0.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "windows-registry" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "1c04923fq0rbvl3z0h67xr6rh2fgwkizhclhqv0j79i0nwdh0074"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-windows-result" ,rust-windows-result-0.2)
                       ("rust-windows-strings" ,rust-windows-strings-0.1)
                       ("rust-windows-targets" ,rust-windows-targets-0.52))))
    (home-page "https://github.com/microsoft/windows-rs")
    (synopsis "Windows registry")
    (description "This package provides Windows registry.")
    (license (list license:expat license:asl2.0))))

(define-public rust-typed-path-0.7
  (package
    (name "rust-typed-path")
    (version "0.7.1")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "typed-path" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "02jhvk9r4sy50wmzamw5n86m1zc0qablz4zqyr3pcs1cgich9136"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t))
    (home-page "https://github.com/chipsenkbeil/typed-path")
    (synopsis
     "Provides typed variants of Path and PathBuf for Unix and Windows")
    (description
     "This package provides typed variants of Path and @code{PathBuf} for Unix and
Windows.")
    (license (list license:expat license:asl2.0))))

(define-public rust-wslpath-rs-0.1
  (package
    (name "rust-wslpath-rs")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "wslpath-rs" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "1knsjwd4scwmgd5x6gffmrnfm10d7ng350028n0kilmgkjb47y7f"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-typed-path" ,rust-typed-path-0.7))))
    (home-page "https://github.com/Holzhaus/wslpath-rs")
    (synopsis "Pure Rust implementation of wslpath")
    (description "This package provides Pure Rust implementation of wslpath.")
    (license license:mpl2.0)))

(define-public rust-winres-0.1
  (package
    (name "rust-winres")
    (version "0.1.12")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "winres" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "0v2gvqnd8iwwvb6fs69nv0mmk1z96430527n0qlfbsarxxhv53dn"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-toml" ,rust-toml-0.5))
       #:cargo-development-inputs (("rust-winapi" ,rust-winapi-0.3))))
    (home-page "https://github.com/mxre/winres")
    (synopsis "Create and set windows icons and metadata for executables")
    (description
     "This package provides Create and set windows icons and metadata for executables.")
    (license license:expat)))

(define-public neovide
  (package
    (name "neovide")
    (version "0.13.3")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/neovide/neovide")
               (commit version)))
        (file-name (git-file-name name version))
        (sha256
          (base32 "0bgxpf4jwbsxw0h8bi3p4856w5ll8ii9ba5pl54g22yprg20jpdv"))))
    (build-system cargo-build-system)
    (inputs (list python rust-flexi-logger-0.28))
    (arguments
      `(#:install-source? #f
        #:cargo-development-inputs
        (
         ("rust-approx" ,rust-approx-0.5)
         ; ("rust-flexi-logger" ,rust-flexi-logger-0.28)
         ("rust-scoped-env" ,rust-scoped-env-2)
         ("rust-serial-test" ,rust-serial-test-3)
         )
        #:cargo-inputs
        (("rust-anyhow" ,rust-anyhow-1)
         ("rust-async-trait" ,rust-async-trait-0.1)
         ("rust-clap" ,rust-clap-4)
         ("rust-csscolorparser" ,rust-csscolorparser-0.6)
         ("rust-convert-case" ,rust-convert-case-0.6)
         ("rust-copypasta" ,rust-copypasta-0.10)
         ("rust-derive-new" ,rust-derive-new-0.6)
         ("rust-dirs" ,rust-dirs-5)
         ("rust-env-logger" ,rust-env-logger-0.10) ; flexi_logger
         ("rust-euclid" ,rust-euclid-0.22)
         ("rust-flexi-logger" ,rust-flexi-logger-0.28)
         ("rust-futures" ,rust-futures-0.3)
         ("rust-gl" ,rust-gl-0.14)
         ("rust-glob" ,rust-glob-0.3)
         ("rust-glutin" ,rust-glutin-0.31)
         ("rust-glutin-winit" ,rust-glutin-winit-0.4)
         ("rust-hyper" ,rust-hyper-0.14)
         ("rust-image" ,rust-image-0.25)
         ("rust-indoc" ,rust-indoc-2)
         ("rust-itertools" ,rust-itertools-0.13)
         ("rust-lazy-static" ,rust-lazy-static-1)
         ("rust-log" ,rust-log-0.4)
         ("rust-lru" ,rust-lru-0.12)
         ("rust-notify-debouncer-full" ,rust-notify-debouncer-full-0.3)
         ("rust-num" ,rust-num-0.4)
         ("rust-nvim-rs" ,rust-nvim-rs-0.7)
         ("rust-regex" ,rust-regex-1)
         ("rust-rmpv" ,rust-rmpv-1)
         ("rust-parking-lot", rust-parking-lot-0.12)
         ("rust-serde" ,rust-serde-1)
         ("rust-serde-json" ,rust-serde-json-1)
         ("rust-shlex" ,rust-shlex-1)
         ("rust-skia-bindings" ,rust-skia-bindings-0.75)
         ("rust-skia-safe" ,rust-skia-safe-0.75)
         ("rust-spin-sleep" ,rust-spin-sleep-1)
         ("rust-strum" ,rust-strum-0.26)
         ("rust-swash" ,rust-swash-0.1)
         ("rust-thiserror" ,rust-thiserror-1)
         ("rust-tokio" ,rust-tokio-1)
         ("rust-toml" ,rust-toml-0.8)
         ("rust-unicode-segmentation" ,rust-unicode-segmentation-1)
         ("rust-which" ,rust-which-6)
         ("rust-windows-registry" ,rust-windows-registry-0.2)
         ("rust-winres" ,rust-winres-0.1)
         ("rust-wslpath-rs" ,rust-wslpath-rs-0.1)
         ("rust-winit" ,rust-winit-0.29)
         ("rust-xdg" ,rust-xdg-2)
         )
        ))
    (home-page "https://github.com/neovide/neovide")
    (synopsis "No Nonsense Neovim Client in Rust")
    (description
      "A simple graphical user interface for Neovim (an aggressively refactored
      and updated Vim editor). Where possible there are some graphical
    improvements, but functionally it should act like the terminal UI.")
    (license license:expat)))



