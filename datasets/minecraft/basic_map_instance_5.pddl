(define (problem instance_5)
	(:domain PolyCraft)

	(:init (= (trees_in_map) 103) (= (count_log_in_inventory) 26) (= (count_planks_in_inventory) 45) (= (count_stick_in_inventory) 9) (= (count_sack_polyisoprene_pellets_in_inventory) 1) (= (count_tree_tap_in_inventory) 0)
	)
	(:goal
		(and
			(have_pogo_stick)
		)
	)
)