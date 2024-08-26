;;; init-local.el --- Version control support -*- lexical-binding: t -*-
;;; Commentary:

;; These are my personal settings on top of the base config

;;; Code:

;; Welcome message
(require 'seq)
(setq-default initial-scratch-message
              (seq-random-elt '(
                                ";; There is nothing either good or bad,\n;; but thinking makes it so.\n;; - William Shakespeare\n\n"
                                ";; Even  in Kyoto\n;; hearing the cuckoo's cry\n;;  I long for Kyoto.\n;; -Bashō\n\n"
                                ";; When you're dead and you look back at your life,\n;; you'll see that none of this mattered in the least.\n;; - Kōdō Sawaki\n\n"
                                ";; A day without work is a day without food\n;; - Baizhang Huaihai\n\n")))

;; I like to see a bit of the wallpaper as a backdrop while I work
(sanityinc/adjust-opacity nil -10)

;; Org stuff
(require-package 'org-bullets)
(add-hook 'org-mode-hook (lambda () (org-bullets-mode 1)))

(setq org-agenda-files (list "~/org"))

(require-package 'org-roam)
(setq org-roam-directory "~/roam")
(global-set-key (kbd "C-c n i") 'org-roam-node-insert)
(global-set-key (kbd "C-c n f") 'org-roam-node-find)
(global-set-key (kbd "C-c n l") 'org-roam-node-toggle)
(org-roam-db-autosync-mode)

(provide 'init-local)
;;; init-local.el ends here
