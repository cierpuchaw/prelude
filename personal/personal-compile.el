(require 'ansi-color)

(setq compilation-error-regexp-alist
      (cl-set-difference
       compilation-error-regexp-alist
       '(maven
         ada
         ant
         irix
         java
         perl--Test
         perl--Test2
         perl--Pod::Checker
         php
         ruby-Test::Unit
         sparc-pascal-file
         sparc-pascal-line
         sparc-pascal-example
         sun-ada)))
