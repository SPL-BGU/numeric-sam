(define (problem instance_543)
	(:domain PolyCraft)

	(:init (= (trees_in_map) 138) (= (count_log_in_inventory) 8) (= (count_planks_in_inventory) 14) (= (count_stick_in_inventory) 8) (= (count_sack_polyisoprene_pellets_in_inventory) 0) (= (count_tree_tap_in_inventory) 0)
	)
	(:goal
		(and
			(have_pogo_stick)
		)
	)
)