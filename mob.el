(defcustom mob-start-time 15
  "Default time for mob start command"
  :group 'mob
  :type 'number)

(defun mob-start ()
  (interactive)
  (async-shell-command (format "mob start %d" mob-start-time)))

(defun mob-next ()
  (interactive)
  (async-shell-command "mob next"))

(defun mob-done ()
  (interactive)
  (async-shell-command "mob done"))

(defun mob-version ()
  (interactive)
  (async-shell-command "mob version"))

(defun mob-moo ()
  (interactive)
  (call-process-shell-command "mob moo" nil 0))
