(define (problem instance_545)
	(:domain PolyCraft)

	(:init (= (trees_in_map) 216) (= (count_log_in_inventory) 3) (= (count_planks_in_inventory) 11) (= (count_stick_in_inventory) 15) (= (count_sack_polyisoprene_pellets_in_inventory) 0) (= (count_tree_tap_in_inventory) 0)
	)
	(:goal
		(and
			(have_pogo_stick)
		)
	)
)