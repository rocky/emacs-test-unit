(require 'cl)
(load-file "../test-unit.el")
(test-unit-clear-contexts)

(context "test-unit"
	 (tag test-unit)
	 (specify "'test-unit provided"
	 	  (assert-t (memq 'test-unit features)))

	 (specify "assert-nil"
		  (assert-nil nil)
	 	  (assert-nil nil "Knights if ni"))

	 (specify "test-assert-equal"
	 	  (assert-equal 5 (+ 1 4)))

	 (specify "test-assert-raises"
	 	  (assert-raises error (error "you should not see this")))
)

(test-unit "test-unit")


