(define (problem instance_170)
	(:domain PolyCraft)

	(:init (= (trees_in_map) 4) (= (count_log_in_inventory) 9) (= (count_planks_in_inventory) 26) (= (count_stick_in_inventory) 41) (= (count_sack_polyisoprene_pellets_in_inventory) 0) (= (count_tree_tap_in_inventory) 1)
	)
	(:goal
		(and
			(have_pogo_stick)
		)
	)
)