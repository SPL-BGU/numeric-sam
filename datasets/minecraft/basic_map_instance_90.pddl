(define (problem instance_90)
	(:domain PolyCraft)

	(:init (= (trees_in_map) 125) (= (count_log_in_inventory) 43) (= (count_planks_in_inventory) 37) (= (count_stick_in_inventory) 4) (= (count_sack_polyisoprene_pellets_in_inventory) 1) (= (count_tree_tap_in_inventory) 0)
	)
	(:goal
		(and
			(have_pogo_stick)
		)
	)
)