(setq user-full-name "John Doe"
      user-mail-address "john@doe.com")


(load "doom-themes")

;; doom-henna, doom-nord, doom-one, doom-opera, doom-miramare, doom-manegarm
(setq doom-theme 'doom-one)

(setq display-line-numbers-type 'relative)

(setq org-directory "~/org/")

(setq doom-font (font-spec :family "Iosevka Fixed Medium" :size 15))

(beacon-mode 1)
(good-scroll-mode 1)
(elcord-mode 1)

(custom-set-variables
 '(initial-frame-alist (quote ((fullscreen . maximized))))
)

