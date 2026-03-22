(define (problem instance_83)
	(:domain PolyCraft)

	(:init (= (trees_in_map) 198) (= (count_log_in_inventory) 43) (= (count_planks_in_inventory) 53) (= (count_stick_in_inventory) 3) (= (count_sack_polyisoprene_pellets_in_inventory) 0) (= (count_tree_tap_in_inventory) 1)
	)
	(:goal
		(and
			(have_pogo_stick)
		)
	)
)