;;; -*- lexical-binding: t -*-

(straight-use-package '(meow :type git :host github :repo "DogLooksGood/meow"))

(+pdump-packages 'meow)

(defun meow-setup ()
  (setq meow-cheatsheet-physical-layout meow-cheatsheet-physical-layout-ansi)
  (setq meow-cheatsheet-layout meow-cheatsheet-layout-dvp)
  (meow-leader-define-key
   '("'" . meow-wrap-string)
   '("(" . meow-wrap-round)
   '("[" . meow-wrap-square)
   '("{" . meow-wrap-curly)
   '("}" . meow-forward-barf)
   '(")" . meow-forward-slurp)
   '("e" . meow-eval-last-exp)
   '("E" . eldoc-mode)
   '("r" . meow-raise-sexp)
   '("S" . meow-split-sexp)
   '("s" . meow-splice-sexp)
   '("t" . meow-transpose-sexp)
   '("j" . meow-join-sexp)
   '("," . meow-pop-marker)
   '("." . meow-find-ref)
   '(";" . meow-comment)
   '("@ u" . smerge-keep-upper)
   '("@ l" . smerge-keep-lower)
   '("@ a" . smerge-keep-all)
   '("@ m" . smerge-keep-mine)
   '("@ o" . smerge-keep-other)
   '("@ @" . smerge-next)
   '("d" . dired)
   '("o" . delete-other-windows)
   '("L" . display-line-numbers-mode)
   '("k" . kill-buffer)
   '("w" . other-window)
   '("W" . +rotate-window)
   '("o" . delete-other-windows)
   '("q" . delete-window)
   '("v" . magit)
   '("$" . +change-theme)
   '("-" . split-window-below)
   '("\\" . split-window-right)
   '("p" . project-find-file)
   '("b" . switch-to-buffer)
   '("a" . deadgrep)
   '("f" . find-file)
   '("i" . imenu))
  (meow-normal-define-key
   '("*" . meow-expand-0)
   '("=" . meow-expand-9)
   '("!" . meow-expand-8)
   '("[" . meow-expand-7)
   '("]" . meow-expand-6)
   '("{" . meow-expand-5)
   '("+" . meow-expand-4)
   '("}" . meow-expand-3)
   '(")" . meow-expand-2)
   '("(" . meow-expand-1)
   '("1" . digit-argument)
   '("2" . digit-argument)
   '("3" . digit-argument)
   '("4" . digit-argument)
   '("5" . digit-argument)
   '("6" . digit-argument)
   '("7" . digit-argument)
   '("8" . digit-argument)
   '("9" . digit-argument)
   '("0" . digit-argument)
   '("-" . negative-argument)
   '(";" . meow-reverse)
   '("/" . meow-keypad-describe-key)
   '("?" . meow-cheatsheet)
   '("," . meow-inner-of-thing)
   '("." . meow-bounds-of-thing)
   '("a" . meow-append)
   '("A" . meow-open-below)
   '("b" . meow-back-word)
   '("B" . meow-back-symbol)
   '("c" . meow-change)
   '("C" . meow-change-save)
   '("d" . meow-C-d)
   '("D" . meow-backspace)
   '("e" . meow-line)
   '("E" . meow-kmacro-lines)
   '("f" . meow-find)
   '("F" . meow-find-expand)
   '("g" . meow-cancel)
   '("G" . meow-grab)
   '("h" . meow-left)
   '("H" . meow-left-expand)
   '("i" . meow-insert)
   '("I" . meow-open-above)
   '("j" . meow-join)
   '("J" . meow-extend)
   '("k" . meow-kill)
   '("K" . meow-kill-append)
   '("l" . meow-till)
   '("L" . meow-till-expand)
   '("m" . meow-mark-word)
   '("M" . meow-mark-symbol)
   '("n" . meow-next)
   '("N" . meow-next-expand)
   '("o" . meow-block)
   '("O" . meow-block-expand)
   '("p" . meow-prev)
   '("P" . meow-prev-expand)
   '("q" . meow-quit)
   '("Q" . meow-goto-line)
   '("r" . meow-replace)
   '("R" . meow-swap-grab)
   '("s" . meow-search)
   '("S" . meow-pop-search)
   '("t" . meow-right)
   '("T" . meow-right-expand)
   '("u" . meow-undo)
   '("U" . meow-undo-in-selection)
   '("v" . meow-visit)
   '("V" . meow-kmacro-matches)
   '("w" . meow-next-word)
   '("W" . meow-next-symbol)
   '("x" . meow-save)
   '("X" . meow-sync-grab)
   '("y" . meow-yank)
   '("Y" . meow-yank-pop)
   '("z" . meow-pop)
   '("Z" . meow-pop-all-selection)
   '("<" . meow-beginning-of-thing)
   '(">" . meow-end-of-thing)
   '("&" . meow-query-replace)
   '("%" . meow-query-replace-regexp)
   '("@" . recenter-top-bottom)
   '("^" . meow-pop-to-mark)
   '("'" . repeat)
   '("<escape>" . meow-last-buffer)
   '("\\" . quoted-insert)
   '("<f3>" . meow-start-kmacro)
   '("<f4>" . meow-end-or-call-kmacro)))

(setq
 meow-esc-delay 0.001
 meow-keypad-describe-delay 0.5
 meow-select-on-change t
 meow-selection-command-fallback '((meow-replace . meow-replace-char)
                                   (meow-change . meow-change-char)
                                   (meow-save . meow-save-empty)
                                   (meow-kill . meow-C-k)
                                   (meow-cancel . meow-keyboard-quit)
                                   (meow-cancel-selection . meow-keyboard-quit)
                                   (meow-pop . meow-pop-grab)
                                   (meow-reverse . meow-page-down)
                                   (meow-delete . meow-C-d)
                                   (meow-kmacro . meow-start-kmacro)))

(require 'meow)

(meow-global-mode 1)

(with-eval-after-load "meow"
  (add-hook 'meow-mode-hook 'meow-esc-mode)
  (add-to-list 'meow-normal-state-mode-list 'inf-iex-mode)
  (add-to-list 'meow-normal-state-mode-list 'authinfo-mode)
  (add-to-list 'meow-grab-fill-commands 'eval-expression)
  (add-to-list 'meow-char-thing-table '(?> . line))
  (add-to-list 'meow-char-thing-table '(?< . line))
  (meow-setup)
  (meow-setup-indicator))

(provide 'init-modal)
