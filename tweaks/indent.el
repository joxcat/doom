;;; $DOOMDIR/tweaks/indent.el -*- lexical-binding: t; -*-

;; Indent guides inspired by https://github.com/adimit/config/blob/master/newmacs/main.org
(use-package! highlight-indent-guides
  :hook (prog-mode . highlight-indent-guides-mode)
  :custom (highlight-indent-guides-method 'character))
