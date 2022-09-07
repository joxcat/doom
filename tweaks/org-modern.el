;;; $DOOMDIR/tweaks/org-modern.el -*- lexical-binding: t; -*-
(add-hook! org-mode #'org-modern-mode)
(add-hook! 'org-agenda-finalize-hook #'org-modern-agenda)

(defun org-modern-setup ()
  (menu-bar-mode -1)
  (tool-bar-mode -1)
  (scroll-bar-mode -1)

  (setq
   org-auto-align-tags nil
   org-tags-column 0
   org-catch-invisible-edits 'show-and-error
   org-special-ctrl-a/e t
   org-insert-heading-respect-content t

   ;; Org styling, hide markup etc.
   org-hide-emphasis-markers t
   org-pretty-entities t
   org-ellipsis "…"

   ;; Agenda styling
   org-agenda-block-separator ?─
   org-agenda-time-grid
   '((daily today require-timed)
     (800 1000 1200 1400 1600 1800 2000)
     " ┄┄┄┄┄ " "┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄")
   org-agenda-current-time-string
   "⭠ now ─────────────────────────────────────────────────")

  (+zen/toggle-fullscreen))

(add-hook! org-modern-mode #'org-modern-setup)
