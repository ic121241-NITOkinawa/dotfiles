(require 'package)

;;add melpa
(add-to-list 'package-archives '("melpa"."https://melpa.org/packages/") t)
;;add melpa-stable
(add-to-list 'package-archives '("melpa-stable"."https://stable.melpa.org/packages/") t)

;;add marmalade
(add-to-list 'package-archives '("marmalade"."https://marmalade-repo.org/packages/") t)

;;add Org
(add-to-list 'package-archives '("org"."https://orgmode.org/elpa/") t)

(package-initialize)

(require 'web-mode)

(setq package-archives
      '(("gnu"."http://elpa.gnu.org/packages/")
        ("meplpa"."http://melpa.org/packages/")
        ("org"."http://orgmode.org/elpa/")))

;;
;;my own
;;日本語設定
(set-language-environment 'Japanese)
(prefer-coding-system 'utf-8)
;; ^h -> delete
(keyboard-translate ?\C-h ?\C-?)
;; タブにスペースを使用する
(setq-default tab-width 4 indent-tabs-mode nil)
;; 改行コードを表示する
(setq eol-mnemonic-dos "(CRLF)")
(setq eol-mnemonic-mac "(CR)")
(setq eol-mnemonic-unix "(LF)")
(setq kill-whole-line t)
(setq require-final-newline t)
;; 列数を表示する
(column-number-mode t)
;; 行数を表示する
(global-linum-mode t)
;; カーソルの点滅をやめる
(blink-cursor-mode 0)
;; 対応する括弧を光らせる
(show-paren-mode 1)
;; スペース、タブなどを可視化する
(global-whitespace-mode 1)

(setq-default bidi-display-reordering nil)
(setq set-mark-command-repeat-pop t)
(setq-default indent-tabs-mode nil)
(global-set-key (kbd "C-h") 'delete-backword-char)
(display-time)
(line-number-mode 1)

;;highlight-line
(global-hl-line-mode t)
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(hl-line ((t (:background "color-235"))))
 '(whitespace-newline ((t (:foreground "color-33" :weight normal)))))
(set-face-background 'whitespace-space "gray40")
(set-face-foreground 'whitespace-newline "color-33")
(set-face-background 'whitespace-tab "color-33")


;;
;; melpa
;;
(require 'package) ;; You might already have this line
(add-to-list 'package-archives
         '("melpa" . "https://melpa.org/packages/"))
(when (< emacs-major-version 24)
  ;; For important compatibility libraries like cl-lib
  (add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/")))
(package-initialize) ;; You might already have this line


;;
;; sbcl
;;
(setq inferior-lisp-program "ros run")

;;
;; slime
;;
(require 'slime)
(slime-setup '(slime-repl slime-fancy slime-banner))

;;
;; auto-complete
;;

(require 'auto-complete)
(require 'auto-complete-config)
(global-auto-complete-mode t)

;;
;; ac-slime
;;
(require 'ac-slime)
(add-hook 'slime-mode-hook 'set-up-slime-ac)
(add-hook 'slime-repl-mode-hook 'set-up-slime-ac)
(eval-after-load "auto-complete"
        '(add-to-list 'ac-modes 'slime-repl-mode))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (web-narrow-mode web-mode-edit-element web-mode fish-mode ac-slime))))

