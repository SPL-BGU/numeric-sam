(define (problem instance_767)
	(:domain PolyCraft)

	(:init (= (trees_in_map) 82) (= (count_log_in_inventory) 4) (= (count_planks_in_inventory) 1) (= (count_stick_in_inventory) 0) (= (count_sack_polyisoprene_pellets_in_inventory) 0) (= (count_tree_tap_in_inventory) 0)
	)
	(:goal
		(and
			(have_pogo_stick)
		)
	)
)