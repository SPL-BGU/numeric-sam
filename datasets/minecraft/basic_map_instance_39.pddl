(define (problem instance_39)
	(:domain PolyCraft)

	(:init (= (trees_in_map) 212) (= (count_log_in_inventory) 31) (= (count_planks_in_inventory) 31) (= (count_stick_in_inventory) 40) (= (count_sack_polyisoprene_pellets_in_inventory) 1) (= (count_tree_tap_in_inventory) 1)
	)
	(:goal
		(and
			(have_pogo_stick)
		)
	)
)