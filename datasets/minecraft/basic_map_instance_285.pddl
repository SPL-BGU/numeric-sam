(define (problem instance_285)
	(:domain PolyCraft)

	(:init (= (trees_in_map) 195) (= (count_log_in_inventory) 10) (= (count_planks_in_inventory) 23) (= (count_stick_in_inventory) 8) (= (count_sack_polyisoprene_pellets_in_inventory) 0) (= (count_tree_tap_in_inventory) 0)
	)
	(:goal
		(and
			(have_pogo_stick)
		)
	)
)