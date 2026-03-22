(define (problem instance_3)
	(:domain PolyCraft)

	(:init (= (trees_in_map) 144) (= (count_log_in_inventory) 37) (= (count_planks_in_inventory) 36) (= (count_stick_in_inventory) 49) (= (count_sack_polyisoprene_pellets_in_inventory) 0) (= (count_tree_tap_in_inventory) 1)
	)
	(:goal
		(and
			(have_pogo_stick)
		)
	)
)