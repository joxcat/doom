;;; $DOOMDIR/lang/org.el -*- lexical-binding: t; -*-

(use-package! org
  :defer t
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

(use-package! org-roam
  :defer t
  :bind (("C-c n i" . org-roam-node-insert)
         ("C-c n b" . org-roam-buffer-toggle)
         ("C-c n f" . org-roam-node-find)
         ("C-c n d" . org-roam-dailies-find-today))
  :init
  (setq! org-roam-db-location "~/Sync/org-notes/org-roam.db"
         org-roam-directory "~/Sync/org-notes"
         org-roam-dailies-directory "journals/"
         org-roam-capture-templates
         '(("d" "default" plain
            "%?" :target
            (file+head "pages/${slug}.org" "#+title: ${title}\n")))
         org-roam-dailies-capture-templates
         '(("d" "default" entry
            "* %?" :target
            (file+head "%<%Y_%m_%d>.org" "#+title: %<%Y-%m-%d>\n"))))
  :config
  (setq! org-return-follows-link t))
