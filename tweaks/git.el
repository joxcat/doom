;;; $DOOMDIR/tweaks/git.el -*- lexical-binding: t; -*-

(use-package! git-timemachine
  :defer t
  :config
  (map! :n "SPC g h" #'git-timemachine-toggle))

(use-package! diffview
  :defer t
  :commands (diffview-region diffview-current)
  :init
  (defun joxcat/diffview-dwim ()
    (interactive)
    (if (region-active-p)
        (diffview-region)
      (diffview-current)))
  :config
  (map! :n "SPC g v" #'joxcat/diffview-dwim))

(use-package! git-gutter
  :defer t
  :config
  (setq git-gutter:modified-sign "~")
  (setq git-gutter:added-sign "+")
  (setq git-gutter:deleted-sign "-"))

(use-package! magit
  :defer t
  :config
  (setq magit-diff-refine-hunk 't)
  (setq magit-diff-refine-ignore-whitespace 'nil)
  (setq magit-diff-paint-whitespace 'uncommited)
  (setq magit-diff-highlight-trailing 't)
  (setq magit-diff-paint-whitespace-lines 'both)
  (setq magit-ediff-dwim-show-on-hunks 't))
