;;; $DOOMDIR/tweaks/better-defaults.el -*- lexical-binding: t; -*-

(after! gcmh
  (setq gcmh-high-cons-threshold 33554432)) ; 32mb, or 64mb, or *maybe* 128mb, BUT NOT 512mb

;; Remove UTF-8 from modeline
(defun doom-modeline-conditional-buffer-encoding ()
  "We expect the encoding to be LF UTF-8, so only show the modeline when this is not the case"
  (setq-local doom-modeline-buffer-encoding
              (unless (or (eq buffer-file-coding-system 'utf-8-unix)
                          (eq buffer-file-coding-system 'utf-8)))))

(add-hook! 'after-change-major-mode-hook #'doom-modeline-conditional-buffer-encoding)

(setq undo-limit 80000000                         ; Raise undo-limit to 80Mb
      evil-want-fine-undo t                       ; By default while in insert all changes are one big blob. Be more granular
      auto-save-default t                         ; Nobody likes to loose work, I certainly don't
      truncate-string-ellipsis "…"                ; Unicode ellispis are nicer than "...", and also save /precious/ space
      evil-kill-on-visual-paste nil               ; All I want for christmas is "to paste without replacing my mtfkg kill-ring"
      scroll-margin 2)                            ; It's nice to maintain a little margin

;; (display-time-mode 1)                             ; Enable time in the mode-line
(global-subword-mode 1)                           ; Iterate through CamelCase words

(add-hook! prog-mode (map! :n
                           "SPC c q" #'er/expand-region
                           "C-c q" #'er/expand-region))

;; Keeping custom out of doom config
(setq custom-file
      (if (boundp 'server-socket-dir)
          (expand-file-name "custom.el" server-socket-dir)
        (expand-file-name (format "emacs-custom-%s.el" (user-uid)) temporary-file-directory)))
