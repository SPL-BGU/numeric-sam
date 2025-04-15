(define (problem instance_9)
	(:domain PolyCraft)

	(:init (= (trees_in_map) 130) (= (count_log_in_inventory) 63) (= (count_planks_in_inventory) 8) (= (count_stick_in_inventory) 24) (= (count_sack_polyisoprene_pellets_in_inventory) 0) (= (count_tree_tap_in_inventory) 1)
	)
	(:goal
		(and
			(have_pogo_stick)
		)
	)
)