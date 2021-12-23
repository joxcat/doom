;; -*- no-byte-compile: t; -*-
;;; $DOOMDIR/packages.el

;; To install a package with Doom you must declare them here and run 'doom sync'
;; on the command line, then restart Emacs for the changes to take effect -- or
;; use 'M-x doom/reload'.

;; lsp install SOME-PACKAGE from MELPA, ELPA or emacsmirror:
;(package! some-package)
(package! evil-easymotion)
(package! evil-snipe)
(package! evil-commentary)
(package! evil-indent-plus)

;; Multimode per buffer
(package! polymode)

;; Javascript
(package! prettier-js)

;; Verb http request
(package! verb)

;; (package! magit-delta :recipe (:host github :repo "dandavison/magit-delta"))
(package! info-colors)
(package! git-commit-mode)
(package! git-timemachine)
(package! diffview)

;; Manage very big files
(package! vlf :recipe (:host github :repo "m00natic/vlfi"))
(package! elpy)

;; Autocomplete
(package! company-prescient)

;; Discord rich presence for fun!
(package! elcord)

;; Annotate everything
(package! annotate)

;; Mint lang
;; (package! mint-mode
;;   :recipe (:host github
;;            :repo "creatorrr/emacs-mint-mode"
;;            :files ("tokens" "mint-mode.el")))

;; Tree-sitter https://hungyi.net/posts/use-emacs-tree-sitter-doom-emacs/
;; (package! tree-sitter)
;; (package! tree-sitter-langs)

;; mini-buffer in postframe <3
(package! mini-frame :recipe (:host github :repo "muffinmad/emacs-mini-frame"))

;; Justfile > Makefile change my mind
(package! just-mode)

;; (unpin! org-mode)
(unpin! lsp-mode)
(unpin! lsp-ui)
(unpin! rustic)

;; To install a package directly from a remote git repo, you must specify a
;; `:recipe'. You'll find documentation on what `:recipe' accepts here:
;; https://github.com/raxod502/straight.el#the-recipe-format
;(package! another-package
;  :recipe (:host github :repo "username/repo"))

;; If the package you are trying to install does not contain a PACKAGENAME.el
;; file, or is located in a subdirectory of the repo, you'll need to specify
;; `:files' in the `:recipe':
;(package! this-package
;  :recipe (:host github :repo "username/repo"
;           :files ("some-file.el" "src/lisp/*.el")))

;; If you'd like to disable a package included with Doom, you can do so here
;; with the `:disable' property:
;(package! builtin-package :disable t)

;; You can override the recipe of a built in package without having to specify
;; all the properties for `:recipe'. These will inherit the rest of its recipe
;; from Doom or MELPA/ELPA/Emacsmirror:
;(package! builtin-package :recipe (:nonrecursive t))
;(package! builtin-package-2 :recipe (:repo "myfork/package"))

;; Specify a `:branch' to install a package from a particular branch or tag.
;; This is required for some packages whose default branch isn't 'master' (which
;; our package manager can't deal with; see raxod502/straight.el#279)
;(package! builtin-package :recipe (:branch "develop"))

;; Use `:pin' to specify a particular commit to install.
;(package! builtin-package :pin "1a2b3c4d5e")


;; Doom's packages are pinned to a specific commit and updated from release to
;; release. The `unpin!' macro allows you to unpin single packages...
;(unpin! pinned-package)
;; ...or multiple packages
;(unpin! pinned-package another-pinned-package)
;; ...Or *all* packages (NOT RECOMMENDED; will likely break things)
;(unpin! t)

;; Benchmark @NOTE disable if not benchmarking
;; (package! benchmark-init)
