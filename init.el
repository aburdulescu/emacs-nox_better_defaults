(defun config-open()
  (interactive)
  (find-file "~/.emacs.d/init.el"))
(global-set-key (kbd "C-c o") 'config-open)

(show-paren-mode t)

(setq-default c-basic-offset 4
	      tab-width 4
	      indent-tabs-mode nil)

(setq c-default-style "k&r")

(fset 'yes-or-no-p 'y-or-n-p)

(setq make-backup-files nil
      inhibit-splash-screen t)

(setq ido-everywhere t)
(ido-mode t)

(winner-mode 1)

(windmove-default-keybindings)

(global-set-key (kbd "C-c i") 'imenu)

(menu-bar-mode -1)

(setq initial-scratch-message nil)

(global-set-key (kbd "C-x C-b") 'ibuffer)

(setq visible-bell 1)

(when window-system
  (global-hl-line-mode))

(setq require-final-newline t)

(add-hook 'before-save-hook 'delete-trailing-whitespace)

(electric-pair-mode 1)

(setq gdb-many-windows t gdb-show-main t)

(global-display-line-numbers-mode)
