(define (problem instance_25)
	(:domain PolyCraft)

	(:init (= (trees_in_map) 59) (= (count_log_in_inventory) 5) (= (count_planks_in_inventory) 54) (= (count_stick_in_inventory) 11) (= (count_sack_polyisoprene_pellets_in_inventory) 1) (= (count_tree_tap_in_inventory) 1)
	)
	(:goal
		(and
			(have_pogo_stick)
		)
	)
)