(define (problem instance_243)
	(:domain PolyCraft)

	(:init (= (trees_in_map) 93) (= (count_log_in_inventory) 8) (= (count_planks_in_inventory) 8) (= (count_stick_in_inventory) 9) (= (count_sack_polyisoprene_pellets_in_inventory) 1) (= (count_tree_tap_in_inventory) 0)
	)
	(:goal
		(and
			(have_pogo_stick)
		)
	)
)