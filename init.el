(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/") t)
(package-initialize)

;;(mapc 'load (directory-files "~/.emacs.d/custom" t ".*\.el"))

(add-to-list 'load-path "~/.emacs.d/custom/")

;;(require 'setup-applications)
(require 'setup-communication)
(require 'setup-convenience)
(require 'setup-data)
;;(require 'setup-development)
(require 'setup-editing)
(require 'setup-environment)
(require 'setup-external)
(require 'setup-faces-and-ui)
(require 'setup-files)
;(require 'setup-help)
(require 'setup-programming)
;(require 'setup-text)
;(require 'setup-local)


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes (quote (darktooth)))
 '(custom-safe-themes
   (quote
    ("0516c9d3bf66bd7b3f31fb1432a15a1b4e106897797114313208ecfb53096df7" "e80932ca56b0f109f8545576531d3fc79487ca35a9a9693b62bf30d6d08c9aaf" "3fd36152f5be7e701856c3d817356f78a4b1f4aefbbe8bbdd1ecbfa557b50006" default)))
 '(global-mark-ring-max 5000)
 '(inhibit-startup-screen t)
 '(shell-pop-shell-type
   (quote
    ("ansi-term" "*ansi-term*"
     (lambda nil
       (ansi-term shell-pop-term-shell)))))
 '(shell-pop-term-shell "/bin/bash"))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

