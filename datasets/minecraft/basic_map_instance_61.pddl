(define (problem instance_61)
	(:domain PolyCraft)

	(:init (= (trees_in_map) 131) (= (count_log_in_inventory) 44) (= (count_planks_in_inventory) 43) (= (count_stick_in_inventory) 32) (= (count_sack_polyisoprene_pellets_in_inventory) 1) (= (count_tree_tap_in_inventory) 1)
	)
	(:goal
		(and
			(have_pogo_stick)
		)
	)
)