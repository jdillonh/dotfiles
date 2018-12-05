(add-to-list 'load-path "~/.emacs.d/el-get/el-get")

(unless (require 'el-get nil 'noerror)
  (with-current-buffer
      (url-retrieve-synchronously
       "https://raw.githubusercontent.com/dimitri/el-get/master/el-get-install.el")
    (goto-char (point-max))

    (eval-print-last-sexp)))

(add-to-list 'el-get-recipe-path "~/.emacs.d/el-get-user/recipes")
(el-get 'sync)




;; EVIL MODE
(add-to-list 'load-path "~/.emacs.d/evil")
(require 'evil)
(evil-mode 1)

;; PACKAGE MANAGER(S)
(require 'package)

(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)



;; AESTHETICS
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["#242424" "#e5786d" "#95e454" "#cae682" "#8ac6f2" "#333366" "#ccaa8f" "#f6f3e8"])
 '(company-quickhelp-color-background "#4F4F4F")
 '(company-quickhelp-color-foreground "#DCDCCC")
 '(custom-enabled-themes (quote (gruvbox-dark-hard)))
 '(custom-safe-themes
   (quote
    ("1f82d77255651c959ef7e1d41d59dd63e2e175cf054b89159679f2f70f9c1f4a" "595617a3c537447aa7e76ce05c8d43146a995296ea083211225e7efc069c598f" "08ef1356470a9d3bf363ffab0705d90f8a492796e9db489936de4bde6a4fdb19" "ec5f697561eaf87b1d3b087dd28e61a2fc9860e4c862ea8e6b0b77bd4967d0ba" "e2fd81495089dc09d14a88f29dfdff7645f213e2c03650ac2dd275de52a513de" default)))
 '(fancy-splash-image nil)
 '(fci-rule-color "#383838")
 '(nrepl-message-colors
   (quote
    ("#CC9393" "#DFAF8F" "#F0DFAF" "#7F9F7F" "#BFEBBF" "#93E0E3" "#94BFF3" "#DC8CC3")))
 '(package-selected-packages
   (quote
    (fountain-mode use-package treemacs-evil ## treemacs markdown-mode spaceline srcery-theme org-bullets writeroom-mode zerodark-theme exec-path-from-shell gruvbox-theme rainbow-delimiters)))
 '(scroll-bar-mode nil)
 '(show-paren-mode t)
 '(vc-annotate-background "#2B2B2B")
 '(vc-annotate-color-map
   (quote
    ((20 . "#BC8383")
     (40 . "#CC9393")
     (60 . "#DFAF8F")
     (80 . "#D0BF8F")
     (100 . "#E0CF9F")
     (120 . "#F0DFAF")
     (140 . "#5F7F5F")
     (160 . "#7F9F7F")
     (180 . "#8FB28F")
     (200 . "#9FC59F")
     (220 . "#AFD8AF")
     (240 . "#BFEBBF")
     (260 . "#93E0E3")
     (280 . "#6CA0A3")
     (300 . "#7CB8BB")
     (320 . "#8CD0D3")
     (340 . "#94BFF3")
     (360 . "#DC8CC3"))))
 '(vc-annotate-very-old-color "#DC8CC3"))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(set-face-attribute 'default nil
                    :family "Meslo"
                    :height 140
                    :weight 'normal
                    :width 'normal)

;(set-default-font "Liberation Mono for Powerline")
(set-default-font "Meslo LG L DZ for Powerline")

(setq-default left-fringe-width  0)

; load erodark theme, throwing an error about some package so ignore it
;(ignore-errors  (load-theme 'zerodark t))
;(ignore-errors (zerodark-setup-modeline-format))

(ignore-errors  (load-theme 'srcery t))
;this modeline package looks a lil funny, cool still tho
;(spaceline-spacemacs-theme)
(defalias 'writem 'writeroom-mode)

;; org bullets automagically

(require 'org-bullets)
(add-hook 'org-mode-hook 'org-bullets-mode)

(visual-line-mode)

;; Icons
(require 'all-the-icons)
; Put icons in treemacs
(setq neo-theme 'icons)



;rainbow-delimiters
(add-hook 'prog-mode-hook #'rainbow-delimiters-mode)
(add-hook 'prog-mode-hook #'display-line-numbers-mode)


; set shell path to what it is in zhs
(when (memq window-system '(mac ns x))
  (exec-path-from-shell-initialize))


;; SHORTCUTS and aliases and stuff...
; source feels more like bash
(defalias 'source 'load-file)

      
(defun fresh ()
  (interactive)
  (load-file ".emacs"))


; y or p is enough
(defalias 'yes-or-no-p 'y-or-n-p) 

;make tab work
(setq tab-always-indent 'complete)


    







