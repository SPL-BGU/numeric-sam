(define (problem instance_12)
	(:domain PolyCraft)

	(:init (= (trees_in_map) 160) (= (count_log_in_inventory) 35) (= (count_planks_in_inventory) 40) (= (count_stick_in_inventory) 33) (= (count_sack_polyisoprene_pellets_in_inventory) 1) (= (count_tree_tap_in_inventory) 0)
	)
	(:goal
		(and
			(have_pogo_stick)
		)
	)
)