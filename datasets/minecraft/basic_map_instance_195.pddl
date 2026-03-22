(define (problem instance_195)
	(:domain PolyCraft)

	(:init (= (trees_in_map) 216) (= (count_log_in_inventory) 57) (= (count_planks_in_inventory) 10) (= (count_stick_in_inventory) 1) (= (count_sack_polyisoprene_pellets_in_inventory) 1) (= (count_tree_tap_in_inventory) 1)
	)
	(:goal
		(and
			(have_pogo_stick)
		)
	)
)