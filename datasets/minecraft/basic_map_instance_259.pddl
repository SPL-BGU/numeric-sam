(define (problem instance_259)
	(:domain PolyCraft)

	(:init (= (trees_in_map) 101) (= (count_log_in_inventory) 25) (= (count_planks_in_inventory) 12) (= (count_stick_in_inventory) 28) (= (count_sack_polyisoprene_pellets_in_inventory) 1) (= (count_tree_tap_in_inventory) 0)
	)
	(:goal
		(and
			(have_pogo_stick)
		)
	)
)