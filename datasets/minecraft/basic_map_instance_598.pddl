(define (problem instance_598)
	(:domain PolyCraft)

	(:init (= (trees_in_map) 132) (= (count_log_in_inventory) 14) (= (count_planks_in_inventory) 9) (= (count_stick_in_inventory) 5) (= (count_sack_polyisoprene_pellets_in_inventory) 0) (= (count_tree_tap_in_inventory) 0)
	)
	(:goal
		(and
			(have_pogo_stick)
		)
	)
)