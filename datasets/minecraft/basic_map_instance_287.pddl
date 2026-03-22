(define (problem instance_287)
	(:domain PolyCraft)

	(:init (= (trees_in_map) 209) (= (count_log_in_inventory) 17) (= (count_planks_in_inventory) 7) (= (count_stick_in_inventory) 32) (= (count_sack_polyisoprene_pellets_in_inventory) 0) (= (count_tree_tap_in_inventory) 0)
	)
	(:goal
		(and
			(have_pogo_stick)
		)
	)
)