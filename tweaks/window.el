;;; $DOOMDIR/tweaks/window.el -*- lexical-binding: t; -*-

(defadvice! prompt-for-buffer (&rest _)
  :after '(evil-window-split evil-window-vsplit)
  (+ivy/switch-buffer))

(setq +ivy-buffer-preview t)

(use-package! evil
  :defer t
  :config
  ;; Select buffer on split
  (setq evil-vsplit-window-right t
        evil-split-window-below t)
  ;; Rotate windows
  (map! :map evil-window-map
        "SPC" #'rotate-layout
        ;; Navigation
        "<left>"     #'evil-window-left
        "<down>"     #'evil-window-down
        "<up>"       #'evil-window-up
        "<right>"    #'evil-window-right
        ;; Swapping windows
        "C-<left>"   #'+evil/window-move-left
        "C-<down>"   #'+evil/window-move-down
        "C-<up>"     #'+evil/window-move-up
        "C-<right>"  #'+evil/window-move-right))

;; Usefull views
(use-package! ivy-view
  :defer t
  :config
  (setq ivy-use-virtual-buffers t)
  (setq ivy-views
        '(("code + term vert {}"
           (vert
            (buffer "*scratch*")
            (buffer "vterm")))
          ("treemacs + code hori {}"
           (horz
            (buffer "treemacs")
            (buffer "*scratch*"))))))

(use-package! treemacs
  :defer t
  :config
  (setq treemacs-width 30)
  (setq treemacs-wide-toggle-width 60)
  (setq treemacs-show-hidden-files nil))

(use-package! centaur-tabs
  :defer t
  :config
  (map! :map centaur-tabs-mode-map
        "C-x <left>" #'centaur-tabs-backward-tab
        "C-x <right>" #'centaur-tabs-forward-tab))
