(provide 'setup-faces-and-ui)

;; you won't need any of the bar thingies
;; turn it off to save screen estate
(if (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))
(if (fboundp 'tool-bar-mode) (tool-bar-mode -1))
(if (fboundp 'menu-bar-mode) (menu-bar-mode -1))

;;(load-theme 'darktooth t)
;(load-theme 'darktooth t)
;;(global-linum-mode)

;; svg-modeline-theming
;; (smt/enable)
;; (smt/set-theme 'black-crystal)
;; (set-face-attribute 'mode-line nil :box nil)
;; (set-face-attribute 'mode-line-inactive nil :box nil)

;;(require 'ocodo-minimal-light-smt)
;;(require 'ocodo-terracotta-smt)
(require 'ocodo-slim-svg-mode-line)

(setq scroll-margin 0
      scroll-conservatively 100000
      scroll-preserve-screen-position 1
      ring-bell-function 'ignore)

;; more useful frame title, that show either a file or a
;; buffer name (if the buffer isn't visiting a file)
;; taken from prelude-ui.el
(setq frame-title-format
      '("" invocation-name " - " (:eval (if (buffer-file-name)
                                            (abbreviate-file-name (buffer-file-name))
                                          "%b"))))

(add-hook 'shell-mode-hook 'ansi-color-for-comint-mode-on)
(add-to-list 'comint-output-filter-functions 'ansi-color-process-output)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; PACKAGE: highlight-numbers         ;;
;;                                    ;;
;; GROUP: Faces -> Number Font Lock   ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(add-hook 'prog-mode-hook 'highlight-numbers-mode)

(require 'highlight-symbol)

(highlight-symbol-nav-mode)

(add-hook 'prog-mode-hook (lambda () (highlight-symbol-mode)))
(add-hook 'org-mode-hook (lambda () (highlight-symbol-mode)))

(setq highlight-symbol-idle-delay 0.2
      highlight-symbol-on-navigation-p t)

(global-set-key [(control shift mouse-1)]
                (lambda (event)
                  (interactive "e")
                  (goto-char (posn-point (event-start event)))
                  (highlight-symbol-at-point)))

(global-set-key (kbd "M-n") 'highlight-symbol-next)
(global-set-key (kbd "M-p") 'highlight-symbol-prev)


;; set default window size
(defun set-frame-size-according-to-resolution ()
  (interactive)
  (if window-system
      (progn
	(add-to-list 'default-frame-alist (cons 'width 120))
	(add-to-list 'default-frame-alist
		     (cons 'height (/ (- (x-display-pixel-height) 200) (frame-char-height)))))))

(set-frame-size-according-to-resolution)

