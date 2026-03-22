(define (problem instance_162)
	(:domain PolyCraft)

	(:init (= (trees_in_map) 78) (= (count_log_in_inventory) 22) (= (count_planks_in_inventory) 6) (= (count_stick_in_inventory) 44) (= (count_sack_polyisoprene_pellets_in_inventory) 1) (= (count_tree_tap_in_inventory) 1)
	)
	(:goal
		(and
			(have_pogo_stick)
		)
	)
)