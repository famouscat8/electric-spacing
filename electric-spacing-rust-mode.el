;;; electric-spacing-rust.el --- Rust mode tunings

;; Copyright (C) 2019 Free Software Foundation, Inc.

;; Author: William Xu <william.xwl@gmail.com>
;; Version: 0.1

;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation; either version 3, or (at your option)
;; any later version.

;; This program is distributed in the hope that it will be useful, but
;; WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
;; General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with EMMS; see the file COPYING.  If not, write to the
;; Free Software Foundation, Inc., 51 Franklin St, Fifth Floor,
;; Boston, MA 02110-1301, USA.

;;; Code:

(require 'electric-spacing)

(defun electric-spacing-:-rust-mode ()
  (if (looking-back ": *")
      (progn
        (search-backward " :" nil t 1)
        (replace-match "::"))
    (electric-spacing-insert ":" 'after)))

(defalias 'electric-spacing-:-rustic-mode 'electric-spacing-:-rust-mode)

(defun electric-spacing-.-rust-mode ()
  (electric-spacing-insert "." 'middle))

(defalias 'electric-spacing-.-rustic-mode 'electric-spacing-.-rust-mode)

(defun electric-spacing-&-rust-mode ()
  (if (looking-back "( *")
      (electric-spacing-insert "&" 'middle)
    (electric-spacing-insert "&" 'before)))

(defalias 'electric-spacing-&-rustic-mode 'electric-spacing-&-rust-mode)

(provide 'electric-spacing-rust-mode)
;;; electric-spacing-rust-mode.el ends here
