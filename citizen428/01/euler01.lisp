(format t "~d~%" (loop for i below 1000 when (or (= 0 (mod i 3)) (= 0 (mod i 5))) sum i))

