(define (problem instance_175)
	(:domain PolyCraft)

	(:init (= (trees_in_map) 62) (= (count_log_in_inventory) 46) (= (count_planks_in_inventory) 41) (= (count_stick_in_inventory) 50) (= (count_sack_polyisoprene_pellets_in_inventory) 0) (= (count_tree_tap_in_inventory) 1)
	)
	(:goal
		(and
			(have_pogo_stick)
		)
	)
)