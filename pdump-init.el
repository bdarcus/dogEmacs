;; Restore the load path
(setq load-path +pdumped-load-path)

;; These two modes are disabled in pdump
(global-font-lock-mode t)
(transient-mark-mode t)
