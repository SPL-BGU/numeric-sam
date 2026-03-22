(define (problem instance_40)
	(:domain PolyCraft)

	(:init (= (trees_in_map) 203) (= (count_log_in_inventory) 39) (= (count_planks_in_inventory) 46) (= (count_stick_in_inventory) 54) (= (count_sack_polyisoprene_pellets_in_inventory) 1) (= (count_tree_tap_in_inventory) 1)
	)
	(:goal
		(and
			(have_pogo_stick)
		)
	)
)