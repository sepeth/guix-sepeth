(define-module (sepeth packages binary-utils)
  #:use-module (guix build-system gnu)
  #:use-module ((guix licenses) #:prefix license:)
  #:use-module (guix download)
  #:use-module (guix packages)
  #:use-module (gnu packages gdb)
  #:use-module (gnu packages autotools)
  #:use-module (gnu packages texinfo))

(define-public bbe
  (package
    (name "bbe")
    (version "0.2.2")
    (source
     (origin
       (method url-fetch)
       (uri
        (string-append
          "https://sourceforge.net/projects/bbe-/files/"
          name "/" name "-" version ".tar.gz")
                       )
       ; https://unlimited.dl.sourceforge.net/project/bbe-/bbe/0.2.2/bbe-0.2.2.tar.gz?viasf=1
       (sha256
        (base32 "1nyxdqi4425sffjrylh7gl57lrssyk4018afb7mvrnd6fmbszbms"))
       ))
    (build-system gnu-build-system)
    (native-inputs
     (list ))
    (inputs
     (list ))
    (propagated-inputs
     (list ))
    (synopsis "A sed-like editor for binary files")
    (description "bbe is a sed-like editor for binary files. Instead of
reading input in lines as sed, bbe reads arbitrary blocks from an input
stream and performs byte-related transformations on found blocks.")
    (home-page "https://sourceforge.net/projects/bbe-/")
    (license license:gpl2+)))
