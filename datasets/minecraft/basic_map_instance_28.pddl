(define (problem instance_28)
	(:domain PolyCraft)

	(:init (= (trees_in_map) 65) (= (count_log_in_inventory) 61) (= (count_planks_in_inventory) 35) (= (count_stick_in_inventory) 37) (= (count_sack_polyisoprene_pellets_in_inventory) 1) (= (count_tree_tap_in_inventory) 1)
	)
	(:goal
		(and
			(have_pogo_stick)
		)
	)
)