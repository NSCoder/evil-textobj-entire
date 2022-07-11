;;; evil-textobj-entire.el --- Entire buffer text oject for `evil.el`  -*- lexical-binding: t; -*-

;; Copyright (C) 2022 Supermomonga, NSCoder

;; Maintainer: Iker Karam
;; Author: supermomonga
;; Created: 2022-07-11
;; URL: https://github.com/nscoder/evil-textobj-entire-buffer
;; Version: 0.0.1
;; Package-Requires: ((evil "1.0.0"))
;; Keywords: text-object, evil

;; The MIT License (MIT)
;;
;; Copyright (c) 2018 Supermomonga, NSCoder, GitHub, Inc. and contributors
;;
;; Permission is hereby granted, free of charge, to any person obtaining a copy
;; of this software and associated documentation files (the "Software"), to deal
;; in the Software without restriction, including without limitation the rights
;; to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
;; copies of the Software, and to permit persons to whom the Software is
;; furnished to do so, subject to the following conditions:
;;
;; The above copyright notice and this permission notice shall be included in
;; all copies or substantial portions of the Software.
;;
;; THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
;; IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
;; FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
;; AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
;; LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
;; OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
;; THE SOFTWARE.

;;; Commentary:

;; Repackaged from supermomonga/evil-textobj-entire to include the evil bindings
;; and additional documentation.
;;
;; Few examples: vie -> select entire buffer
;;               dae -> delete entire buffer
;;               yie -> yank entire buffer

;;; Code:
(require 'evil)

(defgroup evil-textobj-entire nil
  "Entire buffer text object."
  :prefix "evil-textobj-entire-"
  :group 'evil)

(defcustom evil-textobj-entire-key "e"
  "Entire text object key."
  :type 'string
  :group 'evil-textobj-entire)

(evil-define-text-object evil-entire-entire-buffer (count &optional beg end type)
  "Return the range for the entire buffer."
  (evil-range (point-min) (point-max)))

;; Setup evil bindings
(define-key evil-outer-text-objects-map evil-textobj-entire-key 'evil-entire-entire-buffer)
(define-key evil-inner-text-objects-map evil-textobj-entire-key 'evil-entire-entire-buffer)

(provide 'evil-textobj-entire)
;;; evil-textobj-entire.el ends here
