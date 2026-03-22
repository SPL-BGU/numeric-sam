(define (problem instance_435)
	(:domain PolyCraft)

	(:init (= (trees_in_map) 59) (= (count_log_in_inventory) 6) (= (count_planks_in_inventory) 2) (= (count_stick_in_inventory) 8) (= (count_sack_polyisoprene_pellets_in_inventory) 0) (= (count_tree_tap_in_inventory) 0)
	)
	(:goal
		(and
			(have_pogo_stick)
		)
	)
)