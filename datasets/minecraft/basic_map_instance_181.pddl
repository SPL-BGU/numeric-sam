(define (problem instance_181)
	(:domain PolyCraft)

	(:init (= (trees_in_map) 210) (= (count_log_in_inventory) 3) (= (count_planks_in_inventory) 64) (= (count_stick_in_inventory) 18) (= (count_sack_polyisoprene_pellets_in_inventory) 1) (= (count_tree_tap_in_inventory) 0)
	)
	(:goal
		(and
			(have_pogo_stick)
		)
	)
)