(define (problem instance_125)
	(:domain PolyCraft)

	(:init (= (trees_in_map) 9) (= (count_log_in_inventory) 56) (= (count_planks_in_inventory) 49) (= (count_stick_in_inventory) 29) (= (count_sack_polyisoprene_pellets_in_inventory) 1) (= (count_tree_tap_in_inventory) 1)
	)
	(:goal
		(and
			(have_pogo_stick)
		)
	)
)