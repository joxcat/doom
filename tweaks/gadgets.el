;;; $DOOMDIR/tweaks/gadgets.el -*- lexical-binding: t; -*-

(use-package! elcord
  :defer t)

(use-package! annotate
  :defer t
  :config
  (if (not (projectile-project-root))
      (setq annotate-file (concat default-directory ".annotations"))
    (setq annotate-file (concat (projectile-project-root) ".annotations")))
  (setq annotate-annotation-max-size-not-place-new-line 32))
