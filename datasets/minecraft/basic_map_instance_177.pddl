(define (problem instance_177)
	(:domain PolyCraft)

	(:init (= (trees_in_map) 10) (= (count_log_in_inventory) 39) (= (count_planks_in_inventory) 16) (= (count_stick_in_inventory) 40) (= (count_sack_polyisoprene_pellets_in_inventory) 0) (= (count_tree_tap_in_inventory) 1)
	)
	(:goal
		(and
			(have_pogo_stick)
		)
	)
)