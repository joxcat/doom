;;; $DOOMDIR/lang/org.el -*- lexical-binding: t; -*-

(use-package! org
  :mode ("\\.org\\'" . org-mode)
  :config
  (define-key org-mode-map (kbd "C-c C-r") verb-command-map))

(setq org-emphasis-alist
  '(("*" (bold :foreground "brown1"))
    ("/" (italic :foreground "gold"))
    ("_" underline)
    ("=" (:background "orange" :foreground "Black"))
    ("~" (:foreground "RoyalBlue1"))
    ("+" (:strike-through t :foreground "gray30"))))

(setq org-hide-block-startup t)
;; (setq org-hide-emphasis-markers t)
