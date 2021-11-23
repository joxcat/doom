;;; $DOOMDIR/tweaks/git.el -*- lexical-binding: t; -*-

(use-package! magit
  :defer t
  :config
  (setq magit-diff-refine-hunk 't)
  (setq magit-diff-refine-ignore-whitespace 'nil)
  (setq magit-diff-paint-whitespace 'uncommited)
  (setq magit-diff-highlight-trailing 't)
  (setq magit-diff-paint-whitespace-lines 'both)
  (setq magit-ediff-dwim-show-on-hunks 't))
