;;; -*- lexical-binding: t -*-

(deftheme printed "A simple medium contrast light theme.")

(custom-theme-set-faces
 'printed
 `(default                        ((((type tty))
									:background "#f8f8f8")
                                   (((type graphic))
                                    :background "#f8f8f8"
                                    :foreground "#333333")))
 `(hl-line                        ((((type graphic))
                                    :background "#eeeeee"
                                    ;; :overline "#9999cc" :underline "#9999cc"
                                    )
                                   (((type tty))
                                    :background "#ffffff")))
 `(cursor                         ((t (:background "#1d6ebf"))))
 '(region                         ((t (:background "#b6e3fa"))))
 '(fringe                         ((t ())))
 `(font-lock-comment-delimiter-face         ((t (:foreground "dark green" :italic t))))
 `(font-lock-comment-face         ((t (:foreground "dark green" :italic t))))
 `(font-lock-doc-face             ((t (:foreground "dark green" :italic t))))
 `(font-lock-warning-face         ((t (:foreground "red"))))
 `(font-lock-string-face          ((t (:foreground "dark red"))))
 `(font-lock-function-name-face   ((t (:bold t))))
 `(font-lock-keyword-face         ((t (:foreground "DarkBlue"))))
 `(font-lock-constant-face        ((t (:foreground "Purple4"))))
 `(font-lock-builtin-face         ((t ())))
 `(font-lock-variable-name-face   ((t ())))
 `(font-lock-type-face            ((t ())))
 `(font-lock-preprocessor-face    ((t (:inherit font-lock-constant-face))))
 `(highlight                      ((t (:background "#eeeeee"))))
 `(lazy-highlight                 ((t (:box (:line-width (-1 . -1) :color "#000000")))))
 '(shadow                         ((t (:foreground "#666"))))
 '(meow-keypad-cursor             ((t (:background "#f59842"))))
 '(meow-insert-cursor             ((t (:background "#bf3b1d"))))
 '(meow-normal-cursor             ((t (:background "#1d6ebf"))))
 '(meow-motion-cursor             ((t (:background "#b22ac7"))))
 '(meow-multi-cursor              ((t (:background "#83c7b0"))))
 '(dired-directory                ((t (:inherit font-lock-keyword-face))))
 `(tab-line                       ((t (:background "#eee" :underline "#aaa"))))
 `(mode-line                      ((((type tty)) (:background "grey70"))
                                   (((type graphic)) (:overline "#aaa" :underline "#aaa" :background "#EEE" :foreground "#303030"))))
 `(mode-line-inactive             ((((type tty)) (:background "grey80"))
                                   (((type graphic)) (:overline "#aaa" :underline "#aaa" :background "#EEE" :foreground "#757575"))))
 `(parenthesis                    ((t (:foreground "#909090"))))
 '(highlight-symbol-face          ((t ())))
 '(yascroll:thumb-fringe          ((t (:background "#606060" :foreground "#606060"))))
 '(yascroll:thumb-text-area       ((t (:background "#606060" :foreground "#606060"))))
 '(rime-indicator-face            ((t (:foreground "#1853cc"))))
 '(rime-indicator-dim-face        ((t ())))
 '(rime-default-face              ((t (:foreground "#303030" :background "#ececec"))))
 '(rime-preedit-face              ((t (:inverse-video nil :underline t))))
 '(rime-cursor-face               ((t (:inherit font-lock-constant-face))))
 '(rime-candidate-num-face        ((t ())))
 '(rime-comment-face              ((t ())))
 '(rime-indicator-face            ((t (:foreground "#713da6"))))
 '(telega-entity-type-code        ((t (:inherit fixed-pitch))))
 '(telega-entity-type-pre         ((t (:inherit fixed-pitch))))
 '(cider-fringe-good-face         ((t (:foreground "#006666"))))
 '(cider-repl-stdout-face         ((t (:foreground "grey20"))))
 '(cider-repl-stderr-face         ((t (:inherit font-lock-string-face))))
 `(cider-result-overlay-face      ((t (:background "grey90" :box (:line-width (-1 . -1) :color "black")))))
 '(web-mode-html-attr-name-face   ((t ())))
 '(web-mode-html-tag-face         ((t ())))
 `(line-number-current-line       ((t (:bold t :background "#eeeeee"))))
 `(line-number                    ((t (:background "#eeeeee"))))
 `(selectrum-current-candidate    ((t (:background "#b6e3fa"))))
 `(selectrum-prescient-primary-highlight ((t (:underline t))))
 '(mc/cursor-bar-face             ((t (:background "grey50" :height 1))))
 '(dired-subtree-depth-1-face     ((t (:background "grey90"))))
 '(dired-subtree-depth-2-face     ((t (:background "grey80"))))
 '(dired-subtree-depth-3-face     ((t (:background "grey70"))))
 '(dired-subtree-depth-4-face     ((t (:background "grey90"))))
 '(dired-subtree-depth-5-face     ((t (:background "grey80"))))
 '(dired-subtree-depth-6-face     ((t (:background "grey70"))))
 '(web-mode-function-call-face    ((t ())))
 '(web-mode-function-name-face    ((t ())))
 '(web-mode-html-tag-face         ((t (:bold t))))
 '(web-mode-symbol-face           ((t (:inherit font-lock-constant-face))))
 '(window-divider                 ((t (:foreground "#aaa"))))
 '(vertical-border                ((t (:foreground "grey20"))))
 '(web-mode-html-tag-bracket-face ((t (:inherit parenthesis))))
 '(web-mode-doctype-face          ((t (:foreground "grey40"))))
 '(css-selector                   ((t (:inherit font-lock-constant-face))))
 '(markdown-header-face-1         ((t (:bold t :height 2.2))))
 '(markdown-header-face-2         ((t (:bold t :height 1.8))))
 '(markdown-header-face-3         ((t (:bold t :height 1.4))))
 '(markdown-header-face-4         ((t (:bold t :height 1.2))))
 '(markdown-header-face-5         ((t (:bold t :height 1.2))))
 '(markdown-header-face-6         ((t (:bold t :height 1.2))))
 '(markdown-header-face-7         ((t (:bold t :height 1.2))))
 '(org-table           ((t (:foreground "grey40"))))
 '(org-level-1         ((t (:bold t :height 1.6))))
 '(org-level-2         ((t (:bold t :height 1.4))))
 '(org-level-3         ((t (:bold t :height 1.2))))
 '(org-level-4         ((t (:bold t :height 1.0))))
 '(org-level-5         ((t (:bold t :height 1.0))))
 '(org-level-6         ((t (:bold t :height 1.0))))
 '(org-level-7         ((t (:bold t :height 1.0))))
 '(match               ((t (:foreground "#f8f8f8" :background "#666666"))))
 '(minibuffer-prompt   ((t ())))
 '(ivy-subdir          ((t (:inherit font-lock-constant-face))))
 '(ivy-remote          ((t (:foreground "#666666"))))
 '(ivy-current-match   ((t (:background "#d0d0d0"))))
 `(ivy-minibuffer-match-face-1    ((t (:bold t))))
 `(ivy-minibuffer-match-face-2    ((t (:bold t))))
 `(ivy-minibuffer-match-face-3    ((t (:bold t))))
 `(ivy-minibuffer-match-face-4    ((t (:bold t))))
 `(diff-hl-insert                 ((t (:foreground "#69F" :background "#69F"))))
 `(diff-hl-change                 ((t (:foreground "#4A4" :background "#4A4"))))
 `(diff-hl-delete                 ((t (:foreground "#FAA" :background "#FAA"))))
 `(secondary-selection            ((t (:background "#b6fae3")))))

(and load-file-name
     (boundp 'custom-theme-load-path)
     (add-to-list 'custom-theme-load-path
                  (file-name-as-directory
                   (file-name-directory load-file-name))))

(provide-theme 'printed)
;;; printed-theme.el ends here
