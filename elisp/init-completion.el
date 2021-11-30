;;; -*- lexical-binding: t -*-

(straight-use-package 'vertico)
(straight-use-package 'orderless)
(straight-use-package 'corfu)
(straight-use-package 'rg)
;(straight-use-package 'prescient)
(straight-use-package 'yasnippet)

;;; yasnippet

(autoload #'yas-minor-mode "yasnippet")

(add-hook 'prog-mode-hook 'yas-minor-mode)

(with-eval-after-load "yasnippet"
  (let ((inhibit-message t))
    (yas-reload-all))

  (define-key yas-keymap [escape] nil)
  (define-key yas-keymap [tab] nil)
  (define-key yas-keymap (kbd "S-<tab>") nil)
  (define-key yas-keymap (kbd "TAB") nil)
  (define-key yas-keymap [return] 'yas-next-field-or-maybe-expand)
  (define-key yas-keymap (kbd "RET") 'yas-next-field-or-maybe-expand)
  (define-key yas-keymap (kbd "S-<return>") 'yas-prev-field))

;;; corfu


;; vertico

(require 'vertico)
(vertico-mode t)

;; orderless

(require 'orderless)

(setq completion-styles '(orderless)
      completion-category-defaults nil)

;;; rg

(autoload #'rg-project "rg" nil t)

(with-eval-after-load "wgrep"
  (define-key wgrep-mode-map (kbd "C-c C-c") #'wgrep-finish-edit))

(provide 'init-completion)
