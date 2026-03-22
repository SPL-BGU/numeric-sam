(define (problem instance_48)
	(:domain PolyCraft)

	(:init (= (trees_in_map) 31) (= (count_log_in_inventory) 22) (= (count_planks_in_inventory) 36) (= (count_stick_in_inventory) 28) (= (count_sack_polyisoprene_pellets_in_inventory) 0) (= (count_tree_tap_in_inventory) 0)
	)
	(:goal
		(and
			(have_pogo_stick)
		)
	)
)