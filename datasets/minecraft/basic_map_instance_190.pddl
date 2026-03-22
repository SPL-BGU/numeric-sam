(define (problem instance_190)
	(:domain PolyCraft)

	(:init (= (trees_in_map) 158) (= (count_log_in_inventory) 3) (= (count_planks_in_inventory) 14) (= (count_stick_in_inventory) 31) (= (count_sack_polyisoprene_pellets_in_inventory) 1) (= (count_tree_tap_in_inventory) 1)
	)
	(:goal
		(and
			(have_pogo_stick)
		)
	)
)