;;; $DOOMDIR/lang/plain.el -*- lexical-binding: t; -*-

;; ANSI Colors in plain text
(after! text-mode
  (add-hook! 'text-mode-hook
    ;; Apply ANSI color codes
    (with-silent-modifications
      (ansi-color-apply-on-region (point-min) (point-max))
      )
    )
  )

(after! vlf-mode
  (add-hook! 'vlf-mode-hook
    (with-silent-modifications
      (ansi-color-apply-on-region (point-min) (point-max))
      )
    )
  )
