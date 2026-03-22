(define (problem instance_246)
	(:domain PolyCraft)

	(:init (= (trees_in_map) 135) (= (count_log_in_inventory) 14) (= (count_planks_in_inventory) 25) (= (count_stick_in_inventory) 22) (= (count_sack_polyisoprene_pellets_in_inventory) 1) (= (count_tree_tap_in_inventory) 0)
	)
	(:goal
		(and
			(have_pogo_stick)
		)
	)
)