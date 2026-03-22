(define (problem instance_27)
	(:domain PolyCraft)

	(:init (= (trees_in_map) 130) (= (count_log_in_inventory) 63) (= (count_planks_in_inventory) 12) (= (count_stick_in_inventory) 61) (= (count_sack_polyisoprene_pellets_in_inventory) 1) (= (count_tree_tap_in_inventory) 0)
	)
	(:goal
		(and
			(have_pogo_stick)
		)
	)
)