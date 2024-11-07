;;; init.el --- The configure of my emacs
;;; Commentary:
;;; Code:
(require 'package)


(add-to-list 'package-archives '("gnu" . "https://elpa.gnu.org/packages/") t)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(add-to-list 'package-archives '("nongnu" . "https://elpa.nongnu.org/nongnu/") t)
(package-initialize)

(unless package-archive-contents
  (package-refresh-contents))

(unless (package-installed-p 'use-package)
  (package-install 'use-package))
(require 'use-package)

(org-babel-load-file "~/.emacs.d/config.org")

(provide 'init)
;;; init.el ends here
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   '(eglot eglot-booster direnv kind-icon all-the-icons parrot nyan-mode doom-modeline catppuccin-theme eww-lnum org-caldav org-roam org-journal org-super-agenda cargo rustic rust-mode python-mode nix-mode cider clojure-mode vterm pdf-tools org-modern neotree embark-consult embark marginalia orderless vertico magit smartparens yasnippet-capf yasnippet-snippets yasnippet cape corfu ddskk leaf-keywords leaf T))
 '(package-vc-selected-packages
   '((eglot-booster :vc-backend Git :url "https://github.com/jdtsmith/eglot-booster"))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
