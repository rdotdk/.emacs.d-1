;; Time-stamp: <2016-07-19 17:26:52 kmodi>

;; Hungry Delete
;; https://github.com/nflath/hungry-delete

(use-package hungry-delete
  :config
  (progn
    (setq hungry-delete-chars-to-skip " \t\r\f\v")

    (defun modi/turn-off-hungry-delete-mode ()
      "Turn off hungry delete mode."
      (hungry-delete-mode -1))

    ;; Enable `hungry-delete-mode' everywhere ..
    (global-hungry-delete-mode)

    ;; Except ..
    ;; `hungry-delete-mode'-loaded backspace does not work in `wdired-mode',
    ;; i.e. when editing file names in the *Dired* buffer.
    (add-hook 'wdired-mode-hook #'modi/turn-off-hungry-delete-mode)))


(provide 'setup-hungry-delete)
