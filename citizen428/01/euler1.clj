(defn problem1
	[n]
	(reduce + (filter #(or (= 0 (mod % 3)) (= 0 (mod % 5))) (range 1 n))))

(println (problem1 1000))