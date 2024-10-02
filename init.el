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
   '(org-caldav cider all-the-icons-ivy-rich ivy-rich kind-icon pdf-tools yasnippet lsp-java org-roam org-journal eww-lnum random-splash-image vterm doom-modeline parrot flycheck-rust all-the-icons neotree treemacs-magit treemacs-icons-dired treemacs-projectile treemacs nerd-icons nix-mode rustic cargo rust-mode T tree-sitter-langs tree-sitter magit lsp-ivy counsel ivy nyan-mode spaceline smartparens python-mode lsp-ui flycheck ddskk corfu catppuccin-theme cape)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
