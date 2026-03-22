(define (problem instance_189)
	(:domain PolyCraft)

	(:init (= (trees_in_map) 213) (= (count_log_in_inventory) 56) (= (count_planks_in_inventory) 57) (= (count_stick_in_inventory) 18) (= (count_sack_polyisoprene_pellets_in_inventory) 1) (= (count_tree_tap_in_inventory) 0)
	)
	(:goal
		(and
			(have_pogo_stick)
		)
	)
)