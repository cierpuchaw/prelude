(cond
 ((string-equal system-type "windows-nt")
  (setenv "PATH" (concat (getenv "PATH") ";c:/Program Files/Git/bin/"))
  (setq exec-path (append exec-path '("c:/Program Files/Git/bin/")))
  )
 )
