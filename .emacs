
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
 '(custom-enabled-themes (quote (gruvbox-dark-hard)))
 '(custom-safe-themes
   (quote
    ("e2fd81495089dc09d14a88f29dfdff7645f213e2c03650ac2dd275de52a513de" default)))
 '(fancy-splash-image nil)
 '(package-selected-packages
   (quote
    (exec-path-from-shell gruvbox-theme rainbow-delimiters)))
 '(scroll-bar-mode nil)
 '(show-paren-mode t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )


(set-face-attribute 'default nil
                    :family "Meslo"
                    :height 160
                    :weight 'normal
                    :width 'normal)

 ; add space bw numbers and text
 ; TODO this doesn't really work but it's not the ed of the world idk..
(setq-default left-fringe-width  10)

;; PROGRAMMING
;highlight pair of selected parens
(setq show-paren-delay 0)
(show-paren-mode 1)

;rainbow-delimiters
(add-hook 'prog-mode-hook #'rainbow-delimiters-mode)
(add-hook 'prog-mode-hook #'display-line-numbers-mode)


; set shell path to what it is in zhs
; TODO this doesn't do anything, should make it work

(when (memq window-system '(mac ns x))
  (exec-path-from-shell-initialize))


;; SHORTCUTS and aliases and stuff...
; source feels more like bash
(defalias 'source 'load-file)
;(defalias 'load 'load-file)
;(defalias 'run 'load-file)
; y or p is enough
(defalias 'yes-or-no-p 'y-or-n-p) 









