(define (problem instance_11)
	(:domain PolyCraft)

	(:init (= (trees_in_map) 198) (= (count_log_in_inventory) 9) (= (count_planks_in_inventory) 55) (= (count_stick_in_inventory) 17) (= (count_sack_polyisoprene_pellets_in_inventory) 0) (= (count_tree_tap_in_inventory) 0)
	)
	(:goal
		(and
			(have_pogo_stick)
		)
	)
)