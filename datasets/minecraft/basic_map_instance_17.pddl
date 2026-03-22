(define (problem instance_17)
	(:domain PolyCraft)

	(:init (= (trees_in_map) 161) (= (count_log_in_inventory) 60) (= (count_planks_in_inventory) 39) (= (count_stick_in_inventory) 15) (= (count_sack_polyisoprene_pellets_in_inventory) 0) (= (count_tree_tap_in_inventory) 1)
	)
	(:goal
		(and
			(have_pogo_stick)
		)
	)
)