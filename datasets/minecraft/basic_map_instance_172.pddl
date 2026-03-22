(define (problem instance_172)
	(:domain PolyCraft)

	(:init (= (trees_in_map) 16) (= (count_log_in_inventory) 33) (= (count_planks_in_inventory) 50) (= (count_stick_in_inventory) 29) (= (count_sack_polyisoprene_pellets_in_inventory) 0) (= (count_tree_tap_in_inventory) 1)
	)
	(:goal
		(and
			(have_pogo_stick)
		)
	)
)