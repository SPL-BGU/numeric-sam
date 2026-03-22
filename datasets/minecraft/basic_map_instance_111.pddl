(define (problem instance_111)
	(:domain PolyCraft)

	(:init (= (trees_in_map) 107) (= (count_log_in_inventory) 16) (= (count_planks_in_inventory) 36) (= (count_stick_in_inventory) 11) (= (count_sack_polyisoprene_pellets_in_inventory) 1) (= (count_tree_tap_in_inventory) 0)
	)
	(:goal
		(and
			(have_pogo_stick)
		)
	)
)