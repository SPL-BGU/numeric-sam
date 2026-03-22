(define (problem instance_223)
	(:domain PolyCraft)

	(:init (= (trees_in_map) 38) (= (count_log_in_inventory) 25) (= (count_planks_in_inventory) 6) (= (count_stick_in_inventory) 7) (= (count_sack_polyisoprene_pellets_in_inventory) 1) (= (count_tree_tap_in_inventory) 0)
	)
	(:goal
		(and
			(have_pogo_stick)
		)
	)
)