;;; sacredforest-theme.el --- Sacred Forest Theme

;; Copyright (C) 2019 Matthias Margush <matthias.margush@gmail.com>

;; Author: Matthias Margush <matthias.margush@gmail.com>
;; URL: https://github.com/matthias-margush/sacred-theme
;; Version: 0.0.1
;; Package-Requires: ((emacs "25.4.0"))
;; Keywords: theme, faces

;; This file is NOT part of GNU Emacs.

;; This file is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation; either version 3, or (at your option)
;; any later version.

;; This file is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with GNU Emacs; see the file COPYING. If not, write to
;; the Free Software Foundation, Inc., 59 Temple Place - Suite 330,
;; Boston, MA 02111-1307, USA.

;;; Commentary:

;; Nature-inspired theme

;; See the README for more info:
;; https://github.com/matthias-margush/sacred-theme

;;; Code:
(deftheme sacredforest)

(require 'sacred-theme)

(let* ((sacred-theme--added sacred-theme--moss)
       (sacred-theme--alert sacred-theme--fire)
       (sacred-theme--link sacred-theme--water)
       (sacred-theme--good sacred-theme--moss)
       (sacred-theme--removed sacred-theme--fire)
       (sacred-theme--background sacred-theme--shadow-dark)
       (sacred-theme--background-medium sacred-theme--shadow-medium)
       (sacred-theme--background-dark sacred-theme--shadow-bright)
       (sacred-theme--inverted-background sacred-theme--light-dark)
       (sacred-theme--inverted-background-medium sacred-theme--light-medium)
       (sacred-theme--inverted-background-bright sacred-theme--light-dark)
       (sacred-theme--block sacred-theme--shadow-medium)
       (sacred-theme--highlight-background sacred-theme--shadow-bright)
       (sacred-theme--text sacred-theme--light-dark)
       (sacred-theme--inverted-text sacred-theme--shadow-dark)
       (sacred-theme--highlight-foreground sacred-theme--light-bright)
       (sacred-theme--deemphasize sacred-theme--shadow-bright)
       (sacred-theme--keyword sacred-theme--soil)
       (sacred-theme--doc sacred-theme--shadow-bright)
       (sacred-theme--nav sacred-theme--moss)
       (sacred-theme--changed sacred-theme--sun)
       (sacred-theme--warning sacred-theme--sun))

  (sacred-theme 'sacredforest)
  (provide-theme 'sacredforest))

(provide 'sacredforest-theme)

;;; sacredforest-theme.el ends here
